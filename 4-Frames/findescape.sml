structure Tr = Translate
structure A = Absyn
structure S = Symbol

structure FindEscape : sig val findEscape : Absyn.exp -> unit end =
struct
    type depth = int
    type escEnv = (depth * bool ref) Symbol.table

    fun traverseVar (env : escEnv) (d : depth) (v : A.var) : unit =
      let
        fun travVar(A.SimpleVar(symbol (*sym*), pos)) =
            (case Symbol.look(env, symbol) of 
                SOME (dec_depth, escape) => (if dec_depth < d then escape :=
                true else ()) 
              | NONE => ())
          | travVar(A.FieldVar(var, symbol, pos)) = travVar var
          | travVar(A.SubscriptVar(var, exp, pos)) = (traverseExp env d exp; travVar var)
      in
        travVar v
      end

    and traverseExp (env : escEnv) (d : depth) (e : A.exp) : unit =
      let
        fun travExp (A.VarExp var) = (traverseVar env d var)
          | travExp (A.NilExp) = ()
          | travExp (A.IntExp _ ) = ()
          | travExp (A.StringExp _) = ()
          | travExp (A.CallExp({func, args, pos})) = app (fn exp => travExp exp) args
          | travExp (A.OpExp({left, oper = _, right, pos})) = (travExp left;
          travExp right) (*MAKE SURE THIS IS VALID*)
          | travExp (A.RecordExp({fields, typ, pos})) = 
            let 
              fun getFieldExp ((symbol, exp, pos)) = exp
              val fieldExps = map getFieldExp fields
            in
              app travExp fieldExps
            end
          | travExp (A.SeqExp e) =
            (case e 
               of [] => ()
                | [(a, _)] => travExp a
                | (a, _) :: b => (travExp a; travExp (A.SeqExp b)))
          | travExp (A.AssignExp({var, exp, pos})) = (traverseVar env d var; travExp exp) (*MAYBE SEND VAR TO A.VAREXP?? DON"T KNOW IF POSSIBLE*)
          | travExp (A.IfExp({test, then', else' = NONE, pos})) = (travExp test; travExp then')
          | travExp (A.IfExp({test, then', else' = SOME(exp3), pos})) = (travExp test; travExp then'; travExp exp3)
          | travExp (A.WhileExp({test, body, pos})) = (travExp test; travExp body)
          | travExp (A.ForExp({var, escape, lo, hi, body, pos})) = 
            let
              val escEntry = (d (*(d+1)*), escape) (*DOES THAT DEPTH NEED TO BE ZERO?*)
            in 
              escape := false; 
              Symbol.enter(env, var, escEntry);
              travExp lo;
              travExp hi;
              travExp body
            end
          | travExp (A.BreakExp pos) = ()
          | travExp (A.LetExp({decs, body, pos})) =
           (case decs
              of dec :: ds => (let
                                val env2 (*{env = env2}*) = traverseDec env d dec
                               in
                                 traverseExp env2 d (A.LetExp {decs = ds, body = body, pos = pos})
                               end)
                | [] => (traverseExp env d body))
            (*((case decs 
               of [] => ()
                | dec :: decs => traverseDec env d dec);
                travExp body)*)
            (*let
              val check = print "LET EXP"
              val nl = print "\n"
              fun processDec (dec) = traverseDec env d dec
            in
              map processDec decs; (*COME BACK AND DOUBLE CHECK THIS LINE, LIST OF ENVS COULD CAUSE ISSUE??*)
              travExp body
            end*)
          | travExp (A.ArrayExp({typ, size, init, pos})) = (travExp size; travExp init)
          (*| travExp e = PrintAbsyn.print(TextIO.stdOut, e)*)
      in 
        travExp e
      end 
    
    and traverseDec (env : escEnv) (d : depth) (dec : A.dec) : escEnv =
      let
        fun travDec(A.FunctionDec(fs : A.fundec list)) =
          let
            (*fun getParams({params, ...} : A.fundec) : A.field list = params*)
            (*fun processBody({body, ...} : A.fundec) : unit = traverseExp env d body*)
            fun processParams({params, body, ...} : A.fundec) = (app (fn {escape, ...}
              => escape := false) params;
              let
                val env' = List.foldl (fn ({escape, name, ...}, env ) => Symbol.enter(env, name, ((d+1), escape) )) env params
              in 
               traverseExp env' (d+1) body
              end)

          in
            app processParams fs;
            env
          end


          | travDec(A.VarDec ({name, escape, typ, init, pos})) = 
          let
            val escEntry = (d, escape)
            (*val ch = Symbol.look(env, name)*)
            

            (*COME BACK CALL TRAVERSE ON INIT*)
          in
            traverseExp env d init;
            escape := false;
            Symbol.enter(env, name, (d, escape))
          end
            
          | travDec(A.TypeDec(ts )) = env
(*NOTE TO SELF: here's how I think this works, everytime you do something, you
* look up in table to see if theres a symbol there that's a variable, get it's
* info, and adjust accordingly*)

      in
        travDec dec
      end


    fun findEscape (prog : Absyn.exp) : unit =  traverseExp Symbol.empty 0 prog
end
