structure Translate : TRANSLATE =
struct
    datatype level = Outermost | Level of { prev_level : level, frame : X86Frame.frame  }
    datatype exp = Ex of Tree.exp
                 | Stm of Tree.Stm
                 | Cond of Temp.label * Temp.label -> Tree.stm
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

    fun printAccess_ (_, acc)  = X86Frame.printAccess acc
    fun printAccess n loc = print("var " ^ Symbol.name n ^ " " ^ printAccess_ loc ^ "\n")
    fun printLevel n l =
      print("function " ^ Symbol.name n ^ " "
            ^ (String.concatWith " " (map printAccess_ (formals l))) ^ "\n")


    fun seq [] = TREE.EXP (TREE.CONST 0) (*COME BACK AND LOOK AT THIS*)
      | seq [s] = s
      | seq (s :: stms) = TREE.SEQ (s, seq stms)

    fun toEx (Ex e) = e
      | toEx (Stm s) = TREE.ESEQ(s, TREE.CONST 0)
      | toEx (Cond cond) = 
        let
          val r = Temp.newtemp ()
          val t = Temp.newlabel ()
          val f = Temp.newlabel ()
        in 
          TREE.ESEQ(seq [ TREE.MOVE(TREE.TEMP r, TREE.CONST 1), 
                        cond(t, f), 
                        TREE.LABEL f, 
                        TREE.MOVE(TREE.TEMP r, TREE.CONST 0), 
                        TREE.LABEL t],
                  TREE.TEMP r)
        end

    fun toStm (Stm s) = s
      | toStm (Ex e) = TREE.EXP(e)
      | toStm (Cond cond) = toStm(toEx(cond))

    (*val toCond : exp -> (Temp.label * Temp.label -> Tree.stm*)    
    fun toCond (Cond c) = c
      | toCond (Ex e) = 
        let
          fun condFunc (l1, l2) = TREE.CJUMP(NE, e, 0, l1, l2)
        in 
          condFunc
        end

    fun simpleVar (a, lvl)  = 

    fun ifExp (test, then', SOME else') = 
      let
        val t = Temp.newlabel ()
        val f = Temp.newlabel ()
        val j = Temp.newlabel ()

        val ctest = toCond test
        val ethen = toEx then'
        val eelse = toEx else'
        
        val res = Temp.newTemp()

        val s = seq [ctest(t, f),
                     TREE.LABEL t,
                     TREE.MOVE(TREE.TEMP res, ethen), 
                     TREE.JUMP(TREE.NAME j, [j]), 
                     TREE.LABEL f, 
                     TREE.MOVE(TREE.TEMP res, eelse), 
                     TREE.LABEL j]
      in 
        Ex (TREE.ESEQ(s, TREE.TEMP res))
      end
      | ifExp (test, then', NONE) = 
        let
          val t = Temp.newlabel ()
          val f = Temp.newlabel ()

          val ctest = toCond test

          val ethen = toEx then'

          val s = seq [ ctest(t, f), 
                        TREE.LABEL t, 
                        TREE.EXP ethen, 
                        TREE.LABEL f]
        in 
          Stm s
        end
end
