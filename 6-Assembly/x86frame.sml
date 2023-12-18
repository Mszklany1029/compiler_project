structure X86Frame : FRAME =
struct
    datatype access = InFrame of int | InReg of Temp.temp
    type frame = { name : Temp.label, formals : access list, frameOff : int ref}

    val argOffset : int ref = ref 8
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
        of true => (frameOff := !frameOff - wordSize; InFrame(!frameOff + wordSize)) (*NEED TO ADD FOUR TO FRAME OFF HERE???*)
          | false => (InReg(Temp.newtemp())))

    fun allocFormals (formal_esc : bool) : access =
        (if 
          true
        then 
          (argOffset := wordSize + !argOffset; InFrame(!argOffset - wordSize))
        else
          InReg(Temp.newtemp())
        )

      (*(case formal_esc 
         of true =>  (argOffset := wordSize + !argOffset; InFrame(!argOffset - wordSize))
          | false => (argOffset := wordSize + !argOffset; InFrame(!argOffset - wordSize))
(*(InReg(Temp.newtemp())))*)*)

    fun spillLoc ({frameOff, ...} : frame) : int = 
      (frameOff := !frameOff - wordSize; !frameOff + wordSize)

    fun newFrame {name, formals} = 
      let
        val accList = map allocFormals formals(*foldl allocFormals [] formals*)
        val n = name
        (*val f : frame = { name = Temp.newlabel(), formals = accList, frameOff
        * = 0}*)
      in
        argOffset := 8;
        {name = name (*Temp.newlabel()*), (*EMAIL HALLAHAN NAME GETS NAME????*) formals =
        accList, frameOff = ref (0 - wordSize)}
      end 

    fun printAccess (InFrame w) = ("(InFrame " ^ Int.toString w ^ ")")
      | printAccess (InReg _) = "InReg"

    fun exp (a : access) (exp : Tree.exp) : Tree.exp = 
      (case a of 
            InFrame(i) => Tree.MEM(Tree.BINOP(Tree.PLUS, exp, Tree.CONST(i))) (*<---- POSSIBLE SOURCE OF ISSUES*)
            (*WRAP WHOLE THING IN TREE.MEM?*)
          | InReg(t) => Tree.TEMP(t))

    fun intString i = if i >= 0 then Int.toString i else "-" ^ Int.toString (~i)

    fun prologue ({name, formals, frameOff} : frame) : string = 
      let
        val off = (List.length formals) * wordSize
        val prolog_instrs = concat [ (Symbol.name name) ^ ":\n",
                              "#PROLOGUE BEGIN\n",
                              "push %ebp\n",
                              "mov %esp, %ebp\n", 
                              "sub $" ^ intString(0-(!frameOff (*+4*))) ^ ", %esp\n",
                              (*"sub $" ^ (intString off) ^ ", %esp\n",*) 
                              "push %ebx\n",
                              "push %edi\n",
                              "push %esi\n"
                              ]
      in
        prolog_instrs
      end



    fun epilogue ({name, formals, frameOff} : frame) : string = 
      let
        val eprolog_instrs = concat [
                              "#EPILOGUE BEGIN\n",
                              "pop %esi\n", 
                              "pop %edi\n", 
                              "pop %ebx\n", 
                              "mov %ebp, %esp\n", 
                              "pop %ebp\n", 
                              "ret\n"
                            ]
      in
        eprolog_instrs
      end
      
    

    fun string (lab, stri) : string = 
      let

        fun str_trans (c : char) = 
          case (Char.ord c) 
            of 34 => "\\\""
             | 10 => "\\n"
             | _ => str c
        val convert_str = String.translate(str_trans) stri
        val n = (Symbol.name lab) ^ ":\n"
        val long = ".long " ^ (intString (String.size stri)) ^ "\n"
        val asc = ".ascii \"" ^ convert_str ^ "\" \n"
      in
        n ^ long ^ asc
      end


end
