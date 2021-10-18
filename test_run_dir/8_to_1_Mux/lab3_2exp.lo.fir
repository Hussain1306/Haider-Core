circuit lab3_2exp :
  module lab3_2exp :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<8>
    input io_s0 : UInt<1>
    input io_s1 : UInt<1>
    input io_s2 : UInt<1>
    output io_result : UInt<1>

    node _m4_to_1_a_T = bits(io_a, 3, 3) @[lab3_2exp.scala 16:47]
    node _m4_to_1_a_T_1 = bits(io_a, 2, 2) @[lab3_2exp.scala 16:56]
    node _m4_to_1_a_T_2 = mux(io_s0, _m4_to_1_a_T, _m4_to_1_a_T_1) @[lab3_2exp.scala 16:35]
    node _m4_to_1_a_T_3 = bits(io_a, 1, 1) @[lab3_2exp.scala 16:77]
    node _m4_to_1_a_T_4 = bits(io_a, 0, 0) @[lab3_2exp.scala 16:86]
    node _m4_to_1_a_T_5 = mux(io_s0, _m4_to_1_a_T_3, _m4_to_1_a_T_4) @[lab3_2exp.scala 16:65]
    node m4_to_1_a = mux(io_s1, _m4_to_1_a_T_2, _m4_to_1_a_T_5) @[lab3_2exp.scala 16:24]
    node _m4_to_1_b_T = bits(io_a, 7, 7) @[lab3_2exp.scala 17:47]
    node _m4_to_1_b_T_1 = bits(io_a, 6, 6) @[lab3_2exp.scala 17:56]
    node _m4_to_1_b_T_2 = mux(io_s0, _m4_to_1_b_T, _m4_to_1_b_T_1) @[lab3_2exp.scala 17:35]
    node _m4_to_1_b_T_3 = bits(io_a, 5, 5) @[lab3_2exp.scala 17:77]
    node _m4_to_1_b_T_4 = bits(io_a, 4, 4) @[lab3_2exp.scala 17:86]
    node _m4_to_1_b_T_5 = mux(io_s0, _m4_to_1_b_T_3, _m4_to_1_b_T_4) @[lab3_2exp.scala 17:65]
    node m4_to_1_b = mux(io_s1, _m4_to_1_b_T_2, _m4_to_1_b_T_5) @[lab3_2exp.scala 17:24]
    node m8_to_1 = mux(io_s2, m4_to_1_b, m4_to_1_a) @[lab3_2exp.scala 18:22]
    io_result <= m8_to_1 @[lab3_2exp.scala 19:15]
