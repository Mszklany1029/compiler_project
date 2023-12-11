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
              ([] : interval list) (* Upcoming intervals, in order of increasing start point*)
              ([] : (int * Temp.temp A.instr) list) (* Upcoming instructions *)
              : alloced TT.table = 
              let
                fun linearScanRegisterAllocation = raise ErrorMsg.Error

                fun expireOldIntervals (i_interval: interval) (j :: actInts : interval list) (u : register list) =
                  (case #finish j >= #first i_interval 
                    of true => useable
                      | false => (case TT.look(aenv, #temp j)
                                    of SOME(Reg(r)) => (r :: useable;
                                    expireOldIntervals(i_interval actInts useable))
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
                                    TT.enter(aenv, #temp i_interval, Reg(spReg));
                                    TT.enter(aenv, #temp spill, Spilled(spLoc));
                                    insertByFinish(i_interval actv)
                                  )
                       | false => (TT.enter(aenv, #temp i_interval, Spilled(spLoc)) )
                  end
              in 
              end
    in
    alloc initMap initArgs [] ins
        (ListPair.zip ((List.tabulate (length assem, fn x => x), assem)));
    rev (!ilist)
    end


end
