structure X86Frame : FRAME =
struct
    datatype access = InFrame of int | InReg of Temp.temp
    type frame = { name : Temp.label, formals : access list, frameOff : int ref}


    val wordSize = 4
    fun name frame = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error) 
    fun formals frame = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)
    fun allocLocal frame escape = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)

    fun newFrame _ = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)

    fun printAccess (InFrame w) = ("(InFrame " ^ Int.toString w ^ ")")
      | printAccess (InReg _) = "InReg"
end
