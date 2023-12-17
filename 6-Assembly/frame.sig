signature FRAME =
sig
    type frame
    type access
    val wordSize : int
    val newFrame : { name : Temp.label, formals : bool list } -> frame
    val name : frame -> Temp.label
    val formals : frame -> access list
    val allocLocal : frame -> bool -> access
	val allocFormals : bool -> access
	val spillLoc : frame -> int 
	val exp : access -> Tree.exp -> Tree.exp
	val FP : Temp.temp
	val RV : Temp.temp
    val printAccess : access -> string
	val prologue : frame -> string
	val epilogue : frame -> string
	val string : Temp.label * string -> string
end
