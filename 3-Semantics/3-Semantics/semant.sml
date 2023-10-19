structure A = Absyn
structure T = Types

structure Semant =
struct
  type venv = Env.enventry Symbol.table
  type tenv = T.ty Symbol.table

  fun checkTypes (pos : A.pos) ((t1, t2) : T.ty * T.ty) : unit = 
      case (t1, t2) of (T.INT, T.INT) => ()
         | (T.STRING, T.STRING) => ()
         | (T.BOTTOM, _) => ()                        (*DO WE NEED T.BOTTOM EVERYTIME WE CALL ERROR??*)
         | (T.RECORD (_, _), T.NIL) => ()
         | (T.NIL, T.RECORD (_, _)) => ()
         | (T.RECORD (_, u1), T.RECORD (_, u2)) => if u1 = u2 then () else (ErrorMsg.error pos ("FUNCTION ARGS"(*"FUNCTION ARGS: Expected " ^ u2 ^ ", given " ^ u1*))(*; T.BOTTOM*))
         | (T.ARRAY (_, u1), T.ARRAY (_, u2)) => if u1 = u2 then () else (ErrorMsg.error pos ("FUNCTION ARGS"(*"FUNCTION ARGS: Expected " ^ u2 ^ ", given " ^ u1*))(*; T.BOTTOM*))    (*THERE MIGHT BE MORE TYPE COMPARISONS TO ADD*)
         | _ => (ErrorMsg.error pos ("FUNCTION ARGS"(*"FUNCTION ARGS: Expected " ^ t2 ^ ", given"
         ^ t1*))(*; T.BOTTOM*))

  fun aux_checkTypes (pos : A.pos) ([] : T.ty list) ([] : T.ty list) : unit = ()
    | aux_checkTypes pos (arg :: args) (formal :: formals) = (checkTypes pos (arg, formal); aux_checkTypes pos args formals) 


  fun checkInt (pos : A.pos) (ty : T.ty) =
    case ty
        of T.INT => ()
          | _ => ErrorMsg.error pos "TYPE: Expected Int, got other type";

  fun checkStr (pos : A.pos) (ty : T.ty) = 
    case ty
      of T.STRING => ()
       | _ => ErrorMsg.error pos "TYPE: Expected String, got other type";

  fun checkCompArgs (pos : A.pos) ((t1, t2) : T.ty * T.ty) : unit =
    case (t1, t2)
      of (T.STRING, T.STRING) => ()
       | (T.INT, T.INT) => ()
       | _ => (ErrorMsg.error pos "TYPE: Incompatible type comparison")

  fun checkEqArgs (pos : A.pos) ((t1, t2): T.ty * T.ty) : unit = 
    case (t1, t2)
      of (T.STRING, T.STRING) => ()
       | (T.INT, T.INT) => ()
       | (T.ARRAY (_, u1), T.ARRAY (_, u2)) => () (*COME BACK TO THIS! FIND OUT IF I HAVE TO DO THE REFERENCE COMPARISON HERE OR IF THAT HAPPENS LATER?*)
       | (T.RECORD (_, u1), T.RECORD (_, u2)) => () (*SAME QUESTION AS WITH
       ARRAYS*)
       | _ => ErrorMsg.error pos "TYPE: Incompatible type comparison" (*IMPROVE
       ERROR MESSAGE:?*)

  
  (*fun getName(pos : A.pos) (symb : Symbol.symbol) (tenv)*)
  
  fun lookupTy (pos : A.pos) (ty_sym : A.symbol) (tenv : tenv) : T.ty =
      case Symbol.look (tenv, ty_sym) of SOME (T.NAME (_, r)) =>
              (case !r
                of SOME ty => ty
                  | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type " ^ Symbol.name ty_sym); T.BOTTOM))
         | SOME ty => ty
         | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type " ^ Symbol.name ty_sym); T.BOTTOM)

  fun transVar (venv : venv) (tenv : tenv) (v : A.var) : T.ty = (ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)

  and transExp (venv : venv) (tenv : tenv) (e : A.exp) : T.ty =
    let
       
      fun trexp (A.VarExp (A.SimpleVar (s, pos))) =

            (* TODO: CAll transVar *)
            (case Symbol.look(venv, s) of
                SOME (Env.VarEntry { ty }) => ty
              | NONE => (ErrorMsg.error pos "SCOPE: variable not found"; T.BOTTOM))
        | trexp (A.OpExp { left, oper=A.PlusOp, right, pos} : A.exp) : T.ty =
          (checkInt pos (trexp left);
           checkInt pos (trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.MinusOp, right, pos} : A.exp) : T.ty = 
          (checkInt pos (trexp left);
           checkInt pos (trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.TimesOp, right, pos} : A.exp) : T.ty = 
          (checkInt pos (trexp left); 
           checkInt pos (trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.DivideOp, right, pos} : A.exp) : T.ty =
          (checkInt pos (trexp left);
           checkInt pos (trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.LtOp, right, pos} : A.exp) : T.ty =
          (checkCompArgs pos (trexp left, trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.GtOp, right, pos} : A.exp) : T.ty =
          (checkCompArgs pos (trexp left, trexp right); T.INT) 
        | trexp (A.OpExp { left, oper = A.LeOp, right, pos} : A.exp) : T.ty =
          (checkCompArgs pos (trexp left, trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.GeOp, right, pos} : A.exp) : T.ty =
          (checkCompArgs pos (trexp left, trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.EqOp, right, pos} : A.exp) : T.ty = 
          (checkEqArgs pos (trexp left, trexp right); T.INT)
        | trexp (A.OpExp { left, oper = A.NeqOp, right, pos} : A.exp) : T.ty = 
          (checkEqArgs pos (trexp left, trexp right); T.INT)
        (*| trexp (A.IfExp {test, then', else' = SOME (A.IntExp 0), pos}) : T.ty = *)
          
        | trexp (A.IfExp {test, then', else' = NONE, pos} : A.exp) : T.ty =
          (checkInt pos (trexp test); T.UNIT)
        | trexp (A.IfExp {test, then', else' = SOME(exp3), pos} : A.exp) : T.ty =
          (checkInt pos (trexp test); checkTypes pos (trexp then', trexp exp3);
          T.UNIT) (*THIS MIGHT BE WRONG*)
        | trexp (A.WhileExp {test, body, pos}: A.exp) : T.ty = 
          (checkInt pos (trexp test); T.UNIT) (*COME BACK*)
        
        (*| trexp(A.ForExp)*)

        | trexp (A.IntExp _) = T.INT
        | trexp (A.StringExp _) = T.STRING (*TRANSLATE TO STRING?*)
        (* TODO: Handle multiple declarations*)
        | trexp (A.LetExp {decs = decs, body, pos}) =
          (case decs
            of dec :: ds => (let
                              val {venv = venv2, tenv = tenv2} = transDec venv tenv dec
                            in 
                              transExp venv2 tenv2 (A.LetExp {decs = ds, body = body, pos = pos})
                            end)
              | [] => (transExp venv tenv body))
            (*let val {venv=venv2, tenv=tenv2} =
              (*List.foldl (fn dec => transDec venv tenv dec) {venv = venv, tenv
              * = tenv} decs*)
              (*case decs of [] => T.UNIT
                 | dec => transDec venv tenv dec
                 | dec :: decs => (transDec venv tenv dec; trexp (A.LetExp{decs,
                 body, pos}))*)
            transDec venv tenv dec
            in transExp venv2 tenv2 body end*)
          (* TODO: Handle SeqExps with more than one expression - DONE I THINK? *)
        | trexp (A.SeqExp e) = 
          (case e
            of [] => T.UNIT
              | [(a, _)] => trexp a
              | (a, _) :: b => (trexp a; trexp (A.SeqExp b))) 
        | trexp (A.CallExp {func, args, pos}) =
          (* TODO: this only checks if a function exists, also need to check
          * arguments - DONE I THINK*)
          (case Symbol.look (venv, func)
            of SOME (Env.FunEntry {formals, result} ) => if(List.length (map
            trexp args) <> List.length formals) then (ErrorMsg.error pos
            "NUMARGS: function has incorrect number of args"; T.BOTTOM) else
              (aux_checkTypes pos (map trexp args) (formals); result) 
             | _ => (ErrorMsg.error pos "SCOPE: function is out of scope"; T.BOTTOM))
        (*| trexp (A.AssignExp {var, exp, pos}) = T.UNIT*)

        | trexp (A.ArrayExp {typ, size, init, pos} ) = 
          (case Symbol.look (venv, typ) (*THIS MIGHT BE WRONG! WE MIGHT NOT WANT
          TO LOOK IN THE VENV*)
            of SOME(Env.VarEntry {ty}) => (checkInt pos (trexp size);
            checkTypes pos (trexp init, lookupTy pos typ tenv));
          T.UNIT)
                  
    in
    trexp e
    end
    
  
  and transDec (venv : venv) (tenv : tenv) (d : A.dec) : { venv : venv, tenv : tenv} =
    let

      fun getFunEntry ({name, params, result, body, pos} : A.fundec)
                              : ((Symbol.symbol * Env.enventry)
                                      * A.exp
                                      * (Symbol.symbol * Env.enventry) list
                                      * A.pos) = 
          let
              fun fieldType ({typ, pos, ...} : A.field) = lookupTy pos typ tenv

              val arg_entry = map (fn {name, typ, pos, ...} =>
                                              (name, Env.VarEntry { ty = lookupTy pos typ tenv }) )
                              params

              val res = case result
                          of SOME (r, p) => lookupTy p r tenv

          in
          ((name, Env.FunEntry { formals = map fieldType params, result = res}), body, arg_entry, pos)
          end

      fun trdec (A.FunctionDec (fs : A.fundec list)) =
        let
          (* Collecting information *)
          val fes = map getFunEntry fs

          (* Putting FunEntries in venv *)
          val fun_entries = map (fn (x, _, _, _) => x) fes

          fun insert (v : 'a Symbol.table) (xs : (Symbol.symbol * 'a) list) =
            List.foldl (fn ((n, x), v') => Symbol.enter(v', n, x) ) v xs
          (* fun insert (v : 'a Symbol.table) ([] : (Symbol.symbol * 'a) list) = v
            | insert v ((n, x) :: xs) = insert (Symbol.enter (v, n, x)) xs *)

          val new_venv = insert venv fun_entries

          (* Semantic checking of function declarations *)
          fun checkFunEntry (Env.FunEntry { formals, result }) (ars : (Symbol.symbol * Env.enventry) list) (body : A.exp) (pos : A.pos) =
            let
                  (* Before checking the body of the expression, we want the value environemnt
                  to have all of the function fields inserted int it *)
                  val ars_venv = insert new_venv ars

                  val ty_body = transExp ars_venv tenv body
            in
              (
              (* TODO: don't use equality to compare types *)
              if result = ty_body then () else ErrorMsg.error pos "TYPE: unexpected result type")
            end

          fun checkAllFunEntry ([] : ((Symbol.symbol * Env.enventry) * A.exp * (Symbol.symbol * Env.enventry) list * A.pos) list) = ()
            | checkAllFunEntry (((_, fe), b, ars, pos) :: xs) = (checkFunEntry fe ars b pos; checkAllFunEntry xs)
        in
        (checkAllFunEntry fes; {venv = new_venv, tenv = tenv})
        end
      
    | trdec(A.TypeDec (ts )) = 
    let 
      val prelim_tenv = List.foldl(fn ({name,...}, tv') => Symbol.enter(tv',name, T.NAME (name, ref NONE)) ) tenv ts
      val tenv = List.foldl(fn ({name, ty, pos}, tv')=>Symbol.enter(tv', name, transTy prelim_tenv ty) )tenv ts

      (*COME BACK AND ADD SEEN LIST STUFF*)
      fun dig (name : Symbol.symbol ) (tenv : tenv) (pos : A.pos) : T.ty =
        case Symbol.look(tenv, name) of SOME (T.NAME (_, tyop)) =>
          case !tyop of SOME (T.NAME(symb,_)) => dig symb tenv pos
           | SOME ty => ty
           | NONE => (ErrorMsg.error pos "TYPE: NO TYPE FOUND BY DIG, COME BACK AND CHANGE THIS"; T.BOTTOM)
      fun tenv_update (tenv : tenv) =  List.map (fn ({name, ty, pos}) => 
        case Symbol.look(prelim_tenv, name) of SOME (T.NAME(name, r)) => r :=
          SOME (dig name tenv pos)) ts

    in
        tenv_update tenv;
        {venv = venv, tenv = tenv}
    end
    in
    trdec d
    end

  
  and transTy                (tenv : tenv) (e : A.ty) : T.ty =
  let
    fun trTy( A.NameTy (symbol, pos)) = lookupTy pos symbol tenv (*T.NAME(symbol,Symbol.look(tenv,
      symbol))*) (*COME BACK TOTHIS DEF NOT DONE*) 
      | trTy(A.ArrayTy (symbol,pos)) = T.ARRAY(lookupTy pos symbol tenv, ref ())
      | trTy (A.RecordTy tyfields) = 
        let
          val tyfs = map(fn {name, escape, typ, pos} => (name, (lookupTy pos typ
          tenv)) ) tyfields (*COME BACK TO THIS?????? MIGHT NEED PARTIAL TYDEPENDING ON IF NONE REF*) 

        in
          T.RECORD(tyfs, ref ())
        end

  in
    trTy e
  end
  (*(ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)*)

  fun transProg e = transExp Env.base_venv Env.base_tenv e
end

structure Main = 
struct
  fun comp fileName = Semant.transProg (Parse.parse fileName)
  fun compile (_, [fileName]) = (comp fileName; OS.Process.success)
end
