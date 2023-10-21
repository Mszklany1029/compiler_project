structure Env : ENV =
struct
    type access = unit
    type ty = Types.ty

   datatype enventry = VarEntry of { ty : ty, readonly : bool }
                     | FunEntry of { formals : ty list, result : ty }

    val base_tenv = Symbol.enter 
    (Symbol.enter (Symbol.empty, Symbol.symbol "int", Types.INT), Symbol.symbol
    "string", Types.STRING)
    (*(ErrorMsg.error 0 "fill in with builtin types"; raise
    ErrorMsg.Error)*)

    val base_venv = 
      let
        fun funEntries ((funName, funInf), table) = Symbol.enter (table, Symbol.symbol funName, funInf)
        val std_lib = [
            ("print", FunEntry ({formals = [Types.STRING], result = Types.UNIT})),
            ("flush", FunEntry ({formals = [], result = Types.UNIT})),
            ("getchar", FunEntry ({formals = [], result = Types.STRING})),
            ("ord", FunEntry ({formals = [Types.STRING], result = Types.INT})),
            ("chr", FunEntry ({formals = [Types.INT], result = Types.STRING})),
            ("size", FunEntry ({formals = [Types.STRING], result = Types.INT})),
            ("substring", FunEntry ({formals = [Types.STRING, Types.INT, Types.INT], result = Types.STRING})),
            ("concat", FunEntry ({formals = [Types.STRING, Types.STRING], result = Types.STRING})),
            ("not", FunEntry ({formals = [Types.INT], result = Types.INT})),   
            ("exit", FunEntry ({formals = [Types.INT], result = Types.UNIT}))
            ]
      in
        foldl funEntries Symbol.empty std_lib
      end
      (*Symbol.empty*) (*WHY SYMBOL.EMPTY AND NOT ENVENTRY
    SYMBOL.TABLE??*)
      (*(ErrorMsg.error 0 "fill in with builtin functions"; raise
    ErrorMsg.Error)*)
end
