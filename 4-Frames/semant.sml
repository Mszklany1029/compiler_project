(*structure A = Absyn*)
structure T = Types

structure Semant =
struct
  type venv = Env.enventry Symbol.table
  type tenv = T.ty Symbol.table

type level = Translate.level
  (*fun printFormat (s : string) : unit = 
    print s ^ ", "*)
  (*fun convertFormatPrint (tenv : tenv) : unit =
      let
        val list_of_types = Symbol.getList tenv
        val type_string_list = map typeToStr list_of_types
        val convert = String.concatWith ", " type_string_list
      in
        print convert;
        print "\n"
      end*)
      (*datatype test = ttst of {i : int}*)

  (*fun envEntryToStr (e : Env.enventry) : string =
    case e of
          VarEntry {STRING} => 
            case STRING of
                 T.STRING => "string"*)
    
  val break_check = ref 0 : int ref
  fun typeToStr (t : T.ty) : string = 
    case t of T.INT => "int"
       | T.STRING => "string"
       | T.UNIT => "unit"
       | T.BOTTOM => "bottom"
       | T.RECORD(_, _) => "record"
       | T.ARRAY (_, _) => "array"
       | T.NAME (symb, _) => "name :" ^ Symbol.name symb
       | T.NIL => "nil"

  fun convertFormatPrint (tenv : tenv) : unit =
      let
        val list_of_types = Symbol.getList tenv
        val type_string_list = map typeToStr list_of_types
        val convert = String.concatWith ", " type_string_list
      in
        print convert;
        print "\n"
      end 
 (*fun convertFormatPrintVenv (venv : venv) : unit =
      let
        val list_of_types = Symbol.getList venv
        val type_string_list = map envEntryToStr list_of_types
        val convert = String.concatWith ", " type_string_list
      in
        print convert;
        print "\n"
      end *)
  fun actual_ty (tenv : tenv) (ty : T.ty) : T.ty = 
    (case ty of 
        T.NAME (symb, tyop) => 
          (case Symbol.look (tenv, symb) of SOME typ => actual_ty tenv typ
            | NONE => T.BOTTOM)
            | ty => ((*print "ACTUAL_TY HERE: " print (typeToStr ty);*) ty))

(*fun actual_ty (tenv : tenv) (ty : T.ty) : T.ty = 
    (case ty of 
        T.NAME (symb, tyop) => 
          (case !tyop of SOME typ => actual_ty tenv typ
            | NONE => T.BOTTOM)
        | ty => ((*print "ACTUAL_TY HERE: " print (typeToStr ty);*) ty))*)



  fun checkTypes (tenv : tenv) (pos : A.pos) ((t1, t2) : T.ty * T.ty) : unit = 
      case ( actual_ty tenv t1, actual_ty tenv t2) of (T.INT, T.INT) => ()
         | (T.STRING, T.STRING) => ()
         | (T.UNIT, T.UNIT) => ()
         | (T.BOTTOM, _) => ()                        (*DO WE NEED T.BOTTOM EVERYTIME WE CALL ERROR??*)
         | (T.RECORD (_, _), T.NIL) => ()
         | (T.NIL, T.NIL) => ()
         | (T.NIL, T.RECORD (_, _)) => ()
         | (T.RECORD (_, u1), T.RECORD (_, u2)) => if u1 = u2 then () else (ErrorMsg.error pos ("TYPE: record type mismatch"(*"FUNCTION ARGS: Expected " ^ u2 ^ ", given " ^ u1*))(*; T.BOTTOM*))
  (*Correct*)
        | (T.ARRAY (_, u1), T.ARRAY (_, u2)) => if u1 = u2 then () else (ErrorMsg.error pos ("TYPE: array type mismatch"(*"FUNCTION ARGS: Expected " ^ u2 ^ ", given " ^ u1*))(*; T.BOTTOM*))
         (*| (_, T.NAME (symb, tyop)) => 
             (case !tyop 
              of SOME ty => checkTypes pos tenv (_, ty)
                 | NONE => tyop := SOME ((dig (valOf Symbol.look(tenv, symb))
                 tenv pos [] ); checkTypes pos tenv (_, tyop)))*) 
         | _ => (ErrorMsg.error pos ("TYPE: Mismatch, t1: " ^ typeToStr(t1) ^ " t2: " ^ typeToStr(t2)(*"FUNCTION ARGS: Expected " ^ t2 ^ ", given"
         ^ t1*))(*; T.BOTTOM*))

  fun aux_checkTypes (tenv : tenv) (pos : A.pos) ([] : T.ty list) ([] : T.ty list) : unit = ()
    | aux_checkTypes tenv pos (arg :: args) (formal :: formals) = (checkTypes tenv pos (arg, formal); aux_checkTypes tenv pos args formals) 


  (*fun actual_ty (tenv : tenv) (ty : T.ty) : T.ty = 
    (case ty of 
         T.NAME (symb, tyop) => 
          (case !tyop of SOME t => 
            (case Symbol.look (tenv, symb) of SOME typ => (print "ACTTY DEEP: ";
            print (typeToStr typ); actual_ty tenv typ))
         (*| T.RECORD(_,_) => ty
         | T.ARRAY(_,_) => ty*)
         | _ => (print "ACTUAL_TY HERE: "; print (typeToStr ty); ty)))*) 

  fun checkInt (pos : A.pos) (ty : T.ty) =
    case ty
        of T.INT => ()
          | T.BOTTOM => ()
          | _ => ErrorMsg.error pos "TYPE: Expected Int, got other type"

  fun checkStr (pos : A.pos) (ty : T.ty) = 
    case ty
      of T.STRING => ()
       | _ => ErrorMsg.error pos "TYPE: Expected String, got other type";

  fun checkCompArgs (pos : A.pos) ((t1, t2) : T.ty * T.ty) : unit =
    case (t1, t2)
      of (T.STRING, T.STRING) => ()
       | (T.INT, T.INT) => ()
       | _ => (ErrorMsg.error pos "TYPE: Comps Incompatible type comparison")

  fun checkEqArgs (pos : A.pos) ((t1, t2): T.ty * T.ty) : unit = 
    case (t1, t2)
      of (T.STRING, T.STRING) => ()
       | (T.INT, T.INT) => ()
       | (T.ARRAY (_, u1), T.ARRAY (_, u2)) => () (*COME BACK TO THIS! FIND OUT IF I HAVE TO DO THE REFERENCE COMPARISON HERE OR IF THAT HAPPENS LATER?*)
       | (T.RECORD (_, u1), T.RECORD (_, u2)) => () (*SAME QUESTION AS WITHARRAYS*)
       | (T.RECORD (_,_), T.NIL) => ()
       | (T.NIL, T.RECORD(_,_)) => ()
       | (T.NIL, T.NIL) => ErrorMsg.error pos "TYPE: Illegal use of NIL"
       | _ => ErrorMsg.error pos "TYPE: Eqs Incompatible type comparison, t1: "
       (*^ (typeToStr t1) ^ ", t2:" ^ (typeToStr t2); () *) (*IMPROVE
       ERROR MESSAGE:?*)

  fun nilInitRule ((t1, t2) : T.ty * T.ty) : bool = 
    case (t1, t2) 
      of (T.NIL, T.NIL) => true
       | (_, T.NIL) => false
       | (T.NIL, _) => false
       | (_, _) => false
  
  fun checkNil (pos : A.pos) ((t1, t2) : T.ty * T.ty) : bool = 
    case (t1, t2)
      of (T.NIL, T.NIL) => (print "BOTH NIL"; true)
       | (T.RECORD (_, _), T.NIL) => (print "hHI"; true)
       | (_, T.NIL) => false
       | (T.NIL, _) => false
       | (_, _) => ((*print "BOTTOM";*) true) 

  fun checkReadOnly (pos : A.pos) (v : A.var) (venv : venv) : unit = 
    (case v of
          A.SimpleVar(symb, _) => 
          (case Symbol.look(venv, symb) of 
                SOME(Env.VarEntry{ty, readonly = true, ...}) => (ErrorMsg.error pos "READONLY: illegal attempt to modify readonly variable")
              | SOME(Env.VarEntry{ty, readonly = false, ...}) => ())
        | _ => ())

fun dig (t : T.ty) (tenv : tenv) (pos : A.pos) (tys : T.ty list) : T.ty =
      (case t
        of T.NAME(symb, tyop) =>
          (case !tyop 
            of SOME ty => ( if List.exists (fn ty => ty = t) tys then (ErrorMsg.error pos ("LOOP: Mutually recursive type cycle detected"); T.BOTTOM) else dig ty tenv pos (t :: tys))
              | NONE =>
                  (case Symbol.look(tenv, symb)
                    of SOME s => (if List.exists (fn ty => ty = t) tys then (ErrorMsg.error pos ("LOOP: Mutually recursive type cycle detected"); T.BOTTOM) else 
                      let 
                        val t = (dig s tenv pos (t :: tys))
                      in 
                        tyop := SOME t;
                        t
                      end)
                    | NONE => t (*tyop := SOME t;*) 
                  )
            )
         (* | T.ARRAY(otherty, u) => T.ARRAY(otherty, u)*)
          | _ => t
      )
 

    (*CASES FOR OTHER TYPES*)
(*fun dig (t : T.ty) (tenv : tenv) (pos : A.pos) (tys : T.ty list) : T.ty =
  let 
    (*val start = (print "starting type : ")
    val st = print (typeToStr t)*)
    val strt = print "\n"
  in 
      (case t
        of T.NAME(symb, tyop) =>
          (case !tyop 
            of SOME ty => ( if List.exists (fn ty => ty = t) tys then (ErrorMsg.error pos ("LOOP: Mutually recursive type cycle detected"); T.BOTTOM) else 
              let 
                val test = dig ty tenv pos (t :: tys)
                (*val pre = print "outer level: " 
                val pri = print (Symbol.name symb)
                val prin = print " "
                val tnt = print (typeToStr test)*)
                val pls = print "\n"
              in 
                tyop := SOME test; test
              end)
              | NONE =>
                  (case Symbol.look(tenv, symb)
                    of SOME s => (if List.exists (fn ty => ty = t) tys then (ErrorMsg.error pos ("LOOP: Mutually recursive type cycle detected"); T.BOTTOM) else 
                      let 
                        val t = (dig s tenv pos (t :: tys))
                        (*val p = print "inner SOME level: " 
                        val pr =  print (Symbol.name symb) 
                        val pri = print " " 
                        val prin = print (typeToStr t)*)
                        val pls = print "\n"
                      in 
                        tyop := SOME t;
                        t
                      end)
                    | NONE => 
                        let
                          (*val p = print "Inner NONE level: "
                          val pr = print (Symbol.name symb)  
                          val pri = print " " 
                          val prin = print (typeToStr t)*) 
                          val pls = print "\n"
                        in
                          t
                        end(*tyop := SOME t;*) 
                  )
            )
         (* | T.ARRAY(otherty, u) => T.ARRAY(otherty, u)*)
          | _ => let

                val pre = print "Final case: " 
                val tnt = print (typeToStr t)
                val pls = print "\n"

                 in
                   t
                 end
      ) 
  end *)
 
 
  fun lookupTy (pos : A.pos) (ty_sym : A.symbol) (tenv : tenv) : T.ty =
      case Symbol.look (tenv, ty_sym) of SOME (T.NAME (_, r)) =>
              (case !r
                of SOME ty => ty
                  | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type inner" ^ Symbol.name ty_sym); T.BOTTOM))
         (*| SOME (T.RECORD (fs, r)) => ()*)
         | SOME ty => ty
         | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type " ^ Symbol.name ty_sym); T.BOTTOM)


  fun transVar (venv : venv) (tenv : tenv) (v : A.var) (lvl : level): T.ty =
    let
      fun trVar (A.SimpleVar (symbol, pos)) = 
        (case Symbol.look(venv, symbol)
          of SOME (Env.VarEntry {ty, readonly = _, ... }) => (*ty*)dig ty tenv pos [] (*dig symbol tenv pos*) (*THIS MIGHT BE A PROBLEM COME BACK*)
           | SOME (Env.FunEntry { formals, result, ...}) => result
             | NONE => ((*convertFormatPrint tenv; print " "; print (Symbol.name symbol); print " \n";*) ErrorMsg.error pos "SCOPE: no variable found"; T.BOTTOM))
       | trVar(A.FieldVar(var, symbol, pos)) = 
        let
          fun fieldLookup (r : T.ty) ([] : (Symbol.symbol * T.ty) list) (pos : A.pos) : T.ty  = 
            (ErrorMsg.error pos "SCOPE: Field not found in record instance"; T.BOTTOM)
            | fieldLookup (r) ((symb, ty) :: fs) (pos) = if (symbol = symb) then ty else (fieldLookup r fs pos)
          val re = trVar var
 
        in 
          (case (actual_ty tenv (dig re tenv pos []))
            of (r as (T.RECORD (fs, _))) => (fieldLookup r fs pos)
              | _ => (ErrorMsg.error pos "SCOPE: Var is not a record"; T.BOTTOM))
        end
      | trVar(A.SubscriptVar(var, exp, pos)) =
        let
          val t = trVar var
        in 
          (case (actual_ty tenv (dig t tenv pos [])) of
                (T.ARRAY (ty, _)) => (checkInt pos (transExp venv tenv exp lvl); ty) 
                | _ => (ErrorMsg.error pos "SCOPE: Var is not of Arraytype"; T.BOTTOM) (*don't know why it's scope and not type but okay*)
          )  
        end
          
    in 
      trVar v
    end

  and transExp (venv : venv) (tenv : tenv) (e : A.exp) (lvl : level) : T.ty =
    let
       
      fun trexp (A.VarExp var (*(A.SimpleVar (s, pos))*)) =
        transVar venv tenv var lvl
        | trexp (A.BreakExp pos) = if !break_check = 0 then (ErrorMsg.error pos "MISPLACED: illegal use of break"; T.BOTTOM) else T.UNIT
        | trexp (A.IntExp _) = T.INT
        | trexp (A.StringExp _) = T.STRING
        | trexp (A.NilExp) = T.NIL
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
        | trexp (A.IfExp {test, then', else' = NONE, pos} : A.exp) : T.ty =
          let
            val thenty = dig (trexp then') tenv pos []
          in
          checkInt pos (trexp test);
          (case thenty
            of T.UNIT => T.UNIT
              | _ => (ErrorMsg.error pos "TYPE: if-then returns non unit";
              T.BOTTOM))
          end
        | trexp (A.IfExp {test, then', else' = SOME(exp3), pos} : A.exp) : T.ty =
          let
            val thenty = (dig (trexp then') tenv pos [])
            val elsety = (dig (trexp exp3) tenv pos []) 
          in 
            checkInt pos (trexp test);
            checkTypes tenv pos (thenty, elsety);
            thenty
          end

        | trexp (A.WhileExp {test, body, pos}: A.exp) : T.ty =
          let
            val testint = (checkInt pos (trexp test))
          in
            break_check := !break_check + 1; convertFormatPrint tenv;
            (case (trexp body) 
              of T.UNIT => T.UNIT
                | _ => (ErrorMsg.error pos "TYPE: While expression returns non-unit"; T.BOTTOM));
                break_check := !break_check -1;
                T.UNIT
                
          end
        | trexp (A.ForExp {var, escape, lo, hi, body, pos}) = 
        
          let
            val lores = (trexp lo)
            val hires = (trexp hi)
            val acc = Translate.allocLocal lvl (!escape)
            val venv' = Symbol.enter(venv, var, Env.VarEntry{ty = T.INT, readonly = true, access = acc})
            (*val bodyexp = transExp venv' tenv body*)
            (*val bodyexp = (transExp venv tenv' (transVar venv tenv
            * Env.VarEntry{var}))*)
          in 
            (*(transExp venv tenv var);*)
            Translate.printAccess var acc;
            checkInt pos lores;
            checkInt pos hires;
            break_check := !break_check + 1;
            (case (transExp venv' tenv body lvl) (*bodyexp*)
              of T.UNIT => T.UNIT
                | _ => (ErrorMsg.error pos "TYPE: For expression returns non-unit"; T.BOTTOM));
            break_check := !break_check - 1;
            T.UNIT
          end
          
        | trexp (A.LetExp {decs = decs, body, pos}) =
          (case decs
            of dec :: ds => (let
                              val {venv = venv2, tenv = tenv2} = transDec venv tenv dec lvl
                            in 
                              transExp venv2 tenv2 (A.LetExp {decs = ds, body = body, pos = pos}) lvl
                            end)
              | [] => (transExp venv tenv body lvl))
        | trexp (A.SeqExp e) = 
          (case e
            of [] => T.UNIT
              | [(a, _)] => trexp a
              | (a, _) :: b => (trexp a; trexp (A.SeqExp b))) 
        | trexp (A.CallExp {func, args, pos}) =
          (case Symbol.look (venv, func)
            of SOME (Env.FunEntry {formals, result, ...} ) => if(List.length (map
            trexp args) <> List.length formals) then (ErrorMsg.error pos
            "SCOPE: function has incorrect number of args"; T.BOTTOM) else
              (aux_checkTypes tenv pos (map trexp args) (formals); result) 
             | _ => (ErrorMsg.error pos "SCOPE: function is out of scope"; T.BOTTOM))
        | trexp (A.AssignExp {var, exp, pos}) = 
        let 
          val assign_var = transVar venv tenv var lvl
          

        in
          checkReadOnly pos var venv;
          checkTypes tenv pos (assign_var, trexp exp); T.UNIT

        end

        | trexp (A.ArrayExp {typ, size, init, pos} ) =
          let
            val arrSize = trexp size
            val initVal = trexp init
          in
            (*convertFormatPrint tenv;*) checkInt pos arrSize;
            (case Symbol.look(tenv, typ) of
                 SOME(t) =>
                 (case actual_ty tenv t of
                    T.ARRAY(at, u) => (checkTypes tenv pos (actual_ty tenv at, actual_ty tenv initVal); (*diinitVal tenv pos []*)T.ARRAY(at, u))
                    | _ => (ErrorMsg.error pos ("TYPE: Not of arrtyp: " ^ Symbol.name typ); T.BOTTOM)))
          end
        | trexp (A.RecordExp{fields, typ, pos}) = 
            let
              val (recfields, rectyp) = 
                (case (Symbol.look(tenv, typ)) of 
                     SOME(T.RECORD(rfs, u)) => (rfs, T.RECORD(rfs, u))
                    | NONE => (ErrorMsg.error pos "SCOPE: Record: was never defined"; ([], T.BOTTOM) )
                    | _ => (ErrorMsg.error pos "TYPE: Resulting type of was not record"; ([], T.BOTTOM) ))
                  
              (*val test = convertFormatPrint tenv*)
              fun typArgsEval (rightfield) = 
              let
                val (rhandsymb, rhandexpression, recfieldpos) = rightfield
              in 
                trexp rhandexpression
              end       
              
              fun getTypes (recfield ) = 
                let
                  (*val (symb, rexp, rpos) = recfield*)
                  (*val (rpos, rexp, rsymb) = recfield*) (*THIS MAY CAUSE PROBLEMS
                  COME BACK*)
                    (*val test = print (Symbol.name rsymb)*)
                  val (rsymb, rtyp) = recfield

                in 
                  (*lookupTy pos rsymb tenv*)
                  rtyp
                end 
                
              val fieldargs = (map typArgsEval fields)
              val namestypes = (map getTypes recfields)
              (*val namestypes = (map getTypes fields)*)
              val nstys = List.rev namestypes
              (*val test = convertFormatPrint tenv*)
            in 
             
              if (List.length fieldargs) <> (List.length namestypes) then
                (ErrorMsg.error pos "SCOPE: fields unitialized"; T.BOTTOM) else
                  T.UNIT;
              
              (*aux_checkTypes pos namestypes fieldargs;*)
              aux_checkTypes tenv pos fieldargs nstys;
              (*convertFormatPrint tenv;*)
              rectyp

            end
                  
    in
    trexp e
    end
    
  
  and transDec (venv : venv) (tenv : tenv) (d : A.dec) (lvl : level) : { venv : venv, tenv : tenv} =
    let


      fun getFunEntry ({name, params, result, body, pos} : A.fundec)
                              : ((Symbol.symbol * Env.enventry)
                                      * A.exp
                                      * (Symbol.symbol * Env.enventry) list
                                      * A.pos) = 
          let
              val nlab = Temp.newlabel()
              val forms = map (fn {escape, ...} => (!escape)) params
              val nlvl = Translate.newLevel{parent = lvl, name = nlab, formals = forms }
              val accs = Translate.formals nlvl
              fun fieldType ({typ, pos, ...} : A.field) = lookupTy pos typ tenv
              val zipped = ListPair.zip(params, accs)
              val arg_entry = map (fn ({name, typ, pos, ...}, acc) =>
                                              (name, Env.VarEntry { ty = lookupTy pos typ tenv, readonly = false, access = acc}) ) zipped
              (*val check = convertFormatPrint tenv*)
              val res = case result
                          of SOME (r, p) => lookupTy p r tenv
                           | NONE => T.UNIT

              (*check for dupes here?*)
              (*val dupe_check = *)
            
          in
            Translate.printLevel name nlvl;
          ((name, Env.FunEntry { formals = map fieldType params, result = res, level = nlvl, label = nlab }), body, arg_entry, pos)
          end
      
      (*fun funDupeCheck()*)

      fun trdec (A.FunctionDec (fs : A.fundec list)) =
        let
          (* Collecting information *)
          val fes = map getFunEntry fs
          (*val try = print fes*)

          (* Putting FunEntries in venv *)
          val fun_entries = map (fn (x, _, _, _) => x) fes
          fun extract_name (x : (Symbol.symbol * 'a)) : Symbol.symbol = 
            case x of
                 (symb, _) => symb

          (*val fun_symbs = map extract fun_entries*)
          
          fun checkFunDupes ([], _) = ()
            | checkFunDupes ({name, pos, params, result, body} :: fundecs, names) =
              (case List.find (fn n => name = n) names of
                    SOME(_) => (ErrorMsg.error pos ("DUPLICATE: duplicate function definitions in same batch"); ())
                      | NONE => (checkFunDupes (fundecs, name :: names));())

          fun insert (v : 'a Symbol.table) (xs : (Symbol.symbol * 'a) list) =
            List.foldl (fn ((n, x), v') => Symbol.enter(v', n, x) ) v xs
          
          val new_venv = insert venv fun_entries

          (* Semantic checking of function declarations *)
          fun checkFunEntry (Env.FunEntry { formals, result, level = nlvl, label}) (ars : (Symbol.symbol * Env.enventry) list) (body : A.exp) (pos : A.pos) =
            let
                  (* Before checking the body of the expression, we want the value environemnt
                  to have all of the function fields inserted int it *)
                  val ars_venv = insert new_venv ars

                  val ty_body = transExp ars_venv tenv body nlvl
            in
              (
              if (checkTypes tenv pos (result, ty_body)) = () then () else ErrorMsg.error pos "TYPE: unexpected result type")
            end

          fun checkAllFunEntry ([] : ((Symbol.symbol * Env.enventry) * A.exp * (Symbol.symbol * Env.enventry) list * A.pos) list) = ()
            | checkAllFunEntry (((_, fe), b, ars, pos) :: xs) = (checkFunEntry fe ars b pos; checkAllFunEntry xs)
        in
          (checkFunDupes(fs, []);
        checkAllFunEntry fes; {venv = new_venv, tenv = tenv})
        end
      
    | trdec(A.TypeDec (ts )) = 
    let 
      fun typeDupes ([], _) = ()
        | typeDupes ({name, ty, pos} :: ts, typeNames) = 
          (case List.find (fn tyname => name = tyname) typeNames of
               SOME(_) => (ErrorMsg.error pos ("DUPLICATE: duplicate type definitions in same batch"); ())
             | NONE => (typeDupes (ts, name :: typeNames)); ())
  
      val prelim_tenv = List.foldl(fn ({name,...}, tv') => Symbol.enter(tv',name, T.NAME (name, ref NONE)) ) tenv ts
      (*val temp = print "prelim: "
      val temp = convertFormatPrint prelim_tenv*)
      val tenv = List.foldl(fn ({name, ty, pos}, tv')=>Symbol.enter(tv', name, (transTy prelim_tenv ty)) )tenv ts
      (*val temp = print "stage 2: "
      val temp = convertFormatPrint tenv*)
      (*COME BACK AND ADD SEEN LIST STUFF*)
      fun tenv_update(tenv : tenv) = List.map (fn {name, ty, pos} => case
        Symbol.look(prelim_tenv, name) of 
          SOME (T.NAME(name, r)) => r := SOME(dig (valOf (Symbol.look(tenv, name))) tenv pos [] )) ts

      (*fun set_types (tenv : tenv) = List.map actual_ty ts *)


    in
        typeDupes (ts, []);
        tenv_update tenv;
        (*print "stage 3: ";
        convertFormatPrint tenv;*) 
        {venv = venv, tenv = tenv}
    end
    | trdec (A.VarDec ({name, escape, typ, init, pos})) =
     (case typ of SOME (symbol, pos) => 
     let
      val constraint_type = lookupTy pos symbol tenv
      val init_type = transExp venv tenv init lvl

       val constraintTypePlease = actual_ty tenv constraint_type
       val initTypeWork = actual_ty tenv init_type
       val acc = Translate.allocLocal lvl (!escape)
     in
       Translate.printAccess name acc;
       if checkNil pos (constraint_type, init_type) 
       then (checkTypes tenv pos (constraint_type, init_type); {venv =
       Symbol.enter(venv, name, Env.VarEntry{ty = (constraint_type), readonly = false, access = acc}), tenv = tenv}) 
       else (ErrorMsg.error pos "TYPE: Use of nil as initializing expression without record constraint"; {venv = Symbol.enter(venv, name,
       Env.VarEntry{ty = T.BOTTOM, readonly = false, access = acc}), tenv = tenv})
     end
     
     (*(checkTypes pos (valOf(Symbol.look(tenv, symbol), (transExp venv tenv init) ) ) )*) 
     | NONE =>
         let
           val ty = transExp venv tenv init lvl
           val acc = Translate.allocLocal lvl (!escape)
         in
           Translate.printAccess name acc; 
           if nilInitRule (ty, T.NIL)
           then
            (ErrorMsg.error pos ("TYPE: Use of nil initializing expression without record type"))
           else ();
            {venv = Symbol.enter(venv, name,Env.VarEntry{ ty = (transExp venv tenv init lvl), readonly = false, access = acc}), tenv = tenv}
         end
        )




         (*if checkNil pos ((transExp venv tenv init), T.NIL) then
       (ErrorMsg.error pos "TYPE : Use of nil initializing expression without
       record type"; {venv = Symbol.enter(venv, name, Env.VarEntry{ty =
       T.BOTTOM}), tenv = tenv}) else {venv = Symbol.enter(venv, name,Env.VarEntry{ ty = (transExp venv tenv init)}), tenv = tenv})*)
    (*check iniital, check supply type is given, update valenv appropriately, var x: recordtype := nil*) 
    in
    trdec d
    end

  
  and transTy                (tenv : tenv) (e : A.ty) : T.ty =
  let
    fun trTy( A.NameTy (symbol, pos)) = (valOf (Symbol.look(tenv, symbol))) (*T.NAME(symbol,Symbol.look(tenv,
      symbol))*) (*COME BACK TOTHIS DEF NOT DONE*) 
      | trTy(A.ArrayTy (symbol,pos)) = 
        (case Symbol.look(tenv, symbol) of SOME (ty) => T.ARRAY(ty, ref ())
                                       | NONE => (ErrorMsg.error pos ("TYPE: array type not found"); T.BOTTOM))
      (*T.ARRAY(valOf (Symbol.look(tenv,
      symbol)), ref ())*)
      | trTy (A.RecordTy tyfields) = 
        let
          fun processRecFields ({name, escape, typ, pos}, tyfs) = 
              (case (Symbol.look(tenv, typ)) of
                   SOME (field) => (name, field) :: tyfs
                  | NONE => (ErrorMsg.error pos "SCOPE: undefined type"; (name, T.BOTTOM) :: tyfs))

          val tfs = foldl processRecFields [] tyfields

          (*val tyfs = map(fn {name, escape, typ, pos} => (name, valOf
          * (Symbol.look(tenv, typ))) ) tyfields (*COME BACK TO THIS?????? MIGHT
          * NEED PARTIAL TYDEPENDING ON IF NONE REF*)*) 

        in
           T.RECORD(tfs, ref ())
          (*T.RECORD(tyfs, ref ())*)
        end

  in
    trTy e
  end
  (*(ErrorMsg.error 0 "not implemented"; raise ErrorMsg.Error)*)

  fun transProg e = transExp Env.base_venv Env.base_tenv e
    (Translate.newLevel({parent = Translate.outermost, name = Temp.newlabel(), formals = [true]}))
end

structure Main = 
struct
  fun comp fileName =
    let
      val parsed = (Parse.parse fileName)
    in 
      (FindEscape.findEscape (parsed); Semant.transProg(parsed))
    end
  fun compile (_, [fileName]) = (comp fileName; OS.Process.success)
end


(*structure Main = 
struct
  fun comp fileName = Semant.transProg (Parse.parse fileName)
  fun compile (_, [fileName]) = (comp fileName; OS.Process.success)
end*)
