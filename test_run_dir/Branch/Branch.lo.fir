circuit Branch :
  module Branch :
    input clock : Clock
    input reset : UInt<1>
    input io_fnct3 : UInt<3>
    input io_branch : UInt<1>
    input io_arg_x : UInt<32>
    input io_arg_y : UInt<32>
    output io_br_taken : UInt<1>

    node _T = eq(UInt<1>("h1"), io_branch) @[Conditional.scala 37:30]
    node _io_br_taken_T = eq(io_arg_x, io_arg_y) @[Branch.scala 18:24]
    node _io_br_taken_T_1 = eq(io_fnct3, UInt<1>("h0")) @[Branch.scala 18:51]
    node _io_br_taken_T_2 = and(_io_br_taken_T, _io_br_taken_T_1) @[Branch.scala 18:38]
    node _io_br_taken_T_3 = neq(io_arg_x, io_arg_y) @[Branch.scala 19:24]
    node _io_br_taken_T_4 = eq(io_fnct3, UInt<1>("h1")) @[Branch.scala 19:51]
    node _io_br_taken_T_5 = and(_io_br_taken_T_3, _io_br_taken_T_4) @[Branch.scala 19:38]
    node _io_br_taken_T_6 = lt(io_arg_x, io_arg_y) @[Branch.scala 20:24]
    node _io_br_taken_T_7 = eq(io_fnct3, UInt<3>("h4")) @[Branch.scala 20:49]
    node _io_br_taken_T_8 = eq(io_fnct3, UInt<3>("h6")) @[Branch.scala 20:73]
    node _io_br_taken_T_9 = or(_io_br_taken_T_7, _io_br_taken_T_8) @[Branch.scala 20:62]
    node _io_br_taken_T_10 = and(_io_br_taken_T_6, _io_br_taken_T_9) @[Branch.scala 20:36]
    node _io_br_taken_T_11 = geq(io_arg_x, io_arg_y) @[Branch.scala 21:24]
    node _io_br_taken_T_12 = eq(io_fnct3, UInt<3>("h5")) @[Branch.scala 21:50]
    node _io_br_taken_T_13 = eq(io_fnct3, UInt<3>("h7")) @[Branch.scala 21:74]
    node _io_br_taken_T_14 = or(_io_br_taken_T_12, _io_br_taken_T_13) @[Branch.scala 21:63]
    node _io_br_taken_T_15 = and(_io_br_taken_T_11, _io_br_taken_T_14) @[Branch.scala 21:37]
    node _io_br_taken_T_16 = mux(_io_br_taken_T_15, UInt<1>("h1"), UInt<1>("h0")) @[Mux.scala 98:16]
    node _io_br_taken_T_17 = mux(_io_br_taken_T_10, UInt<1>("h1"), _io_br_taken_T_16) @[Mux.scala 98:16]
    node _io_br_taken_T_18 = mux(_io_br_taken_T_5, UInt<1>("h1"), _io_br_taken_T_17) @[Mux.scala 98:16]
    node _io_br_taken_T_19 = mux(_io_br_taken_T_2, UInt<1>("h1"), _io_br_taken_T_18) @[Mux.scala 98:16]
    node _T_1 = eq(UInt<1>("h0"), io_branch) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_1, UInt<1>("h0"), UInt<1>("h0")) @[Conditional.scala 39:67 Branch.scala 31:35 Branch.scala 28:17]
    node _GEN_1 = mux(_T, _io_br_taken_T_19, _GEN_0) @[Conditional.scala 40:58 Branch.scala 30:34]
    io_br_taken <= _GEN_1
