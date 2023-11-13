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
                  | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type " ^ Symbol.name ty_sym); T.BOTTOM))
         | SOME ty => ty
         | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type " ^ Symbol.name ty_sym); T.BOTTOM)

  fun transVar (venv : venv) (tenv : tenv) (v : A.var) : T.ty = (*(ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)*)
    let
      fun trvar(A.SimpleVar (id, pos))
    in 
    trvar v
    end

  and transExp (venv : venv) (tenv : tenv) (e : A.exp) : T.ty =
    let
      fun trexp (A.OpExp { left, oper=A.PlusOp, right, pos} : A.exp) : T.ty =
        (checkInt pos (trexp left);
         checkInt pos (trexp right);
           T.INT)
        | trexp (A.IntExp _) = T.INT
        | trexp (A.StringExp _) = T.STRING
        (* TODO: Handle multiple declarations*)
        | trexp (A.LetExp {decs = [dec], body, pos}) =
            let val {venv=venv2, tenv=tenv2} = transDec venv tenv dec
            in transExp venv2 tenv2 body end
          (* TODO: Handle SeqExps with more than one expression *)
        | trexp (A.SeqExp [(e, _)]) = trexp e
    in
    trexp e
    end
    
  
  and transDec (venv : venv) (tenv : tenv) (d : A.dec) : { venv : venv, tenv : tenv} =
    let
      fun checkFD ({name, params, result, body, pos} : A.fundec) = 
          let
              fun fieldType ({typ, pos, ...} : A.field) = lookupTy pos typ tenv

              val res = case resu
                          of SOME (r, p) => lookupTy p r tenv
                          | NONE => T.UNIT
          in
          (name, Env.FunEntry { formals = map fieldType params, result = res})
          end

      fun trdec (A.FunctionDec (fs : A.fundec list)) =
        let
          val fes = map checkFD fs

          fun insert (v : 'a Symbol.table) ([] : (Symbol.symbol * 'a) list) = v
            | insert v ((n, x) :: xs) = insert (Symbol.enter (v, n, x)) xs
        in
        {venv = insert venv fes, tenv = tenv}
        end
    in
    trdec d
    end

  
  and transTy                (tenv : tenv) (e : A.ty) : T.ty = (ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)

  fun transProg e = transExp Env.base_venv Env.base_tenv e
end

structure Main = 
struct
  fun comp fileName = Semant.transProg (Parse.parse fileName)
  fun compile (_, [fileName]) = (comp fileName; OS.Process.success)
end
