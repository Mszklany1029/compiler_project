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
              | (T.JUMP (T.NAME dest, lbls)) => emit(A.JUMP{assem = "jmp `j0\n" , jump = lbls})
              | (T.CJUMP (rlp, ex1, ex2, lbl1, lbl2)) => 
                  let
                    val rlop = (case rlp 
                                  of T.EQ => "je `j0\n"
                                   | T.NE => "jne `j0\n"
                                   | T.LT => "jl `j0\n"
                                   | T.LE => "jle `j0\n"
                                   | T.GT => "jg `j0\n"
                                   | T.GE => "jge `j0\n")
                                   (*COME BACK FOR UNSIGNED COMPARISON????*)

                  in 
                    emit(A.OPER{assem = "cmp `s0, `s1\n", src = [munchExp(ex1), munchExp(ex2)], dst = []});
                    emit(A.JUMP{assem = rlop, jump = [lbl1]})
                  end
              | (T.MOVE (data, dest)) => emit(A.OPER {assem = "mov `s0, `d0\n" , dst = [munchExp(dest)], src = [munchExp(data)] })
              | (T.EXP ex1) => (munchExp(ex1); ()))

        and munchExp (e : T.exp) = 
          case e of 
                (T.BINOP (T.PLUS, src, dest)) => result(fn r => (emit(A.OPER {assem = "mov `s0, `d0\n", dst = [r], src = [munchExp(src)]}); emit(A.OPER {assem = "add `s0, `d0\n", dst = [r], src = [munchExp(dest)]})))
              | (T.BINOP (T.MINUS, src, dest)) => result(fn r => (emit(A.OPER {assem = "mov `s0, `d0\n", dst = [r], src = [munchExp(src)]}); emit(A.OPER {assem = "sub `s0, `d0\n", dst = [r], src = [munchExp(dest)]})))
              | (T.BINOP (T.MUL, src, dest)) => result(fn r => (emit(A.OPER {assem = "mov `s0, `d0\n", dst = [r], src = [munchExp(src)]}); emit(A.OPER {assem = "imul `s0, `d0\n", dst = [r], src = [munchExp(dest)]})))
              | (T.BINOP (T.DIV, src, dest)) =>
                  let
                    val res = Temp.newtemp()
                  in 
                    emit(A.OPER{assem = "push %eax\n", dst = [] , src = []});
                    emit(A.OPER {assem = "push %edx\n", dst = [], src = []}); (*RIGHT REGISTER???*)
                    emit(A.OPER {assem = "mov `s0, %eax\n", dst = [] , src = [munchExp(src)]});
                    emit(A.OPER {assem = "cdq\n", dst = [], src = []});
                    emit(A.OPER {assem = "idiv `d0\n" , dst = [munchExp(dest)] , src = []});
                    emit(A.OPER {assem = "mov %eax, `d0\n", dst = [res], src = []});
                    emit(A.OPER {assem = "pop %edx\n", dst = [], src = []});
                    emit(A.OPER {assem = "pop %eax\n", dst = [], src = []});
                    res
                  end
              | (T.MEM ex) => 
                  let
                    val dest = Temp.newtemp()
                  in 
                    emit(A.OPER {assem = "mov (`s0), `d0\n", dst =[dest], src = [munchExp(ex)]});
                    dest
                  end
              | (T.TEMP tmp) => tmp
              | (T.NAME n) =>
                  let
                    val res = Temp.newtemp()
                    val st = Symbol.name n
                  in 
                    emit(A.OPER {assem = "mov $" ^ st ^ " `d0\n", dst=[res], src=[]});
                    res
                  end(*MOVE $LABEL INTO SOME TEMPORARY STILL NEED ASSEMBLYSTUFF HERE*)
              | (T.CONST i) => 
                  let
                    val res = Temp.newtemp()
                  in 
                    emit(A.OPER {assem = "mov $" ^ intString i ^ " `d0\n", dst = [res], src = []});
                    res
                  end(*MOVE $INT USE ABOVE FUNC INTO SOME TEMPORARY DO WE EVEN NEED THIS CASE??*)
              | (T.CALL (T.NAME e1, exList)) => 
                    let
                      val res = Temp.newtemp()
                      val l = List.rev exList
                      val st = Symbol.name e1 
                    in
                      emit(A.OPER{assem = "push %edx\n", dst = [], src = []});
                      emit(A.OPER{assem = "push %eax\n", dst = [], src = []});
                      emit(A.OPER{assem = "push %ecx\n", dst = [], src = []});
                      app (fn li => emit(A.OPER{assem = "push `s0\n", dst = [], src = [munchExp(li)]})) l;
                      emit(A.OPER{assem = "call " ^ st ^ "\n", dst = [], src = []});
                      emit(A.OPER{assem = "pop %ecx\n", dst = [], src = []});
                      emit(A.OPER{assem = "mov %eax, `d0\n", dst = [res], src = []});
                      emit(A.OPER{assem = "pop %eax\n", dst = [], src = []});
                      emit(A.OPER{assem = "pop %edx\n", dst = [], src = []});
                      res
                    end
    in
    munchStm stm; rev (!ilist)
    end
end
