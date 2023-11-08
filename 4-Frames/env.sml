structure Env : ENV =
struct
    type access = unit
    type ty = Types.ty

   datatype enventry = VarEntry of { ty : ty, readonly : bool, access : Translate.access}
                     | FunEntry of { formals : ty list, result : ty, level : Translate.level, label : Temp.label}

    val base_tenv = Symbol.enter 
    (Symbol.enter (Symbol.empty, Symbol.symbol "int", Types.INT), Symbol.symbol
    "string", Types.STRING)
    (*(ErrorMsg.error 0 "fill in with builtin types"; raise
    ErrorMsg.Error)*)

    val base_venv = 
      let
        fun funEntries ((funName, funInf), table) = Symbol.enter (table, Symbol.symbol funName, funInf)
        val std_lib = [
            ("print", FunEntry ({formals = [Types.STRING], result = Types.UNIT, level = Translate.outermost, label = (Temp.namedlabel "print")})),
            ("flush", FunEntry ({formals = [], result = Types.UNIT, level = Translate.outermost, label = (Temp.namedlabel "flush")})),
            ("getchar", FunEntry ({formals = [], result = Types.STRING, level = Translate.outermost, label = (Temp.namedlabel "getchar")})),
            ("ord", FunEntry ({formals = [Types.STRING], result = Types.INT, level = Translate.outermost, label = (Temp.namedlabel "ord")})),
            ("chr", FunEntry ({formals = [Types.INT], result = Types.STRING, level = Translate.outermost, label = (Temp.namedlabel "chr")})),
            ("size", FunEntry ({formals = [Types.STRING], result = Types.INT, level = Translate.outermost, label = (Temp.namedlabel "size")})),
            ("substring", FunEntry ({formals = [Types.STRING, Types.INT, Types.INT], result = Types.STRING, level = Translate.outermost, label = (Temp.namedlabel "substring")})),
            ("concat", FunEntry ({formals = [Types.STRING, Types.STRING], result = Types.STRING, level = Translate.outermost, label = (Temp.namedlabel "concat")})),
            ("not", FunEntry ({formals = [Types.INT], result = Types.INT, level = Translate.outermost, label = (Temp.namedlabel "not")})),   
            ("exit", FunEntry ({formals = [Types.INT], result = Types.UNIT, level = Translate.outermost, label = (Temp.namedlabel "exit")}))
            ]
      in
        foldl funEntries Symbol.empty std_lib
      end
      (*Symbol.empty*) (*WHY SYMBOL.EMPTY AND NOT ENVENTRY
    SYMBOL.TABLE??*)
      (*(ErrorMsg.error 0 "fill in with builtin functions"; raise
    ErrorMsg.Error)*)
end
