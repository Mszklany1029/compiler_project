structure X86Frame : FRAME =
struct
    datatype access = InFrame of int | InReg of Temp.temp
    type frame = { name : Temp.label, formals : access list, frameOff : int ref}

    val argOffset : int ref = ref 0
    val wordSize = 4
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
          | false => InReg(Temp.newtemp()))
    fun allocFormals (formal_esc : bool) (*(frameAbove : int)*) : access = 
      (case formal_esc 
         of true => 
          let
            (*val argOffset : int ref = ref 0*)
          in
            (argOffset := wordSize + !argOffset; InFrame(!argOffset - wordSize)) 
          end
          (*ORDER
         HERE MIGHT BE WRONG???*)
          | false =>  
              (*let
                 val regTemp = Temp.newtemp
              in
                InReg(regTemp)
              end*)InReg(Temp.newtemp())) (*ORDER*)

    fun newFrame {name, formals} = 
      let
        val accList = map allocFormals formals(*foldl allocFormals [] formals*)
        val n = name
        (*val f : frame = { name = Temp.newlabel(), formals = accList, frameOff
        * = 0}*)
      in
        argOffset := 0;
        {name = Temp.newlabel(), (*EMAIL HALLAHAN NAME GETS NAME????*) formals =
        accList, frameOff = ref (0 - wordSize)}
      end 

    fun printAccess (InFrame w) = ("(InFrame " ^ Int.toString w ^ ")")
      | printAccess (InReg _) = "InReg"
end
