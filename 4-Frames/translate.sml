

structure Translate : TRANSLATE =
struct
    datatype level = Outermost | Level of { prev_level : level, frame : X86Frame.frame  }
    type access = level * X86Frame.access

    val outermost = Outermost
    (*ASK ABOUT THE NEED TO ADD AN EXTRA ESCAPING FIRST ARGUMENT WHEN CREATING
    * LEVELS*)
    fun newLevel ({parent : level, name : Temp.label, formals : bool list}) : level =
      let 
        val new_frame = X86Frame.newFrame{name = name, formals = true :: formals}
      in
        Level({prev_level = parent, frame = new_frame})
      end
    fun formals (Outermost : level) : access list = []
      | formals (l : level) = 
        let
          val Level({prev_level, frame}) = l
          val aList = X86Frame.formals frame
          (*fun transAcc (lev : level) (old_acc : X86Frame.access) =
            (lev, old_acc)*)
          val accList = map (fn forms => (l, forms)) aList(*foldl transAcc [] (prev_level, aList)*) (*COME BACKKK*)
          (*val accList = foldl (fn (prev_level, al') => (prev_level))*)
        in
          accList
        end
      (*(ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)*)
    fun allocLocal (l : level) (escape : bool) : access =
      let
        val Level({prev_level = pl, frame = f}) = l (*ASK IF THIS WILL CAUSE PROBLEMS*)
        val loc = (X86Frame.allocLocal f escape)
      in
        (l, loc)
      end
      (*(ErrorMsg.error 0 "todo"; raise
      ErrorMsg.Error)*) (*ASK ABOUT *)
      (*NEED ALLOCFORMALS WRAPPER FUNCTION???*)

    fun printAccess_ (_, acc)  = X86Frame.printAccess acc
    fun printAccess n loc = print("var " ^ Symbol.name n ^ " " ^ printAccess_ loc ^ "\n")
    fun printLevel n l =
      print("function " ^ Symbol.name n ^ " "
            ^ (String.concatWith " " (map printAccess_ (formals l))) ^ "\n")end
