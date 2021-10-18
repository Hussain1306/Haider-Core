circuit lab3task1 :
  module lab3task1 :
    input clock : Clock
    input reset : UInt<1>
    input io_funct3 : UInt<3>
    input io_branch : UInt<1>
    input io_arg_x : UInt<32>
    input io_arg_y : UInt<32>
    output io_br_taken : UInt<1>

    node _out_T = eq(io_funct3, UInt<1>("h0")) @[lab3task1.scala 17:29]
    node _out_T_1 = asSInt(io_arg_x) @[lab3task1.scala 17:47]
    node _out_T_2 = asSInt(io_arg_y) @[lab3task1.scala 17:67]
    node _out_T_3 = eq(_out_T_1, _out_T_2) @[lab3task1.scala 17:54]
    node _out_T_4 = eq(io_funct3, UInt<1>("h1")) @[lab3task1.scala 18:19]
    node _out_T_5 = asSInt(io_arg_x) @[lab3task1.scala 18:37]
    node _out_T_6 = asSInt(io_arg_y) @[lab3task1.scala 18:57]
    node _out_T_7 = neq(_out_T_5, _out_T_6) @[lab3task1.scala 18:44]
    node _out_T_8 = eq(io_funct3, UInt<2>("h3")) @[lab3task1.scala 19:19]
    node _out_T_9 = asSInt(io_arg_y) @[lab3task1.scala 19:37]
    node _out_T_10 = asSInt(io_arg_y) @[lab3task1.scala 19:55]
    node _out_T_11 = lt(_out_T_9, _out_T_10) @[lab3task1.scala 19:44]
    node _out_T_12 = eq(io_funct3, UInt<3>("h5")) @[lab3task1.scala 20:19]
    node _out_T_13 = asSInt(io_arg_x) @[lab3task1.scala 20:37]
    node _out_T_14 = asSInt(io_arg_y) @[lab3task1.scala 20:56]
    node _out_T_15 = geq(_out_T_13, _out_T_14) @[lab3task1.scala 20:44]
    node _out_T_16 = eq(io_funct3, UInt<3>("h6")) @[lab3task1.scala 21:19]
    node _out_T_17 = lt(io_arg_x, io_arg_y) @[lab3task1.scala 21:37]
    node _out_T_18 = eq(io_funct3, UInt<3>("h7")) @[lab3task1.scala 22:19]
    node _out_T_19 = geq(io_arg_x, io_arg_y) @[lab3task1.scala 22:37]
    node _out_T_20 = mux(_out_T_18, _out_T_19, UInt<1>("h0")) @[lab3task1.scala 22:8]
    node _out_T_21 = mux(_out_T_16, _out_T_17, _out_T_20) @[lab3task1.scala 21:8]
    node _out_T_22 = mux(_out_T_12, _out_T_15, _out_T_21) @[lab3task1.scala 20:8]
    node _out_T_23 = mux(_out_T_8, _out_T_11, _out_T_22) @[lab3task1.scala 19:8]
    node _out_T_24 = mux(_out_T_4, _out_T_7, _out_T_23) @[lab3task1.scala 18:8]
    node out = mux(_out_T, _out_T_3, _out_T_24) @[lab3task1.scala 17:18]
    node _io_br_taken_T = and(out, io_branch) @[lab3task1.scala 24:24]
    io_br_taken <= _io_br_taken_T @[lab3task1.scala 24:17]
