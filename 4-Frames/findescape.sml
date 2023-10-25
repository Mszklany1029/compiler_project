structure Tr = Translate
structure A = Absyn
structure S = Symbol

structure FindEscape : sig val findEscape : Absyn.exp -> unit end =
struct
    type depth = int
    type escEnv = (depth * bool ref) Symbol.table

    fun traverseVar (env : escEnv) (d : depth) (v : A.var) : unit = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)

    and traverseExp (env : escEnv) (d : depth) (e : A.exp) : unit = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)
    
    and traverseDec (env : escEnv) (d : depth) (dec : A.dec) : escEnv = (ErrorMsg.error 0 "todo"; raise ErrorMsg.Error)

    fun findEscape (prog : Absyn.exp) : unit =  traverseExp Symbol.empty 0 prog
end