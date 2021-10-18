circuit lab3task1 :
  module lab3task1 :
    input clock : Clock
    input reset : UInt<1>
    input io_func3 : UInt<3>
    input io_branch : UInt<1>
    input io_arg_x : UInt<32>
    input io_arg_y : UInt<32>
    output io_br_taken : UInt<1>

    node _Greterthan_T = asSInt(io_arg_x) @[lab3task1.scala 28:36]
    node _Greterthan_T_1 = asSInt(io_arg_y) @[lab3task1.scala 28:54]
    node _Greterthan_T_2 = gt(_Greterthan_T, _Greterthan_T_1) @[lab3task1.scala 28:43]
    node Greterthan = mux(_Greterthan_T_2, UInt<1>("h1"), UInt<1>("h0")) @[lab3task1.scala 28:25]
    node _Lessthan_T = asSInt(io_arg_x) @[lab3task1.scala 29:34]
    node _Lessthan_T_1 = asSInt(io_arg_y) @[lab3task1.scala 29:52]
    node _Lessthan_T_2 = lt(_Lessthan_T, _Lessthan_T_1) @[lab3task1.scala 29:41]
    node Lessthan = mux(_Lessthan_T_2, UInt<1>("h1"), UInt<1>("h0")) @[lab3task1.scala 29:23]
    node _Equalto_T = asSInt(io_arg_x) @[lab3task1.scala 30:33]
    node _Equalto_T_1 = asSInt(io_arg_y) @[lab3task1.scala 30:53]
    node _Equalto_T_2 = eq(_Equalto_T, _Equalto_T_1) @[lab3task1.scala 30:40]
    node Equalto = mux(_Equalto_T_2, UInt<1>("h1"), UInt<1>("h0")) @[lab3task1.scala 30:22]
    node _Greterthan_U_T = gt(io_arg_x, io_arg_y) @[lab3task1.scala 32:38]
    node Greterthan_U = mux(_Greterthan_U_T, UInt<1>("h1"), UInt<1>("h0")) @[lab3task1.scala 32:27]
    node _Lessthan_U_T = lt(io_arg_x, io_arg_y) @[lab3task1.scala 33:36]
    node Lessthan_U = mux(_Lessthan_U_T, UInt<1>("h1"), UInt<1>("h0")) @[lab3task1.scala 33:25]
    node _Equalto_U_T = eq(io_arg_x, io_arg_y) @[lab3task1.scala 34:35]
    node Equalto_U = mux(_Equalto_U_T, UInt<1>("h1"), UInt<1>("h0")) @[lab3task1.scala 34:24]
    node _out_T = eq(io_branch, UInt<1>("h1")) @[lab3task1.scala 36:30]
    node _out_T_1 = eq(io_func3, UInt<3>("h0")) @[lab3task1.scala 36:54]
    node _out_T_2 = eq(io_func3, UInt<3>("h1")) @[lab3task1.scala 36:87]
    node _out_T_3 = not(Equalto) @[lab3task1.scala 36:97]
    node _out_T_4 = eq(io_func3, UInt<3>("h4")) @[lab3task1.scala 36:121]
    node _out_T_5 = eq(io_func3, UInt<3>("h5")) @[lab3task1.scala 36:155]
    node _out_T_6 = or(Greterthan, Equalto) @[lab3task1.scala 36:177]
    node _out_T_7 = eq(io_func3, UInt<3>("h6")) @[lab3task1.scala 36:203]
    node _out_T_8 = eq(io_func3, UInt<3>("h7")) @[lab3task1.scala 36:240]
    node _out_T_9 = or(Greterthan_U, Equalto_U) @[lab3task1.scala 36:265]
    node _out_T_10 = mux(_out_T_8, _out_T_9, UInt<1>("h0")) @[lab3task1.scala 36:229]
    node _out_T_11 = mux(_out_T_7, Lessthan_U, _out_T_10) @[lab3task1.scala 36:192]
    node _out_T_12 = mux(_out_T_5, _out_T_6, _out_T_11) @[lab3task1.scala 36:144]
    node _out_T_13 = mux(_out_T_4, Lessthan, _out_T_12) @[lab3task1.scala 36:110]
    node _out_T_14 = mux(_out_T_2, _out_T_3, _out_T_13) @[lab3task1.scala 36:76]
    node _out_T_15 = mux(_out_T_1, Equalto, _out_T_14) @[lab3task1.scala 36:43]
    node out = mux(_out_T, _out_T_15, UInt<1>("h0")) @[lab3task1.scala 36:18]
    io_br_taken <= out @[lab3task1.scala 38:17]
