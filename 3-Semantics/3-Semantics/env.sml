structure Env : ENV =
struct
    type access = unit
    type ty = Types.ty

   datatype enventry = VarEntry of { ty : ty }
                     | FunEntry of { formals : ty list, result : ty }

    val base_tenv = Symbol.enter 
    (Symbol.enter (Symbol.empty, Symbol.symbol "int", Types.INT), Symbol.symbol
    "string", Types.STRING)
    (*(ErrorMsg.error 0 "fill in with builtin types"; raise
    ErrorMsg.Error)*)

    val base_venv = Symbol.empty (*WHY SYMBOL.EMPTY AND NOT ENVENTRY
    SYMBOL.TABLE??*)
      (*(ErrorMsg.error 0 "fill in with builtin functions"; raise
    ErrorMsg.Error)*)
end
