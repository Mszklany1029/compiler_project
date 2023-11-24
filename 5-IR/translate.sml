structure Translate : TRANSLATE =
struct
    structure TREE = Tree
    structure A = Absyn
    datatype level = Outermost | Level of { prev_level : level, frame : X86Frame.frame, eqc : unit ref }
    datatype exp = Ex of Tree.exp
                 | Stm of Tree.stm
                 | Cond of Temp.label * Temp.label -> Tree.stm
    type access = level * X86Frame.access

    type inner_level = { prev_level : level, frame : X86Frame.frame, eqc : unit ref }

    val outermost = Outermost
    fun newLevel ({parent : level, name : Temp.label, formals : bool list}) : level =
      let 
        val new_frame = X86Frame.newFrame{name = name, formals = true :: formals}
      in
        Level({prev_level = parent, frame = new_frame, eqc = ref ()})
      end
    fun formals (Outermost : level) : access list = []
      | formals (l : level) = 
        let
          val Level({prev_level, frame, eqc}) = l
          val aList = X86Frame.formals frame
          val accList = map (fn forms => (l, forms)) aList      
        in
          accList
        end

    fun allocLocal (l : level) (escape : bool) : access =
      (case l of 
           Outermost => raise Fail "error"
         | _ => let
                  val Level({prev_level = pl, frame = f, eqc}) = l
                  val loc = (X86Frame.allocLocal f escape)
                  (*val Level(l) = {prev_level, frame, eqc}*)
                in
                  (l, loc)
                end)

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
      | toStm (con as (Cond cond)) = TREE.EXP(toEx(con))

    (*val toCond : exp -> (Temp.label * Temp.label -> Tree.stm*)    
    fun toCond (Cond c) = c
      | toCond (Ex e) = 
        let
          fun condFunc (l1, l2) = TREE.CJUMP(TREE.NE, e, TREE.CONST 0, l1, l2)
        in 
          condFunc
        end
      | toCond(Stm s) = raise Fail "stm in toCond"

    (*ERROR RIGHT HERE!!!!*)
    fun memWrap (e : Tree.exp) (lvldec : inner_level) (Level(lvlused) : level) =
      (case #eqc lvldec = #eqc lvlused 
          of true => TREE.MEM(e)
          | false => memWrap (TREE.MEM(e)) (lvldec) (#prev_level lvlused))

    (*fun memWrap ((e, Level(lvldec), Level(lvlused)) : Tree.exp * level * level) = 
      (case #eqc lvldec = #eqc lvlused
        of True => TREE.MEM(e)
         | False => memWrap(TREE.MEM(e), Level(lvldec), #prev_level lvlused))*)
        
    (*fun simpleVar (a, lvl)  = *)
    (*fun fieldVar ((e, i) : exp * int) : exp = *)
    (*fun subscriptVar ((e1, e2) : exp * exp) : exp =*)
    (*fun nilExp = *)
    fun intExp (i : int) : exp = Ex(TREE.CONST(i)) (*STM? EX? IDK*)
    (*fun stringExp(str : string) : exp = *)
    (*fun callExp ((fun_lvl, call_lvl, funlab, args) : level * level * Temp.label
      * exp list) : exp =*)
      
      (*tlab : label for function, lvl1 & lvl2: level of f and level of function
      * calling f*)
    fun opExp ((e1, opr, e2) : exp * Absyn.oper * exp) : exp =
      let
        val larg = toEx e1
        val rarg = toEx e2
      in
        (case opr of 
            A.PlusOp => Ex (TREE.BINOP(TREE.PLUS, larg, rarg))
          | A.MinusOp => Ex (TREE.BINOP(TREE.MINUS, larg, rarg))
          | A.TimesOp => Ex (TREE.BINOP(TREE.MUL, larg, rarg))
          | A.DivideOp => Ex (TREE.BINOP(TREE.DIV, larg, rarg))
          | A.EqOp => Cond (fn (lab1, lab2) => TREE.CJUMP(TREE.EQ, larg, rarg, lab1, lab2))
          | A.NeqOp => Cond (fn (lab1, lab2) => TREE.CJUMP(TREE.NE, larg, rarg, lab1, lab2))
          | A.LtOp => Cond (fn (lab1, lab2) => TREE.CJUMP(TREE.LT, larg, rarg, lab1, lab2))
          | A.LeOp => Cond (fn (lab1, lab2) => TREE.CJUMP(TREE.LE, larg, rarg, lab1, lab2))
          | A.GtOp => Cond (fn (lab1, lab2) => TREE.CJUMP(TREE.GT, larg, rarg, lab1, lab2))
          | A.GeOp => Cond (fn (lab1, lab2) => TREE.CJUMP(TREE.GE, larg, rarg, lab1, lab2)))
      end
      
     (*COME BACK AND FIX THESE ALLLL NEED TO BE TUPLES*)     
    (*fun recordExp (exs : exp list) : exp = *)
    (*fun seqExp (exs : exp list) : exp = *)
    fun assignExp ((e1, e2) : exp * exp) : exp =
      let
        val lval = toEx e1
        val rval = toEx e2
        val x = TREE.MOVE(TREE.MEM(lval), rval)
      in 
        Stm(x) (*RETURN STM OR EX??? FIND OUTTT*)
      end


    fun ifExp (test, then', SOME else') = 
      let
        val t = Temp.newlabel ()
        val f = Temp.newlabel ()
        val j = Temp.newlabel ()

        val ctest = toCond test
        val ethen = toEx then'
        val eelse = toEx else'
        
        val res = Temp.newtemp()

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

    (*fun whileExp (lab : Temp.label) (e1 : exp) (e2 : exp) : exp = *)
    (*fun forExp*)
    (*fun breakExp (labl : Temp.label) : exp = *)
    (*fun letExp ((exList, ex1) : exp list * exp) : exp =*)
    (*fun arrayExp ((e1, e2) : exp * exp) : exp = *)
end
