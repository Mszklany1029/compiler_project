structure Env : ENV =
struct
    type access = unit
    type ty = Types.ty

   datatype enventry = VarEntry of { ty : ty }
                     | FunEntry of { formals : ty list, result : ty }

    val base_tenv = (ErrorMsg.error 0 "fill in with builtin types"; raise ErrorMsg.Error)

    val base_venv = (ErrorMsg.error 0 "fill in with builtin functions"; raise ErrorMsg.Error)
end