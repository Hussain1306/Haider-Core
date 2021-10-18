circuit lab4task1 :
  module lab4task1 :
    input clock : Clock
    input reset : UInt<1>
    input io_func3 : UInt<3>
    input io_branch : UInt<1>
    input io_arg_x : UInt<32>
    input io_arg_y : UInt<32>
    output io_br_taken : UInt<1>

    node _Equalto_T = asSInt(io_arg_x) @[lab4task1.scala 28:33]
    node _Equalto_T_1 = asSInt(io_arg_y) @[lab4task1.scala 28:53]
    node _Equalto_T_2 = eq(_Equalto_T, _Equalto_T_1) @[lab4task1.scala 28:40]
    node Equalto = mux(_Equalto_T_2, UInt<1>("h1"), UInt<1>("h0")) @[lab4task1.scala 28:22]
    node _Greterthan_T = asSInt(io_arg_x) @[lab4task1.scala 29:36]
    node _Greterthan_T_1 = asSInt(io_arg_y) @[lab4task1.scala 29:54]
    node _Greterthan_T_2 = gt(_Greterthan_T, _Greterthan_T_1) @[lab4task1.scala 29:43]
    node Greterthan = mux(_Greterthan_T_2, UInt<1>("h1"), UInt<1>("h0")) @[lab4task1.scala 29:25]
    node _Lessthan_T = asSInt(io_arg_x) @[lab4task1.scala 30:34]
    node _Lessthan_T_1 = asSInt(io_arg_y) @[lab4task1.scala 30:52]
    node _Lessthan_T_2 = lt(_Lessthan_T, _Lessthan_T_1) @[lab4task1.scala 30:41]
    node Lessthan = mux(_Lessthan_T_2, UInt<1>("h1"), UInt<1>("h0")) @[lab4task1.scala 30:23]
    node _Equalto_U_T = eq(io_arg_x, io_arg_y) @[lab4task1.scala 32:35]
    node Equalto_U = mux(_Equalto_U_T, UInt<1>("h1"), UInt<1>("h0")) @[lab4task1.scala 32:24]
    node _Greterthan_U_T = gt(io_arg_x, io_arg_y) @[lab4task1.scala 33:38]
    node Greterthan_U = mux(_Greterthan_U_T, UInt<1>("h1"), UInt<1>("h0")) @[lab4task1.scala 33:27]
    node _Lessthan_U_T = lt(io_arg_x, io_arg_y) @[lab4task1.scala 34:36]
    node Lessthan_U = mux(_Lessthan_U_T, UInt<1>("h1"), UInt<1>("h0")) @[lab4task1.scala 34:25]
    node _out_T = eq(io_branch, UInt<1>("h1")) @[lab4task1.scala 36:30]
    node _out_T_1 = eq(io_func3, UInt<3>("h0")) @[lab4task1.scala 36:54]
    node _out_T_2 = eq(io_func3, UInt<3>("h1")) @[lab4task1.scala 36:87]
    node _out_T_3 = not(Equalto) @[lab4task1.scala 36:97]
    node _out_T_4 = eq(io_func3, UInt<3>("h4")) @[lab4task1.scala 36:121]
    node _out_T_5 = eq(io_func3, UInt<3>("h5")) @[lab4task1.scala 36:155]
    node _out_T_6 = or(Greterthan, Equalto) @[lab4task1.scala 36:177]
    node _out_T_7 = eq(io_func3, UInt<3>("h6")) @[lab4task1.scala 36:203]
    node _out_T_8 = eq(io_func3, UInt<3>("h7")) @[lab4task1.scala 36:240]
    node _out_T_9 = or(Greterthan_U, Equalto_U) @[lab4task1.scala 36:265]
    node _out_T_10 = mux(_out_T_8, _out_T_9, UInt<1>("h0")) @[lab4task1.scala 36:229]
    node _out_T_11 = mux(_out_T_7, Lessthan_U, _out_T_10) @[lab4task1.scala 36:192]
    node _out_T_12 = mux(_out_T_5, _out_T_6, _out_T_11) @[lab4task1.scala 36:144]
    node _out_T_13 = mux(_out_T_4, Lessthan, _out_T_12) @[lab4task1.scala 36:110]
    node _out_T_14 = mux(_out_T_2, _out_T_3, _out_T_13) @[lab4task1.scala 36:76]
    node _out_T_15 = mux(_out_T_1, Equalto, _out_T_14) @[lab4task1.scala 36:43]
    node out = mux(_out_T, _out_T_15, UInt<1>("h0")) @[lab4task1.scala 36:18]
    io_br_taken <= out @[lab4task1.scala 38:17]
