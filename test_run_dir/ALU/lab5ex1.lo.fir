circuit lab5ex1 :
  module lab5ex1 :
    input clock : Clock
    input reset : UInt<1>
    input io_alu_op : UInt<32>
    input io_arg_x : UInt<32>
    input io_arg_y : UInt<32>
    output io_alu_out : UInt<32>

    node _T = eq(io_alu_op, UInt<1>("h0")) @[lab5ex1.scala 20:22]
    node _io_alu_out_T = or(io_arg_x, io_arg_y) @[lab5ex1.scala 21:32]
    node _T_1 = eq(io_alu_op, UInt<1>("h1")) @[lab5ex1.scala 23:29]
    node _io_alu_out_T_1 = and(io_arg_x, io_arg_y) @[lab5ex1.scala 24:32]
    node _T_2 = eq(io_alu_op, UInt<2>("h2")) @[lab5ex1.scala 26:29]
    node _io_alu_out_T_2 = xor(io_arg_x, io_arg_y) @[lab5ex1.scala 27:32]
    node _T_3 = eq(io_alu_op, UInt<3>("h6")) @[lab5ex1.scala 29:29]
    node _io_alu_out_T_3 = add(io_arg_x, io_arg_y) @[lab5ex1.scala 30:32]
    node _io_alu_out_T_4 = tail(_io_alu_out_T_3, 1) @[lab5ex1.scala 30:32]
    node _T_4 = eq(io_alu_op, UInt<2>("h3")) @[lab5ex1.scala 32:29]
    node _io_alu_out_T_5 = sub(io_arg_x, io_arg_y) @[lab5ex1.scala 33:32]
    node _io_alu_out_T_6 = tail(_io_alu_out_T_5, 1) @[lab5ex1.scala 33:32]
    node _T_5 = eq(io_alu_op, UInt<3>("h4")) @[lab5ex1.scala 35:29]
    node _io_alu_out_T_7 = bits(io_arg_y, 4, 0) @[lab5ex1.scala 36:43]
    node _io_alu_out_T_8 = dshl(io_arg_x, _io_alu_out_T_7) @[lab5ex1.scala 36:32]
    node _T_6 = eq(io_alu_op, UInt<3>("h5")) @[lab5ex1.scala 38:29]
    node _io_alu_out_T_9 = bits(io_arg_y, 4, 0) @[lab5ex1.scala 39:43]
    node _io_alu_out_T_10 = dshr(io_arg_x, _io_alu_out_T_9) @[lab5ex1.scala 39:32]
    node _T_7 = eq(io_alu_op, UInt<3>("h7")) @[lab5ex1.scala 41:29]
    node _io_alu_out_T_11 = asSInt(io_arg_x) @[lab5ex1.scala 42:34]
    node _io_alu_out_T_12 = bits(io_arg_y, 4, 0) @[lab5ex1.scala 42:52]
    node _io_alu_out_T_13 = dshl(_io_alu_out_T_11, _io_alu_out_T_12) @[lab5ex1.scala 42:41]
    node _io_alu_out_T_14 = asUInt(_io_alu_out_T_13) @[lab5ex1.scala 42:67]
    node _T_8 = eq(io_alu_op, UInt<4>("h8")) @[lab5ex1.scala 44:28]
    node _io_alu_out_T_15 = asSInt(io_arg_x) @[lab5ex1.scala 45:32]
    node _io_alu_out_T_16 = asSInt(io_arg_y) @[lab5ex1.scala 45:50]
    node _io_alu_out_T_17 = lt(_io_alu_out_T_15, _io_alu_out_T_16) @[lab5ex1.scala 45:39]
    node _T_9 = eq(io_alu_op, UInt<4>("ha")) @[lab5ex1.scala 47:29]
    node _T_10 = eq(io_alu_op, UInt<4>("hb")) @[lab5ex1.scala 50:28]
    node _T_11 = eq(io_alu_op, UInt<4>("h9")) @[lab5ex1.scala 53:29]
    node _io_alu_out_T_18 = lt(io_arg_x, io_arg_y) @[lab5ex1.scala 54:32]
    node _GEN_0 = mux(_T_11, _io_alu_out_T_18, UInt<1>("h0")) @[lab5ex1.scala 53:37 lab5ex1.scala 54:20 lab5ex1.scala 57:24]
    node _GEN_1 = mux(_T_10, io_arg_y, _GEN_0) @[lab5ex1.scala 50:38 lab5ex1.scala 51:20]
    node _GEN_2 = mux(_T_9, io_arg_x, _GEN_1) @[lab5ex1.scala 47:38 lab5ex1.scala 48:20]
    node _GEN_3 = mux(_T_8, _io_alu_out_T_17, _GEN_2) @[lab5ex1.scala 44:37 lab5ex1.scala 45:20]
    node _GEN_4 = mux(_T_7, _io_alu_out_T_14, _GEN_3) @[lab5ex1.scala 41:37 lab5ex1.scala 42:20]
    node _GEN_5 = mux(_T_6, _io_alu_out_T_10, _GEN_4) @[lab5ex1.scala 38:37 lab5ex1.scala 39:20]
    node _GEN_6 = mux(_T_5, _io_alu_out_T_8, _GEN_5) @[lab5ex1.scala 35:37 lab5ex1.scala 36:20]
    node _GEN_7 = mux(_T_4, _io_alu_out_T_6, _GEN_6) @[lab5ex1.scala 32:37 lab5ex1.scala 33:20]
    node _GEN_8 = mux(_T_3, _io_alu_out_T_4, _GEN_7) @[lab5ex1.scala 29:37 lab5ex1.scala 30:20]
    node _GEN_9 = mux(_T_2, _io_alu_out_T_2, _GEN_8) @[lab5ex1.scala 26:37 lab5ex1.scala 27:20]
    node _GEN_10 = mux(_T_1, _io_alu_out_T_1, _GEN_9) @[lab5ex1.scala 23:37 lab5ex1.scala 24:20]
    node _GEN_11 = mux(_T, _io_alu_out_T, _GEN_10) @[lab5ex1.scala 20:30 lab5ex1.scala 21:20]
    io_alu_out <= bits(_GEN_11, 31, 0)
