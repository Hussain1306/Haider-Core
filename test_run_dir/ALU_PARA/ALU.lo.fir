circuit ALU :
  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_alu_op : UInt<5>
    input io_arg_x : SInt<32>
    input io_arg_y : SInt<32>
    output io_alu_branch : UInt<1>
    output io_alu_out : SInt<32>

    node _T = eq(io_alu_op, UInt<1>("h0")) @[ALU.scala 18:22]
    node _io_alu_out_T = add(io_arg_x, io_arg_y) @[ALU.scala 19:32]
    node _io_alu_out_T_1 = tail(_io_alu_out_T, 1) @[ALU.scala 19:32]
    node _io_alu_out_T_2 = asSInt(_io_alu_out_T_1) @[ALU.scala 19:32]
    node _T_1 = eq(io_alu_op, UInt<1>("h1")) @[ALU.scala 21:27]
    node _io_alu_out_T_3 = sub(io_arg_x, io_arg_y) @[ALU.scala 22:32]
    node _io_alu_out_T_4 = tail(_io_alu_out_T_3, 1) @[ALU.scala 22:32]
    node _io_alu_out_T_5 = asSInt(_io_alu_out_T_4) @[ALU.scala 22:32]
    node _T_2 = eq(io_alu_op, UInt<2>("h2")) @[ALU.scala 24:27]
    node _io_alu_out_T_6 = and(io_arg_x, io_arg_y) @[ALU.scala 25:32]
    node _io_alu_out_T_7 = asSInt(_io_alu_out_T_6) @[ALU.scala 25:32]
    node _T_3 = eq(io_alu_op, UInt<2>("h3")) @[ALU.scala 27:27]
    node _io_alu_out_T_8 = or(io_arg_x, io_arg_y) @[ALU.scala 28:33]
    node _io_alu_out_T_9 = asSInt(_io_alu_out_T_8) @[ALU.scala 28:33]
    node _T_4 = eq(io_alu_op, UInt<3>("h4")) @[ALU.scala 30:27]
    node _io_alu_out_T_10 = xor(io_arg_x, io_arg_y) @[ALU.scala 31:33]
    node _io_alu_out_T_11 = asSInt(_io_alu_out_T_10) @[ALU.scala 31:33]
    node _T_5 = eq(io_alu_op, UInt<3>("h5")) @[ALU.scala 33:27]
    node _io_alu_out_T_12 = bits(io_arg_y, 4, 0) @[ALU.scala 34:43]
    node _io_alu_out_T_13 = dshr(io_arg_x, _io_alu_out_T_12) @[ALU.scala 34:32]
    node _T_6 = eq(io_alu_op, UInt<3>("h6")) @[ALU.scala 36:27]
    node _io_alu_out_T_14 = bits(io_arg_y, 4, 0) @[ALU.scala 37:43]
    node _io_alu_out_T_15 = dshr(io_arg_x, _io_alu_out_T_14) @[ALU.scala 37:32]
    node _T_7 = eq(io_alu_op, UInt<3>("h7")) @[ALU.scala 39:27]
    node _io_alu_out_T_16 = bits(io_arg_y, 4, 0) @[ALU.scala 40:43]
    node _io_alu_out_T_17 = dshl(io_arg_x, _io_alu_out_T_16) @[ALU.scala 40:32]
    node _T_8 = eq(io_alu_op, UInt<4>("ha")) @[ALU.scala 49:27]
    node _T_9 = eq(io_alu_op, UInt<4>("hb")) @[ALU.scala 52:27]
    node _GEN_0 = mux(_T_9, io_arg_y, asSInt(UInt<1>("h0"))) @[ALU.scala 52:37 ALU.scala 53:20 ALU.scala 59:24]
    node _GEN_1 = mux(_T_8, io_arg_x, _GEN_0) @[ALU.scala 49:36 ALU.scala 50:20]
    node _GEN_2 = mux(_T_7, _io_alu_out_T_17, _GEN_1) @[ALU.scala 39:35 ALU.scala 40:20]
    node _GEN_3 = mux(_T_6, _io_alu_out_T_15, _GEN_2) @[ALU.scala 36:35 ALU.scala 37:20]
    node _GEN_4 = mux(_T_5, _io_alu_out_T_13, _GEN_3) @[ALU.scala 33:35 ALU.scala 34:20]
    node _GEN_5 = mux(_T_4, _io_alu_out_T_11, _GEN_4) @[ALU.scala 30:35 ALU.scala 31:21]
    node _GEN_6 = mux(_T_3, _io_alu_out_T_9, _GEN_5) @[ALU.scala 27:35 ALU.scala 28:21]
    node _GEN_7 = mux(_T_2, _io_alu_out_T_7, _GEN_6) @[ALU.scala 24:35 ALU.scala 25:20]
    node _GEN_8 = mux(_T_1, _io_alu_out_T_5, _GEN_7) @[ALU.scala 21:35 ALU.scala 22:20]
    node _GEN_9 = mux(_T, _io_alu_out_T_2, _GEN_8) @[ALU.scala 18:30 ALU.scala 19:20]
    node _T_10 = bits(io_alu_op, 4, 3) @[ALU.scala 61:19]
    node _T_11 = eq(_T_10, UInt<2>("h2")) @[ALU.scala 61:25]
    node _T_12 = eq(io_alu_out, asSInt(UInt<2>("h1"))) @[ALU.scala 61:53]
    node _T_13 = and(_T_11, _T_12) @[ALU.scala 61:38]
    node _GEN_10 = mux(_T_13, UInt<1>("h1"), UInt<1>("h0")) @[ALU.scala 61:62 ALU.scala 62:27 ALU.scala 64:27]
    io_alu_branch <= _GEN_10
    io_alu_out <= asSInt(bits(_GEN_9, 31, 0))
