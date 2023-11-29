structure X86Frame : FRAME =
struct
    datatype access = InFrame of int | InReg of Temp.temp
    type frame = { name : Temp.label, formals : access list, frameOff : int ref}

    val argOffset : int ref = ref 0
    val wordSize = 4
    val FP = Temp.newtemp() 
    val RV = Temp.newtemp() (*<--- WHAT'S THIS FOORRRR????*)
    fun name (f : frame) : Temp.label = 
      let
        val {name, formals, frameOff} = f
      in 
        name
      end
    fun formals (f : frame) : access list = 
      let
        val {name, formals, frameOff} = f
      in
        formals
      end
    fun allocLocal ({frameOff, ...} : frame) escape : access = (*FIND OUT IF THIS PARAMETER SYNTAX IS OKAY*)
      (case escape
        of true => ((*print "IN HERE IN THE TRUE LOCAL"; print "\n";*) frameOff := !frameOff - wordSize; InFrame(!frameOff + wordSize)) (*NEED TO ADD FOUR TO FRAME OFF HERE???*)
          | false => ((*print "IN HERE IN THE FALSE LOCAL"; print "\n"; print
          (Bool.toString (escape));*)InReg(Temp.newtemp())))
    fun allocFormals (formal_esc : bool) (*(frameAbove : int)*) : access = 
      (case formal_esc 
         of true =>  ((*print "IN TRUE FORM "; print "\n";*) argOffset := wordSize + !argOffset; InFrame(!argOffset - wordSize))
          (*ORDER
         HERE MIGHT BE WRONG???*)
          | false => ((*print "IN FORMAL FALSE"; print "\n";*) InReg(Temp.newtemp()))) (*ORDER*)

    fun newFrame {name, formals} = 
      let
        val accList = map allocFormals formals(*foldl allocFormals [] formals*)
        val n = name
        (*val f : frame = { name = Temp.newlabel(), formals = accList, frameOff
        * = 0}*)
      in
        argOffset := 0;
        {name = name (*Temp.newlabel()*), (*EMAIL HALLAHAN NAME GETS NAME????*) formals =
        accList, frameOff = ref (0 - wordSize)}
      end 

    fun printAccess (InFrame w) = ("(InFrame " ^ Int.toString w ^ ")")
      | printAccess (InReg _) = "InReg"

    fun exp (a : access) (exp : Tree.exp) : Tree.exp = 
      (case a of 
            InFrame(i) => Tree.BINOP(Tree.PLUS, Tree.MEM(exp), Tree.CONST(i)) (*<---- POSSIBLE SOURCE OF ISSUES*)
            (*WRAP WHOLE THING IN TREE.MEM?*)
          | InReg(t) => Tree.TEMP(t))
end
