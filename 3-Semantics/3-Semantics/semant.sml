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
      fun trexp (A.OpExp { left, oper=A.PlusOp, right, pos} : A.exp) : T.ty = 
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
        | trexp (A.SeqExp [(e, _)]) = trexp e
      in
      trexp e
    end
  (*
  (ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)*)
  
  and transDec (venv : venv) (tenv : tenv) (d : A.dec) : { venv : venv, tenv :
  tenv} = let
    fun checkFD ({name, params, result, body, pos} : A.fundec) = 
      let
        fun fieldType ({typ, pos, ...} : A.field) = lookupTy pos typ tenv

        val res = case result
                    of SOME (r, p) => lookupTy p r tenv
                     | NONE => T.UNIT
      in 
      {venv = insert venv fes, tenv = tenv}
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
