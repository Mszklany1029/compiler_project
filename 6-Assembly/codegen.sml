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

        and munchStm _ = raise ErrorMsg.Error

        and munchExp _ = raise ErrorMsg.Error
    in
    munchStm stm; rev (!ilist)
    end
end