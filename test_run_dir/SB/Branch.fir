;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Branch : 
  module Branch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip func3 : UInt<3>, flip branch : UInt<1>, flip arg_x : UInt<32>, flip arg_y : UInt<32>, br_taken : UInt<1>}
    
    node _Equalto_T = asSInt(io.arg_x) @[Branch.scala 28:33]
    node _Equalto_T_1 = asSInt(io.arg_y) @[Branch.scala 28:53]
    node _Equalto_T_2 = eq(_Equalto_T, _Equalto_T_1) @[Branch.scala 28:40]
    node Equalto = mux(_Equalto_T_2, UInt<1>("h01"), UInt<1>("h00")) @[Branch.scala 28:22]
    node _Greterthan_T = asSInt(io.arg_x) @[Branch.scala 29:36]
    node _Greterthan_T_1 = asSInt(io.arg_y) @[Branch.scala 29:54]
    node _Greterthan_T_2 = gt(_Greterthan_T, _Greterthan_T_1) @[Branch.scala 29:43]
    node Greterthan = mux(_Greterthan_T_2, UInt<1>("h01"), UInt<1>("h00")) @[Branch.scala 29:25]
    node _Lessthan_T = asSInt(io.arg_x) @[Branch.scala 30:34]
    node _Lessthan_T_1 = asSInt(io.arg_y) @[Branch.scala 30:52]
    node _Lessthan_T_2 = lt(_Lessthan_T, _Lessthan_T_1) @[Branch.scala 30:41]
    node Lessthan = mux(_Lessthan_T_2, UInt<1>("h01"), UInt<1>("h00")) @[Branch.scala 30:23]
    node _Equalto_U_T = eq(io.arg_x, io.arg_y) @[Branch.scala 32:35]
    node Equalto_U = mux(_Equalto_U_T, UInt<1>("h01"), UInt<1>("h00")) @[Branch.scala 32:24]
    node _Greterthan_U_T = gt(io.arg_x, io.arg_y) @[Branch.scala 33:38]
    node Greterthan_U = mux(_Greterthan_U_T, UInt<1>("h01"), UInt<1>("h00")) @[Branch.scala 33:27]
    node _Lessthan_U_T = lt(io.arg_x, io.arg_y) @[Branch.scala 34:36]
    node Lessthan_U = mux(_Lessthan_U_T, UInt<1>("h01"), UInt<1>("h00")) @[Branch.scala 34:25]
    node _out_T = eq(io.branch, UInt<1>("h01")) @[Branch.scala 36:30]
    node _out_T_1 = eq(io.func3, UInt<3>("h00")) @[Branch.scala 36:54]
    node _out_T_2 = eq(io.func3, UInt<3>("h01")) @[Branch.scala 36:87]
    node _out_T_3 = not(Equalto) @[Branch.scala 36:97]
    node _out_T_4 = eq(io.func3, UInt<3>("h04")) @[Branch.scala 36:121]
    node _out_T_5 = eq(io.func3, UInt<3>("h05")) @[Branch.scala 36:155]
    node _out_T_6 = or(Greterthan, Equalto) @[Branch.scala 36:177]
    node _out_T_7 = eq(io.func3, UInt<3>("h06")) @[Branch.scala 36:203]
    node _out_T_8 = eq(io.func3, UInt<3>("h07")) @[Branch.scala 36:240]
    node _out_T_9 = or(Greterthan_U, Equalto_U) @[Branch.scala 36:265]
    node _out_T_10 = mux(_out_T_8, _out_T_9, UInt<1>("h00")) @[Branch.scala 36:229]
    node _out_T_11 = mux(_out_T_7, Lessthan_U, _out_T_10) @[Branch.scala 36:192]
    node _out_T_12 = mux(_out_T_5, _out_T_6, _out_T_11) @[Branch.scala 36:144]
    node _out_T_13 = mux(_out_T_4, Lessthan, _out_T_12) @[Branch.scala 36:110]
    node _out_T_14 = mux(_out_T_2, _out_T_3, _out_T_13) @[Branch.scala 36:76]
    node _out_T_15 = mux(_out_T_1, Equalto, _out_T_14) @[Branch.scala 36:43]
    node out = mux(_out_T, _out_T_15, UInt<1>("h00")) @[Branch.scala 36:18]
    io.br_taken <= out @[Branch.scala 38:17]
    
