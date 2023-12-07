structure CodeGen =
struct
  structure T = Tree
  structure A = Assem
   structure F = X86Frame

  fun codegen (frame : F.frame) (stm: T.stm) : (Temp.temp A.instr) list =
    let
        val ilist = ref (nil : (Temp.temp A.instr) list)
        fun emit x = ilist := x :: !ilist
        fun result(gen) = let val t = Temp.newtemp() in  gen t; t end

        fun intString i = if i >= 0 then Int.toString i else "-" ^ Int.toString (~i)

        and munchStm (s : T.stm) = 
          (case s of 
                (T.LABEL lbl) => emit(A.LABEL {assem = (Symbol.name lbl) ^ ":\n", lab = lbl })
              | (T.JUMP (T.LABEL dest, lbls)) => emit(A.JUMP{assem = "jmp `j0" , jump = lbls})
              | (T.CJUMP (rlp, ex1, ex2, lbl1, lbl2)) => (*STUFF HERE*)
              | (T.MOVE (data, dest)) => emit(A.OPER {assem = "mov `s0, `d0" , dst = [munchExp(dest)], src = [munchExp(data)] })
              | (T.EXP ex1) => munchExp(ex1))

        and munchExp (e : T.exp) = 
          (case e of 
                (T.BINOP (T.PLUS, src, dest)) => result( fn r => emit(A.OPER {assem = "mov `s0, `d0", dst = [r], src = [munchExp(src)]}); emit(A.OPER {assem = "add `s0, `d0", dst = [r], src = [munchExp(dest)]}))
              | (T.BINOP (T.MINUS, src, dest)) => result( fn r => emit(A.OPER {assem = "mov `s0, `d0", dst = [r], src = [munchExp(src)]}); emit(A.OPER {assem = "sub `s0, `d0", dst = [r], src = [munchExp(dest)]}))
              | (T.BINOP (T.MUL, src, dest)) => result( fn r => emit(A.OPER {assem = "mov `s0, `d0", dst = [r], src = [munchExp(src)]}); emit(A.OPER {assem = "imul `s0, `d0", dst = [r], src = [munchExp(dest)]}))
              | (T.BINOP (T.DIV, src, dest)) =>
                  let
                    val res = Temp.newtemp()
                  in 
                    emit(A.OPER{assem = "push %eax", dst = [] , src = []});
                    emit(A.OPER {assem = "push %edx", dst = [], src = []}); (*RIGHT REGISTER???*)
                    emit(A.OPER {assem = "mov `s0, %eax", dst = , src = [munchExp(src)]});
                    emit(A.OPER {assem = "cdq", dst = [], src = []});
                    emit(A.OPER {assem = "idiv `d0" , dst = [munchExp(dest)] , src = []});
                    emit(A.OPER {assem = "mov %eax, `d0", dst = [res], src = []});
                    emit(A.OPER {assem = "pop %edx", dst = [], src = []});
                    emit(A.OPER {assem = "pop %eax", dst = [], src = []});
                    res
                  end
              | (T.MEM ex) => 
                  let
                    dest = Temp.newtemp()
                  in 
                    emit(A.OPER {assem = "mov (`s0), `d0", dst =[dest], src = [munchExp(ex)]})
                  end
              | (T.TEMP tmp) => tmp
              | (T.NAME n) => (*MOVE $LABEL INTO SOME TEMPORARY STILL NEED ASSEMBLYSTUFF HERE*)
              | (T.CONST i) => (*MOVE $INT USE ABOVE FUNC INTO SOME TEMPORARY DO WE EVEN NEED THIS CASE??*)
              | (T.CALL (e1, exList)) => (*STUFF HERE*))
    in
    munchStm stm; rev (!ilist)
    end
end
