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

fun allocRecords (frame : X86Frame.frame) (ins : interval list) (assem : (Temp.temp A.instr) list) =
    let
    val ilist = ref (nil : (register A.instr) list)
    fun emit x = ilist := x :: !ilist

    and alloc (aenv : alloced TT.table) (* Assignment of temporaries to registers/spilled positions *)
              (useable : register list) (* Registers that have not been assigned *)
              (active : interval list) (* Intervals that are currently active, in order of increasing endpoint *)
              (upcoming : interval list) (* Upcoming intervals, in order of increasing start point*)
              (upIns : (int * Temp.temp A.instr) list) (* Upcoming instructions *) = 
              let
                fun printInts (inter : interval) = print("\n" ^ Temp.makestring(#temp inter) ^ " first: " ^ Int.toString(#first inter) ^ " finish: " ^ Int.toString(#finish inter) ^ " \n") 
                
                fun expireOldIntervals (a_aenv : alloced TT.table) (i_interval : interval) (j :: actInts : interval list) (u : register list) =
                  (case #finish j >= #first i_interval 
                    of true => (j :: actInts, u)
                      | false => (case TT.look(a_aenv, #temp j)
                                    of SOME(Reg(r)) =>
                                      let
                                        val u2 = r :: u
                                      in
                                        expireOldIntervals a_aenv i_interval actInts u2
                                      end
                                    (*(r :: useable; (expireOldIntervals * i_interval actInts useable))*)
                                          | SOME(Spilled(r)) => raise ErrorMsg.Error
                                          | NONE => raise ErrorMsg.Error ) )
                  | expireOldIntervals a_aenv i_interval [] u = ([], u)
                  (* look at thing in active list*)

                fun spillAtInterval (a_aenv : alloced TT.table) (i_interval : interval) (actv : interval list) =
                  let
                    (*val hm = print "IN SPILL??\n"*)
                    (*val interpi = print("\n " ^ Temp.makestring(#temp * i_interval) ^ "\n")*)
                    (*val test = app (printInts) actv*)
                    val spill = List.last actv
                    (*val mmmmm = print "\nmmmmmm\n"*)
                    val spLoc = F.spillLoc(frame)
                    (*val testsas = print "ETEST HERE\n"*) 
                  in
                    case (#finish spill > #finish i_interval)
                      of true => (
                                  let
                                    
                                    val spReg = (case TT.look(a_aenv, #temp spill)
                                         of SOME(Reg(r)) => r
                                          | SOME(Spilled(r)) => (print "SPILLED CASE \n"; raise ErrorMsg.Error)
                                          | NONE => (print "NONE CASE\n"; raise ErrorMsg.Error ))
                                          
                                    val aenv2  = TT.enter(a_aenv, #temp i_interval, Reg(spReg))
                                    val removeLst = List.take (actv, (List.length actv)-1)

                                  in
                                    (insertByFinish i_interval removeLst, TT.enter(aenv2, #temp spill, Spilled(spLoc)))
                                  end
                                  )
                       | false => (actv, TT.enter(a_aenv, #temp i_interval, Spilled(spLoc)) )
                  end

                fun linearScanRegisterAllocation ((a_aenv, a_ctive, [], useable) : alloced TT.table * interval list * interval list * register list) = a_aenv
                  | linearScanRegisterAllocation ((a_aenv, a_ctive, i :: upcoming, u_seable) : alloced TT.table * interval list * interval list * register list) =
                      let
                        val (a_active, u_us) = expireOldIntervals a_aenv i a_ctive u_seable
                         
                        
                      in
                        case u_us
                          of u :: us => 
                            let
                              (*val test = print "U_SEABLE\n"*)
                              val aenv2 = TT.enter(a_aenv, #temp i, Reg(u))
                              val ins = insertByFinish i a_active
                              (*val inReg = print("\n" ^ Temp.makestring(#temp i ) ^ "<-- inREG\n")*)
                              (*val isss = app (printInts) ins*)
                            in
                              linearScanRegisterAllocation(aenv2, ins, upcoming, us)
                            end
                           | [] =>
                               let
                                 (*val test = app (printInts) a_active*)
                                 val (actv, aenv2) = spillAtInterval a_aenv i a_active
                                 (*val se = print "SEP\n"*)
                                 (*val hmmh = app (printInts) actv*)
                               in 
                                 linearScanRegisterAllocation(aenv2, actv, upcoming, [])
                               end
                      end

                  (*(case active 
                          of [] => (case useable
                                      of u :: useable =>
                                        let
                                          val p1 = print "\nEMPTY CASE1\n"
                                          val aenv2 = TT.enter(aenv, #temp i, Reg(u))
                                          val active2 = insertByFinish i active
                                          val p2 = print "\nEMPTY CASE2\n"
                                        in
                                          linearScanRegisterAllocation(aenv2, active2, upcoming, useable)
                                        end
                                      (*(TT.enter(aenv, #temp i, Reg(u)); insertByFinish i active; linearScanRegisterAllocation (active, upcoming, useable) )*)
                                        | [] => raise ErrorMsg.Error) 
                           | a :: active => 
                               let
                                 val (new_act, reg_list) = expireOldIntervals a_aenv i active useable
                               in
                                 case useable 
                                   of [] => 
                                          let
                                            val p3 = print "\nPPPPPPP3\n"
                                            val aenv2 = spillAtInterval i new_act
                                            val p4 = print "\nPPPPP4\n"
                                          in
                                            linearScanRegisterAllocation (aenv2, new_act, upcoming, useable)
                                          end
                                    | u :: useable =>
                                        let
                                          val px = print "\nPPPPPPPXXXXX\n"
                                          val aenv2 = TT.enter(a_aenv, #temp i, Reg(u))
                                          val active2 = insertByFinish i new_act
                                          val py = print "\nPPPPPPPPPPPPPYYYYY\n"
                                        in
                                          linearScanRegisterAllocation(aenv2, active2, upcoming, useable)
                                        end
                               end)*)
                               (*(expireOldIntervals i active useable; 
                                    (case useable 
                                        of [] => ((spillAtInterval i active); linearScanRegisterAllocation (active, upcoming, useable))
                                         | u :: useable => (TT.enter(aenv, #temp i, Reg(u)); insertByFinish i active; linearScanRegisterAllocation (active, upcoming, useable)))))*)


              in
                (*print "\nTEST1\n";*)
                linearScanRegisterAllocation (aenv, active, upcoming, useable)
              end

              fun loadSpilled (a_aenv : alloced TT.table) (r : register) ([] : Temp.temp list) : (int option * alloced TT.table) = (NONE, a_aenv)
                | loadSpilled (a_aenv : alloced TT.table) (r : register) (i :: tlst : Temp.temp list) : (int option * alloced TT.table) =
                let
                  val allcd = TT.look(a_aenv, i) 
                in 
                  case allcd 
                    of SOME(Reg(allcd)) => loadSpilled a_aenv r tlst
                     | SOME(Spilled(allcd)) => (emit(A.OPER{assem = "mov " ^ intString allcd ^ "(%ebp), " ^ r ^ "\n", dst = [], src = []}); (*print(Temp.makestring i);*) (SOME(allcd), TT.enter(a_aenv, i, Reg(r)))) 
                     | NONE =>  (print (Temp.makestring i ^ " <----\n"); raise ErrorMsg.Error)

                end
                
                fun storeSpilled (splld : int option) (r : register) =
                  case splld 
                    of SOME(splld) => emit(A.OPER{assem = "mov " ^ r ^ ", " ^ intString splld ^ "(%ebp) \n", dst = [], src = []})
                     | NONE => ()
                
                fun convertInstruction (a_aenv : alloced TT.table) (A.JUMP inst : (Temp.temp A.instr)) = emit (A.JUMP inst)
                  | convertInstruction (a_aenv : alloced TT.table) (A.LABEL inst : (Temp.temp A.instr)) = emit (A.LABEL inst)
                  | convertInstruction (a_aenv : alloced TT.table) (A.OPER{assem = ass, dst = d, src = s} : (Temp.temp A.instr)) = 
                  let
                    (*val p0 = print "\nHERE???\n"*)
                    fun getRegs tab key = 
                      case TT.look(tab, key) 
                        of SOME(Reg(r)) => r
                         | _ => raise ErrorMsg.Error

                    val combine = s @ d
                    (*val p1 = print "FIRST CHECK\n"*)
                    val (edx_op, new_tab_edx) = loadSpilled a_aenv "%edx" combine
                    (*val pp = print "SECOND TEST\n"*)
                    val (eax_op, new_tab_eax) = loadSpilled new_tab_edx "%eax" combine
                    val emit_edx= emit(A.OPER{assem = ass, dst = map(getRegs new_tab_eax) d  , src = map(getRegs new_tab_eax) s})
                    (*val ptest = print "GEt HERE?\n"*)
                    val edx2 = storeSpilled edx_op "%edx"
                    val eax2 = storeSpilled eax_op "%eax"
  
                  in 
                    ()
                  end
                  
      val scanned_env = alloc initMap initArgs [] ins (ListPair.zip ((List.tabulate (length assem, fn x => x), assem)));
    in
        app (convertInstruction scanned_env) assem;
        (*print "ATESTST";*)
        rev (!ilist)
    end


end
