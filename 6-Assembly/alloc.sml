structure Alloc = struct

structure A = Assem
structure F = X86Frame

structure TT = Temp.Table

type interval = Live.interval
type register = string

datatype alloced = Reg of register | Spilled of int

val eax = (X86Frame.RV, "%eax")
val ecx = (Temp.newtemp (), "%ecx")
val edx = (Temp.newtemp (), "%edx")
val ebx = (Temp.newtemp (), "%ebx")
val edi = (Temp.newtemp (), "%edi")
val esi = (Temp.newtemp (), "%esi")

val args = [ebx, edi, esi, ecx]

val initArgs = map (fn (_, x) => x) args

val initMap = 
    let
        fun add ((t, s), table) = Temp.Table.enter(table, t, s)
    in
        foldr add Temp.Table.empty ([(F.FP, Reg "%ebp"), (F.RV, Reg "%eax")])
    end


fun intString i = if i >= 0 then Int.toString i else "-" ^ Int.toString (~i)

fun insertBy (f : 'a * 'a -> bool) (x : 'a) ([] : 'a list) = [x]
  | insertBy f x (y :: ys) =
    if f (x, y) then x :: y :: ys else y :: insertBy f x ys

fun insertByFinish (i : interval) (ins : interval list) =
    insertBy (fn(t1, t2) => #finish t1 < #finish t2) i ins

fun allocRecords (frame : X86Frame.frame) (ins : interval list) (assem : (Temp.temp A.instr) list) : (register A.instr) list =
    let
    val ilist = ref (nil : (register A.instr) list)
    fun emit x = ilist := x :: !ilist

    and alloc (aenv : alloced TT.table) (* Assignment of temporaries to registers/spilled positions *)
              (useable : register list) (* Registers that have not been assigned *)
              (active : interval list) (* Intervals that are currently active, in order of increasing endpoint *)
              (upcoming : interval list) (* Upcoming intervals, in order of increasing start point*)
              (upIns : (int * Temp.temp A.instr) list) (* Upcoming instructions *)
              : alloced TT.table = 
              let

                fun expireOldIntervals (i_interval : interval) (j :: actInts : interval list) (u : register list) =
                  (case #finish j >= #first i_interval 
                    of true => useable
                      | false => (case TT.look(aenv, #temp j)
                                    of SOME(Reg(r)) => (r :: useable;
                                    (expireOldIntervals i_interval actInts useable))
                                          | SOME(Spilled(r)) => raise ErrorMsg.Error
                                          | NONE => raise ErrorMsg.Error ) )
                  (* look at thing in active list*)

                fun spillAtInterval (i_interval : interval) (actv : interval list) =
                  let
                    val spill = List.last actv
                    val spLoc = F.spillLoc(frame)
                    val spReg = (case TT.look(aenv, #temp spill)
                                    of SOME(Reg(r)) => r
                                          | SOME(Spilled(r)) => raise ErrorMsg.Error
                                          | NONE => raise ErrorMsg.Error ) 
                  in
                    case (#finish spill > #finish i_interval)
                      of true => (
                                  let
                                    val aenv2  = TT.enter(aenv, #temp i_interval, Reg(spReg))

                                  in
                                    insertByFinish i_interval actv;
                                    TT.enter(aenv2, #temp spill, Spilled(spLoc))
                                  end
                                  )
                       | false => (TT.enter(aenv, #temp i_interval, Spilled(spLoc)) )
                  end

                fun linearScanRegisterAllocation ((active, [], useable) : interval list * interval list * register list) = aenv
                  | linearScanRegisterAllocation ((active, i :: upcoming, useable) : interval list * interval list * register list) =
                        (case active 
                          of [] => (case useable
                                      of u :: useable => (TT.enter(aenv, #temp i, Reg(u)); insertByFinish i active; linearScanRegisterAllocation (active, upcoming, useable) )
                                        | [] => raise ErrorMsg.Error) 
                           | a :: active => (expireOldIntervals i active useable; 
                                    (case useable 
                                        of [] => ((spillAtInterval i active); linearScanRegisterAllocation (active, upcoming, useable))
                                         | u :: useable => (TT.enter(aenv, #temp i, Reg(u)); insertByFinish i active; linearScanRegisterAllocation (active, upcoming, useable)))))

                fun loadSpilled (a_aenv : alloced TT.table) (r : register) (i :: tlst : Temp.temp list) : (int option * alloced TT.table) =
                  let
                    val allcd = TT.look(a_aenv, i) 
                  in 
                    case allcd 
                      of SOME(Reg(allcd)) => loadSpilled a_aenv r tlst
                       | SOME(Spilled(allcd)) => (emit(A.OPER{assem = "mov " ^ intString allcd ^ "(%ebp), " ^ r ^ "\n", dst = [], src = []}); (SOME(allcd), TT.enter(a_aenv, i, Reg(r)))) 
                       | NONE => raise ErrorMsg.Error
                  end
                
                fun storeSpilled (splld : int option) (r : register) =
                  case splld 
                    of SOME(splld) => emit(A.OPER{assem = "mov " r ^ ", " ^ intString allcd ^ "(%ebp) \n", dst = [], src = []})
                     | NONE => ()

                fun convertInstruction (a_aenv : alloced TT.table) (A.OPER{assem = ass, dst = d, src = s} : (Temp.temp A.instr)) = 
                  let
                    fun getRegs tab key = 
                      case Table.look(tab, key) 
                        of SOME(Reg(r)) => r
                         | _ => raise ErrorMsg.Error



                    val combine = d @ s
                    val (edx_op, new_tab_edx) = loadSpilled a_aenv "%edx" combine
                    val (eax_op, new_tab_eax) = loadSpilled new_tab_edx "%eax" combine
                    val emit_edx= emit(A.OPER{assem = ass, dst = map(getRegs new_tab_eax) d  , src = map(getRegs new_tab_eax) s})
                    val edx2 = storeSpilled edx_op "%edx"
                    val eax2 = storeSpilled eax_op "%eax"
  
                  in 
                    ()
                  end
                  

              in
                linearScanRegisterAllocation (active, upcoming, useable)
              end
    in
    alloc initMap initArgs [] ins
        (ListPair.zip ((List.tabulate (length assem, fn x => x), assem)));
    rev (!ilist)
    end


end
