(*structure A = Absyn*)
structure T = Types
(*structure Tr = Translate*)
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
 

 
 
  fun lookupTy (pos : A.pos) (ty_sym : A.symbol) (tenv : tenv) : T.ty =
      case Symbol.look (tenv, ty_sym) of SOME (T.NAME (_, r)) =>
              (case !r
                of SOME ty => ty
                  | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type inner" ^ Symbol.name ty_sym); T.BOTTOM))
         (*| SOME (T.RECORD (fs, r)) => ()*)
         | SOME ty => ty
         | NONE => (ErrorMsg.error pos ("SCOPE: Did not recognize type " ^ Symbol.name ty_sym); T.BOTTOM)


  fun transVar (venv : venv) (tenv : tenv) (v : A.var) (lvl : level) : Translate.exp * T.ty =
    let
      fun trVar (A.SimpleVar (symbol, pos)) = 
        (case Symbol.look(venv, symbol)
          of SOME (Env.VarEntry {ty, readonly = _, access }) =>
          (Translate.simpleVar(access, lvl), dig ty tenv pos []) (*dig symbol tenv pos*)
           (*| SOME (Env.FunEntry { formals, result, ...}) => result*)
           (*<-----NOV27 IS ABOVE NEEDED??*)
             | NONE => (ErrorMsg.error pos "SCOPE: no variable found"; (Translate.nilExp, T.BOTTOM)))
       | trVar(A.FieldVar(var, symbol, pos)) = 
        let
          (*val check = print "FIELDVAR IN SEMANT \n"*)
          val indx : int ref = ref 0 (*COME BACK TO THIS ONE*)
          (*WHAT IS EXP HERE!??!??!?!*)
          val re = trVar var (*GET EXPRESSION OUT OF TRVAR VAR*)
          val (vExp, reType) = re
          fun fieldLookup (r : T.ty) ([] : (Symbol.symbol * T.ty) list) (pos : A.pos) : Translate.exp *T.ty  = 
            (ErrorMsg.error pos "SCOPE: Field not found in record instance";(Translate.nilExp, T.BOTTOM))
            | fieldLookup (r) ((symb, ty) :: fs) (pos) = (if (symbol = symb)
                                  then ((Translate.fieldVar(vExp, !indx), ty)) else (indx := !indx + 1; fieldLookup r fs pos))
            
        in 
          (case (actual_ty tenv (dig reType tenv pos []))
            of (r as (T.RECORD (fs, _))) => (fieldLookup r (List.rev fs) pos)
              | _ => (ErrorMsg.error pos "SCOPE: Var is not a record"; (Translate.nilExp, T.BOTTOM)))
        end
      | trVar(A.SubscriptVar(var, exp, pos)) =
        let
          val (tExp, tType) = trVar var (*<-- this one is the pointer*)
          val (indxExp, indxType) = transExp venv tenv exp lvl (Temp.newlabel())
        in 
          (case (actual_ty tenv (dig tType tenv pos [])) of
                (T.ARRAY (ty, _)) => (checkInt pos indxType; (Translate.subscriptVar(tExp, indxExp), ty)) 
                | _ => (ErrorMsg.error pos "SCOPE: Var is not of Arraytype"; (Translate.nilExp, T.BOTTOM)) (*don't know why it's scope and not type but okay*)
          )  
        end
          
    in 
      trVar v
    end

  and transExp (venv : venv) (tenv : tenv) (e : A.exp) (lvl : level) (break_lab : Temp.label) : Tr.exp * T.ty =
    let
       
      fun trexp (A.VarExp var (*(A.SimpleVar (s, pos))*)) =
        let
          val (varXP, varType) = transVar venv tenv var lvl

        in
          (varXP, varType) (*WILL PROBABLY ACTUALLY WANT A TUPLE HERE*)
        end
        | trexp (A.BreakExp pos) = if !break_check = 0 then (ErrorMsg.error pos
        "MISPLACED: illegal use of break"; (Tr.nilExp, T.BOTTOM)) else (Tr.breakExp(break_lab), T.UNIT)
        | trexp (A.IntExp i) = (Tr.intExp i, T.INT)
        | trexp (A.StringExp str) = 
            let
              (*COME BACKKKKKKKK NEED TO CALL PROCENTRYEXIT??????*)
            in 
              (Tr.stringExp(#1 str), T.STRING) (*<-- come back and change?*)
            end
        | trexp (A.NilExp) = (Tr.nilExp, T.NIL)
        | trexp (A.OpExp { left, oper=A.PlusOp, right, pos} : A.exp) =
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in
              checkInt pos leftType; 
              checkInt pos rightType;
              (Tr.opExp(leftExp, A.PlusOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.MinusOp, right, pos} : A.exp) = 
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in
              checkInt pos leftType; 
              checkInt pos rightType;
              (Tr.opExp(leftExp, A.MinusOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.TimesOp, right, pos} : A.exp) = 
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in
              checkInt pos leftType; 
              checkInt pos rightType;
              (Tr.opExp(leftExp, A.TimesOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.DivideOp, right, pos} : A.exp) =
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in
              checkInt pos leftType; 
              checkInt pos rightType;
              (Tr.opExp(leftExp, A.DivideOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.LtOp, right, pos} : A.exp) =
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in 
              checkCompArgs pos (leftType, rightType);
              (Tr.opExp(leftExp, A.LtOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.GtOp, right, pos} : A.exp) =
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in 
              checkCompArgs pos (leftType, rightType);
              (Tr.opExp(leftExp, A.GtOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.LeOp, right, pos} : A.exp) =
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in
              checkCompArgs pos (leftType, rightType);
              (Tr.opExp(leftExp, A.LeOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.GeOp, right, pos} : A.exp) =
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in 
              checkCompArgs pos (leftType, rightType);
              (Tr.opExp(leftExp, A.GeOp, rightExp, leftType), T.INT)
            end
        | trexp (A.OpExp { left, oper = A.EqOp, right, pos} : A.exp) =
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType) = trexp right
            in
              checkEqArgs pos (leftType, rightType);
              (Tr.opExp(leftExp, A.EqOp, rightExp, leftType), T.INT)  
              end
        | trexp (A.OpExp { left, oper = A.NeqOp, right, pos} : A.exp) = 
            let
              val (leftExp, leftType) = trexp left
              val (rightExp, rightType)  = trexp right
            in
              checkEqArgs pos (leftType, rightType);
              (Tr.opExp(leftExp, A.NeqOp, rightExp, leftType), T.INT)
            end
        | trexp (A.IfExp {test, then', else' = NONE, pos} : A.exp) =
          let
            val (thenExp, thenTy) = trexp then'
            val thenty = dig thenTy tenv pos []
            val (testExp, testTy) = trexp test
          in
          checkInt pos testTy;
          (case thenty
            of T.UNIT => (Tr.ifExp(testExp, thenExp, NONE), T.UNIT)
              | _ => (ErrorMsg.error pos "TYPE: if-then returns non unit";
              (Tr.nilExp, T.BOTTOM)))
          end
        | trexp (A.IfExp {test, then', else' = SOME(exp3), pos} : A.exp) =
          let
            val (thenExp, thenTy) = trexp then'
            val (elseExp, elseTy) = trexp exp3
            val thenty = (dig thenTy tenv pos [])
            val elsety = (dig elseTy tenv pos [])
            val (testExp, testTy) = trexp test
          in 
            checkInt pos testTy;
            checkTypes tenv pos (thenty, elsety);
            (Tr.ifExp(testExp, thenExp, SOME(elseExp)), thenty) (*<---11/27 COULD THIS CAUSE ISSUES???*)
          end

        | trexp (A.WhileExp {test, body, pos}: A.exp) =
          let
            val (test_exp, test_ty) = trexp test
            val (body_exp, body_ty) = trexp body
            val testint = (checkInt pos test_ty)
            val brLab = Temp.newlabel()
          in
            break_check := !break_check + 1; (*c:w
            onvertFormatPrint tenv;*)
            (case body_ty 
              of T.UNIT => (Tr.nilExp, T.UNIT)
                | _ => (ErrorMsg.error pos "TYPE: While expression returns non-unit"; (Tr.nilExp, T.BOTTOM)));
                break_check := !break_check -1;
                (Tr.whileExp(brLab, test_exp, body_exp), T.UNIT)
                
          end
        | trexp (A.ForExp {var, escape, lo, hi, body, pos}) = 
        
          let
            val (lores_exp, lores_ty) = (trexp lo)
            val (hires_exp, hires_ty) = (trexp hi)
            val acc = Translate.allocLocal lvl (!escape)
            val venv' = Symbol.enter(venv, var, Env.VarEntry{ty = T.INT, readonly = true, access = acc})
            val iteratorExp = Tr.simpleVar(acc, lvl)
            val bLab = Temp.newlabel()
            val (bodyexp, bodyty) = transExp venv' tenv body lvl bLab 
          in 
            Translate.printAccess var acc;
            checkInt pos lores_ty;
            checkInt pos hires_ty;
            break_check := !break_check + 1;
            (case bodyty (*bodyexp*)
              of T.UNIT => (Tr.nilExp, T.UNIT)
                | _ => (ErrorMsg.error pos "TYPE: For expression returns non-unit"; (Tr.nilExp, T.BOTTOM) ));
            break_check := !break_check - 1;
            (Tr.forExp(bLab, iteratorExp, lores_exp, hires_exp, bodyexp), T.UNIT)
          end
          
        | trexp (A.LetExp {decs = decs, body, pos}) =
          (case decs
            of dec :: ds => (let
                              val {exps = exp2, venv = venv2, tenv = tenv2} = transDec venv tenv dec lvl break_lab
                              val (letexp_exp, letExp_type) = transExp venv2 tenv2 (A.LetExp {decs = ds, body = body, pos = pos}) lvl break_lab
                              (*val test = print "HhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhERE\n"*)
                            in 
                              (Tr.letExp(exp2, letexp_exp), letExp_type) (*COME BACK FOR TRANS DEC STUF!!!!!!!!*)
                              (*transExp venv2 tenv2 (A.LetExp {decs = ds, body =
                              body, pos = pos}) lvl*)
                            end)
              | [] => transExp venv tenv body lvl break_lab(*(let
                          val (letExp_exp, letExp_type) = transExp venv tenv body lvl break_lab
                          (*val callLET = Tr.letExp([], letExp_exp) *)
                       in
                         PrintAbsyn.print(TextIO.stdOut, body);
                         print "PRETREE \n";
                        Printtree.printtree(TextIO.stdOut, Tr.toStm(letExp_exp));
                         print "POSTTREE\n";
                         (letExp_exp, letExp_type)
                       end)*))

                  (*(print "LLLLLLLLLLLLLLLLLLLLLLLLLLLLETT\n"; transExp venv
                  * tenv body lvl break_lab))*) (*COME BACK AND EDIT THIS PARTTT*)
        | trexp (A.SeqExp e) = 
            let
              fun seqList_create lseqs =
                (case lseqs
                  of [] => ([], T.UNIT)
                    | [(a, _)] => 
                        let
                          val (seq_exp, seq_type) = trexp a
                        in
                          ([seq_exp], seq_type)
                        end
                  | (a, _) :: b => 
                      let
                        val(aSeqExp, aSeqType) = trexp a
                        val (bSeqs, btype) = seqList_create b 
                        (*(trexp a; trexp (A.SeqExp b))*)

                      in
                        (aSeqExp :: bSeqs, btype)
                      end)
                val (seqList, stype) = seqList_create e
              (*val seqLength = print(Int.toString(List.length seqList) ^ "\n")
              val n = print "\n"
              val seqP = app (fn l => Printtree.printtree(TextIO.stdOut, Tr.toStm(l))) seqList
              val n2 = print "\n"*)
            in 
              (Tr.seqExp(seqList), stype)
            end

        | trexp (A.CallExp {func, args, pos}) =
          (case Symbol.look (venv, func)
            of SOME (Env.FunEntry {formals, result, level = func_lvl, label} ) => 
                let
                  val argsTupList = map trexp args
                  val (argsExpList, argsTyList) = ListPair.unzip argsTupList
                in
                  (case (List.length argsTyList <> List.length formals) 
                    of true => (ErrorMsg.error pos "SCOPE: functin has incorrect number of args"; (Tr.nilExp, T.BOTTOM)) 
                      | false => (aux_checkTypes tenv pos argsTyList formals; (Tr.callExp(func_lvl, lvl, label, argsExpList), result)))
                end
            (*if(List.length (map trexp args) <> List.length formals) then (ErrorMsg.error pos "SCOPE: function has incorrect number of args"; (Tr.nilExp, T.BOTTOM)) else
              (aux_checkTypes tenv pos (map trexp args) (formals); result)*)
             | _ => (ErrorMsg.error pos "SCOPE: function is out of scope"; (Tr.nilExp, T.BOTTOM)))
        | trexp (A.AssignExp {var, exp, pos}) = 
            let 
              val (assign_exp, assign_var) = transVar venv tenv var lvl
              val (rval_exp, rval_type) = trexp exp
            in
              checkReadOnly pos var venv;
              checkTypes tenv pos (assign_var, rval_type); 
              (Tr.assignExp(assign_exp, rval_exp), T.UNIT)
            end

        | trexp (A.ArrayExp {typ, size, init, pos} ) =
            let
              val (arrSize_exp, arrSize_type) = trexp size
              val (initVal_exp, initVal_type) = trexp init
            in
              checkInt pos arrSize_type;
              (case Symbol.look(tenv, typ) of
                  SOME(t) =>
                  (case actual_ty tenv t of
                      T.ARRAY(at, u) => (checkTypes tenv pos (actual_ty tenv at, actual_ty tenv initVal_type); (Tr.arrayExp(arrSize_exp, initVal_exp), T.ARRAY(at, u)) )
                      | _ => (ErrorMsg.error pos ("TYPE: Not of arrtyp: " ^ Symbol.name typ); (Tr.nilExp, T.BOTTOM) )))
            end
        | trexp (A.RecordExp{fields, typ, pos}) = 
            let
              val (recfields, rectyp) = 
                (case (Symbol.look(tenv, typ)) of 
                     SOME(T.RECORD(rfs, u)) => (rfs, T.RECORD(rfs, u)) (*RETURNING A SYMBOL* TY LIST in RFS*)
                    | NONE => (ErrorMsg.error pos "SCOPE: Record: was never defined"; ([], T.BOTTOM) )
                    | _ => (ErrorMsg.error pos "TYPE: Resulting type of was not record"; ([], T.BOTTOM) ))
                  
              (*val test = convertFormatPrint tenv*)
              fun typArgsEval (rightfield) = 
                let
                  val (rhandsymb, rhandexpression, recfieldpos) = rightfield
                  val (rhandexpression_exp, rhandexpression_ty) = trexp rhandexpression
                in 
                  (*Printtree.printtree(TextIO.stdOut, Tr.toStm(rhandexpression_exp));*)
                  (rhandexpression_exp, rhandexpression_ty)
                end       
              
              fun getTypes (recfield ) = 
                let
                  val (rsymb, rtyp) = recfield
                in 
                  rtyp
                end 
              val fieldargs = (map typArgsEval fields) 
              val (fieldArgs_exp, fieldArgs_ty) = ListPair.unzip fieldargs
              val item = List.hd(fieldArgs_exp)
              (*val pretety = Printtree.printtree(TextIO.stdOut, Tr.toStm(item))*)
              val namestypes = (map getTypes recfields)
              (*val namestypes = (map getTypes fields)*)
              val nstys = List.rev namestypes (*<-------11/28 WHY AM I REVERSING THIS AGAIN??*)
              (*val test = convertFormatPrint tenv*)
            in 
             
              if (List.length fieldArgs_ty) <> (List.length namestypes) then
                (ErrorMsg.error pos "SCOPE: fields unitialized"; T.BOTTOM) else
                  T.UNIT;
              
              (*aux_checkTypes pos namestypes fieldargs;*)
              aux_checkTypes tenv pos fieldArgs_ty nstys;
              (*convertFormatPrint tenv;*)
              (*rectyp <--------- 11/28 RETURNING JUST RECTYPE MEANS WE CAN RETURN T.RECORD, TIME TO CHANGE IT TO ALLOW THE TRANSLATE AS WELL*)

              (Tr.recordExp(fieldArgs_exp), rectyp) (*<--11/28 COME BACK MAKE SURE THIS IS RIGHTTTTTTTTTTTTTTTTT*)


            end
                  
    in
    trexp e
    end
    
  
  and transDec (venv : venv) (tenv : tenv) (d : A.dec) (lvl : level) (break_lab  : Temp.label) : { exps : Tr.exp list, venv : venv, tenv : tenv} =
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
              val paramAccs = List.tl(accs)
              val zipped = ListPair.zip(params, paramAccs)
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
                  (*val chck = app (fn (s, _) =>print (Symbol.name(s) ^ " "))
                  * ars *)
                  (*GOOOD TO PRETTY PRINT FUNCTION BODY*)
                  val (ty_bodyExp, ty_bodyType) = transExp ars_venv tenv body nlvl break_lab
            in
              Tr.procEntryExit({level = nlvl, body = ty_bodyExp});
              (
              if (checkTypes tenv pos (result, ty_bodyType)) = () then () else ErrorMsg.error pos "TYPE: unexpected result type")
            end

          fun checkAllFunEntry ([] : ((Symbol.symbol * Env.enventry) * A.exp * (Symbol.symbol * Env.enventry) list * A.pos) list) = ()
            | checkAllFunEntry (((_, fe), b, ars, pos) :: xs) = (checkFunEntry fe ars b pos; checkAllFunEntry xs)
        in
          (checkFunDupes(fs, []);
        checkAllFunEntry fes); {exps = [], venv = new_venv, tenv = tenv}
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
        {exps = [], venv = venv, tenv = tenv}
    end
    | trdec (A.VarDec ({name, escape, typ, init, pos})) =
     (case typ of SOME (symbol, pos) => 
     let
      val constraint_type = lookupTy pos symbol tenv
      val (init_exp, init_type) = transExp venv tenv init lvl break_lab

       val constraintTypePlease = actual_ty tenv constraint_type
       val initTypeWork = actual_ty tenv init_type
       val acc = Translate.allocLocal lvl (!escape)
       val translate_exp = Tr.assignExp(Tr.simpleVar(acc, lvl), init_exp)
     in
       Translate.printAccess name acc;
       if checkNil pos (constraint_type, init_type) 
       then (checkTypes tenv pos (constraint_type, init_type); 
       {exps = [translate_exp], venv = Symbol.enter(venv, name, Env.VarEntry{ty = (constraint_type), readonly = false, access = acc}), tenv = tenv})    
       else (ErrorMsg.error pos "TYPE: Use of nil as initializing expression without record constraint"; 
       {exps = [translate_exp], venv = Symbol.enter(venv, name, Env.VarEntry{ty = T.BOTTOM, readonly = false, access = acc}), tenv = tenv})
     end
     
     (*(checkTypes pos (valOf(Symbol.look(tenv, symbol), (transExp venv tenv init) ) ) )*) 
     | NONE =>
         let
           val (initExp, initType) = transExp venv tenv init lvl break_lab
           val acc = Translate.allocLocal lvl (!escape)
           val translate_exp = Tr.assignExp(Tr.simpleVar(acc, lvl), initExp)
           (*val spacer = print "TRANSLTE_DEC HERE\n"
           val pr = Printtree.printtree(TextIO.stdOut, Tr.toStm(translate_exp))
           val spac = print "--------\n"*)
         in
           (*Translate.printAccess name acc;*) 
           if nilInitRule (initType, T.NIL)
           then
            (ErrorMsg.error pos ("TYPE: Use of nil initializing expression without record type"))
           else ();
          Translate.printAccess name acc; 
            {exps = [translate_exp], venv = Symbol.enter(venv, name,Env.VarEntry{ ty = initType (*(transExp venv tenv init lvl)*), readonly = false, access = acc}), tenv = tenv}
         end
        )

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

  fun transProg e =
    let
      val lvl = (Translate.newLevel({parent = Translate.outermost, name = Temp.newlabel(), formals = [(*true*)]}))
      val lab = Temp.newlabel()
    in
      Tr.frags := []; 
      transExp Env.base_venv Env.base_tenv e lvl lab
    end

    (*transExp Env.base_venv Env.base_tenv e (Translate.newLevel({parent =
    * Translate.outermost, name = Temp.newlabel(), formals = [(*true*)]}))
    (Temp.newlabel())*)
end

(*structure Main = 
struct
  fun comp fileName =
    let
      val parsed = (Parse.parse fileName)
      val fesc = FindEscape.findEscape (parsed); 
      val (progExp, progTy) = Semant.transProg(parsed)
      val prog = Tr.toStm(progExp)
      fun fragOut f = 
        (print "-----------\n" ;
        case f of 
              Tr.PROC{body, ...} => Printtree.printtree(TextIO.stdOut, body) 
            |Tr.STRING _ => ();
            print "------------\n")
      (*val fraginfo = map fragOut (!Tr.frags)*)
    in 
      (Printtree.printtree(TextIO.stdOut, prog); Interpret.interpret(prog))
    end
  fun compile (_, [fileName]) = (comp fileName; OS.Process.success)
end*)


(*structure Main = 
struct
  fun comp fileName = Semant.transProg (Parse.parse fileName)
  fun compile (_, [fileName]) = (comp fileName; OS.Process.success)
end*)
