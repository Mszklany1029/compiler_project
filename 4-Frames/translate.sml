

structure Translate : TRANSLATE =
struct
    datatype level = Outermost | Level of { prev_level : level, frame : X86Frame.frame  }
    type access = level * X86Frame.access

    val outermost = Outermost
    fun newLevel _ = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)
    fun formals _ = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)
    fun allocLocal _ _ = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)

    fun printAccess_ (_, acc) = X86Frame.printAccess acc
    fun printAccess n loc = print("var " ^ Symbol.name n ^ " " ^ printAccess_ loc ^ "\n")
    fun printLevel n l =
      print("function " ^ Symbol.name n ^ " "
            ^ (String.concatWith " " (map printAccess_ (formals l))) ^ "\n")end