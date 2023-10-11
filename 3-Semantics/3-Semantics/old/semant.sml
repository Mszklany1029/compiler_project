structure A = Absyn
structure T = Types

structure Semant =
struct
  type venv = Env.enventry Symbol.table
  type tenv = T.ty Symbol.table

  fun checkInt (pos : A.pos) (ty : T.ty) = 
    case ty
      of T.INT => ()
       | _ => ErrorMsg.error pos "TYPE: Expected Int, got other type";

  fun lookupTy (pos : A.pos) (ty_sym : A.symbol) (tenv : tenv) : T.ty = 
    case Symbol.look (tenv, ty_sym)
      of SOME (T.NAME (_, r)) => 
        (case !r
        of SOME ty => ty
            | NONE => (ErrorMsg.error pos ("SCOPE : Did not recognize type " ^
            Symbol.name ty_sym); T.BOTTOM))
      | SOME ty => ty
      | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type " ^
      Symbol.name ty_sym); T.BOTTOM)



  fun transVar (venv : venv) (tenv : tenv) (v : A.var) : T.ty = (ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)

  and transExp (venv : venv) (tenv : tenv) (e : A.exp) : T.ty =
    let
      fun trexp (A.VarExp (A.SimpleVar (s, pos))) = 
        (*TODO: CALL transVar*)
        (case Symbol.look(venv, s) of
              SOME (Env.VarEntry { ty }) => ty
            | NONE => (ErrorMsg.error pos "SCOPE: variable not found"; T.BOTTOM))
        | trexp (A.OpExp { left, oper=A.PlusOp, right, pos} : A.exp) : T.ty = 
        (checkInt pos (trexp left);
         checkInt pos (trexp right);
          T.INT)
        | trexp (A.IntExp _) = T.INT
        | trexp (A.StringExp _) = T.STRING
        (*TODO: HANDLE MULTIPLE DECLARATIONS*)
        | trexp (A.LetExp {decs = [dec], body, pos}) = 
            let val {venv = venv2, tenv = tenv2} = transDec venv tenv dec
            in transExp venv2 tenv2 body end
            (*TODO: HANDLE SEQEXPS WITH MORE THAN ONE EXPRESSION*)
        | trexp (A.SeqExp [(e, _)]) = 
          (case e
          of [] => T.UNIT
              | [(a, _)] => trexp a
              | [(a, _), (b, _)] => (trexp a; trexp b))
        | trexp (A.CallExp {func, args, pos}) = 
          (*TODO: this only checks if a function exists, also need to check
          * arguemnts*)
          case look (venv, func)
            of SOME (Env.FunEntry {formal, result}) => ()
             | _ => (ErrorMsg.error "SCOPE: Function is out of scope"; T.BOTTOM)
      in
      trexp e
    end
  (*
  (ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)*)
  
  and transDec (venv : venv) (tenv : tenv) (d : A.dec) : { venv : venv, tenv : tenv} = 
    let
      fun getFunEntry ({name, params, result, body, pos} : A.fundec)
                              : ((Symbol.symbol * Env.enventry)
                                      * A.exp
                                      * (Symbol.symbol * Env.enventry) list
                                      * A.pos) = 
      
    (*fun checkFD ({name, params, result, body, pos} : A.fundec) = *)
      let
        fun fieldType ({typ, pos, ...} : A.field) = lookupTy pos typ tenv

        val arg_entry = map (fn {name, typ, pos, ...} =>
                                        (name, Env.VarEntry { ty = lookupTy pos
                                        typ tenv})) 
                        params

        val res = case result
                    of SOME (r, p) => lookupTy p r tenv
                     | NONE => T.UNIT
        (*val ty_body = transExp venv tenv body*)
      in 
        ((name, Env.FunEntry { formals = map fieldType params, result = res}), body, arg_entry, pos)
       (*((transExp venv tenv body;
       if res = ty.body then () else ErrorMsg.error pos "TYPE: unexpected result
        type"; (name, Env.FunEntry {formals = map fieldType params, reuslt =
        res}))*) 
        (*{venv = insert venv fes, tenv = tenv}*)
      end
    
    fun trdec (A.FuncitonDec (fs : A.fundec list)) =
      let
        (*val fes = map checkFD fs*)
        (*Collecting information*)
        val fes = map getFunEntry fs

        (*Putting FunEntries in venv*)
        val fun_entries = map (fn (x, _, _, _) => x) fes

        fun insert (v: 'a Symbol.table) (xs : (Symbol.symbol * 'a) list) =
          List.foldl (fn ((n, x) v') => Symbol.enter(v', n, x) ) v xs

        (*fun insert(v: 'a Symbol.table) ([]: (Symbol.symbol * 'a) list) = v
          | insert v ((n, x) :: xs) = insert(Symbol.enter (v, n, x)) xs*)

        val new_venv = insert venv fes
        
        fun checkFunEntry (Env.FunEntry {formals, result} (ars : (Symbol.symbol
          * Env.enventry) list)) (body : A.exp) (pos : A.pos) = 
            let
              val ars_venv = insert new_venv ars
              val ty_body = transExp new_venv tenv body
            in
              (
              (* TODO: don't use equality to compare types *)
              if result = ty_body then () else ErrorMsg.error pos "TYPE: unexpected result type")
            end

        fun checkAllFunEntry ([] : ((Symbol.symbol * Env.enventry) *A.exp * (Symbol.symbol * Env.enventry)list * A.pos) list ) = []
          | checkAllFunEntry (((_, fe), b, ars, pos) :: xs) = (checkFunEntry fe
          ars b pos; checkAllFunEntry xs) (*COME BACK AND DOUBLE CHECK THIS*)
      in
        (checkAllFunEntry fes; {venv = new_venv, tenv = tenv})
      end
    in
    trdec d
    end
  (*(ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)*)
  
  and transTy                (tenv : tenv) (e : A.ty) : T.ty = (ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)

  fun transProg e = transExp Env.base_venv Env.base_tenv e
end

structure Main = 
struct
  fun comp fileName = Semant.transProg (Parse.parse fileName)
  fun compile (_, [fileName]) = (comp fileName; OS.Process.success)
end
