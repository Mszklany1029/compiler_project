structure Translate : TRANSLATE =
struct
    structure TREE = Tree
    structure A = Absyn
    datatype level = Outermost | Level of { prev_level : level, frame : X86Frame.frame, eqc : unit ref }
    datatype exp = Ex of Tree.exp
                 | Stm of Tree.stm
                 | Cond of Temp.label * Temp.label -> Tree.stm

    datatype frag = PROC of { body : Tree.stm, frame : X86Frame.frame}
                | STRING of Temp.label * string
    val frags : frag list ref = ref [] 
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
    (*fun memWrap (e : Tree.exp) (lvldec : inner_level) (Level(lvlused) : level) =
      (case #eqc lvldec = #eqc lvlused 
          of true => TREE.MEM(e)
          | false => memWrap (TREE.MEM(e)) (lvldec) (#prev_level lvlused))*)
    fun procEntryExit { level = Level {frame, ...}, body} = 
        frags := PROC { body = TREE.MOVE(TREE.TEMP X86Frame.RV, toEx body), frame = frame } :: (!frags)
      | procEntryExit { level = Outermost, ...} = (print "procEntryExit: impossible"; raise ErrorMsg.Error)


    fun memWrap ((e, Level(lvldec), Level(lvlused)) : Tree.exp * level * level) = 
      (case #eqc lvldec = #eqc lvlused
        of true => TREE.MEM(e)
         | false => memWrap(TREE.MEM(e), Level(lvldec), #prev_level lvlused))
        
    fun simpleVar ((a, uselvl) : access * level) : exp  =
      let
        val (defLvl, x86acc) = a
        val svar = X86Frame.exp (x86acc) (TREE.TEMP(X86Frame.fp))
        val slink = memWrap(svar, defLvl, uselvl)
      in 
        Ex(slink)
      end

    fun fieldVar ((e, i) : exp * int) : exp = 
      let
        val offset = TREE.BINOP(TREE.MUL, TREE.CONST(i), TREE.CONST(X86Frame.wordSize))
        (*COME BACKKKKKK: BETTER TO MANUALLY COMPUTE??*)
        val ex = toEx e
        val fv = TREE.BINOP(TREE.PLUS, TREE.MEM(ex), offset) (*DBL CHECK MEM!!!!*)
      in
        Ex(fv)
      end

    fun subscriptVar ((pointer, index) : exp * exp) : exp =
      let
        val ex1 = toEx pointer
        val ex2 = toEx index
        (*WHY TWO EXPS AND NOT ONE EXP AND AN INT*)
        val offset = TREE.BINOP(TREE.MUL, ex2, TREE.CONST(X86Frame.wordSize))
        val subVar = TREE.BINOP(TREE.PLUS, TREE.MEM(ex1), offset)
      in
        Ex(subVar)
      end

    val nilExp = Ex(TREE.CONST 0)
    
    fun intExp (i : int) : exp = Ex(TREE.CONST(i)) (*STM? EX? IDK*)

    fun stringExp(str : string) : exp =
      let
        val stringLab = Temp.newlabel() (*DEF COME BACK AND DOUBLE CHECK THIS oNEEEE!!!*)
        val stringFrag = STRING(stringLab, str)
      in
        frags := stringFrag :: !frags;
        Ex(TREE.NAME(stringLab))
      end


    fun callExp ((fun_lvl, call_lvl, funlab, args) : level * level * Temp.label * exp list) : exp = 
      let
        val fun_name = TREE.NAME(funlab)
        val stat_link = memWrap(TREE.TEMP(X86Frame.fp), fun_lvl, call_lvl)
        val arg_ex = map toEx args
        val args_prime = stat_link :: arg_ex
        val func_call = TREE.CALL(fun_name, args_prime)
      in
        Ex(func_call)
      end
      
      
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
    fun recordExp (exs : exp list) : exp =
      let
        val recL = Temp.newtemp()
        val i : int ref = ref 0
        fun allocate (arg : exp) = 
          let
            val temp_loc = Temp.newtemp()
            val offset = (!i * X86Frame.wordSize) (*<---------THIS NEEDS TOCHANGE???*)
            val address = TREE.BINOP(TREE.PLUS, TREE.TEMP(temp_loc), TREE.CONST(offset))
            val argEx = toEx arg
          in 
            i := !i + 1;
            TREE.MOVE(TREE.MEM(address), argEx)
          end
        val rec_fields = map allocate exs
        val rec_seq = seq(rec_fields)
      in 
        Ex(TREE.ESEQ(rec_seq, TREE.TEMP recL)) (*A/*)
      end

    fun seqExp (exs : exp list) : exp =
      let 
        val ex_tail = List.last exs (*<------- SEQ TAIL! COME BACK MIGHT HAVE TO DROP*)
        (*val exs = drop(exs, )*)
        val exStms = map toStm exs

        val seqs = seq exStms
        val return_val = toEx(ex_tail)
      in
        Ex(TREE.ESEQ(seqs, return_val)) 
      end

    fun assignExp ((e1, e2) : exp * exp) : exp =
      let
        val lval = toEx e1
        val rval = toEx e2
        val x = TREE.MOVE(TREE.MEM(lval), rval)
      in 
        Stm(x) (*RETURN STM OR EX??? FIND OUTTT*)
      end


    fun ifExp ((test, then', SOME else') : exp * exp * exp option) : exp = 
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

    fun whileExp ((done, condition, body) : Temp.label * exp * exp) : exp = 
      let
        val while_test = toCond condition
        val test = Temp.newlabel()
        val f = Temp.newlabel()
        val body_exp = toEx body
        (*COME BACK AND FIX WHLIE EXP BELOWWWWW*)
        val s = seq [ 
                      TREE.LABEL test, 
                      while_test(test, done),
                      TREE.EXP body_exp, 
                      TREE.JUMP(TREE.NAME test, [test]),
                      TREE.LABEL done]
      in 
        Stm s
      end

    fun forExp ((done, i, lo, hi, body) : Temp.label * exp * exp * exp * exp) : exp = 
      let
        val iterator = toEx i
        val loEx = toEx lo
        val hiEx = toEx hi
        val bodyEx = toEx body
        val limit = Temp.newtemp()
        val res = Temp.newtemp()


        val enter_test = toCond (Cond(fn (loLab, hiLab) => TREE.CJUMP(TREE.LE, loEx, hiEx, loLab, hiLab)))
        val loop_test = toCond (Cond(fn (iLab, limlab) => TREE.CJUMP(TREE.LT, iterator, TREE.TEMP limit, iLab, limlab)))



        (*val initialize = Temp.newlabel()*)
        val body_label = Temp.newlabel()
        val test = Temp.newlabel()
        val done = Temp.newlabel()
              
        val s = seq [ TREE.MOVE(iterator, loEx), 
                      TREE.MOVE(TREE.TEMP limit, hiEx),
                      enter_test(body_label, done), 
                      TREE.LABEL body_label, 
                      (*TREE.MOVE(TREE.TEMP res, bodyEx)*)
                      TREE.EXP bodyEx, 
                      TREE.MOVE(iterator, TREE.BINOP(TREE.PLUS, iterator, TREE.CONST 1)),
                      TREE.LABEL test, 
                      loop_test(body_label, done), 
                      TREE.LABEL(done)
                      ]

        (*val s = seq [ enter_test(initialize, done) (*WHAT TO DO ABOUT LABELS?*),
                      TREE.LABEL initialize,
                      TREE.MOVE(iterator, loEx),
                      TREE.MOVE(TREE.TEMP limit, hiEx),
                      TREE.JUMP(TREE.NAME test, [test]),
                      TREE.LABEL body_label,
                      (*TREE.EXP bodyEx,*)
                      TREE.MOVE(TREE.TEMP res, bodyEx),
                      TREE.MOVE(iterator, TREE.BINOP(TREE.PLUS, iterator, TREE.CONST 1)),
                      TREE.LABEL test,
                      loop_test(body_label, done),
                      TREE.LABEL done
                      ]*)
      in
        Stm s
        (*Ex(TREE.ESEQ(s, TREE.TEMP res))*)
      end

      
    fun breakExp (done_label : Temp.label) : exp =
      let
        val done = TREE.NAME done_label
      in
        Stm(TREE.JUMP(done, [done_label]))
      end

    fun letExp ((exList, ex1) : exp list * exp) : exp = 
      let
        val stmList = map toStm exList
        val s = seq stmList
      in
        Ex(TREE.ESEQ(s, toEx ex1))
      end

    fun arrayExp ((e1, e2) : exp * exp) : exp =
      let
        val ex1 = toEx e1 (*COME BACK TO ARRRAY IT'S DEFINITELY WRONG!!!*)
        val ex2 = toEx e2
      in 
        Ex(TREE.CALL(TREE.NAME(Temp.namedlabel "initArray"), [ex1, ex2]))
      end

end
