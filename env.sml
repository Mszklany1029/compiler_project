structure Env : ENV =
struct
    type access = unit
    type ty = Types.ty

   datatype enventry = VarEntry of { ty : ty }
                     | FunEntry of { formals : ty list, result : ty }

    val base_tenv = Symbol.enter (Symbol.empty, Symbol.symbol "int", Types.INT)

    val base_venv = Symbol.empty
end
