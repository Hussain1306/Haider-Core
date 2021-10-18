;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab3_2exp : 
  module lab3_2exp : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<8>, flip s0 : UInt<1>, flip s1 : UInt<1>, flip s2 : UInt<1>, result : UInt<1>}
    
    node _m4_to_1_a_T = bits(io.a, 3, 3) @[lab3_2exp.scala 16:47]
    node _m4_to_1_a_T_1 = bits(io.a, 2, 2) @[lab3_2exp.scala 16:56]
    node _m4_to_1_a_T_2 = mux(io.s0, _m4_to_1_a_T, _m4_to_1_a_T_1) @[lab3_2exp.scala 16:35]
    node _m4_to_1_a_T_3 = bits(io.a, 1, 1) @[lab3_2exp.scala 16:77]
    node _m4_to_1_a_T_4 = bits(io.a, 0, 0) @[lab3_2exp.scala 16:86]
    node _m4_to_1_a_T_5 = mux(io.s0, _m4_to_1_a_T_3, _m4_to_1_a_T_4) @[lab3_2exp.scala 16:65]
    node m4_to_1_a = mux(io.s1, _m4_to_1_a_T_2, _m4_to_1_a_T_5) @[lab3_2exp.scala 16:24]
    node _m4_to_1_b_T = bits(io.a, 7, 7) @[lab3_2exp.scala 17:47]
    node _m4_to_1_b_T_1 = bits(io.a, 6, 6) @[lab3_2exp.scala 17:56]
    node _m4_to_1_b_T_2 = mux(io.s0, _m4_to_1_b_T, _m4_to_1_b_T_1) @[lab3_2exp.scala 17:35]
    node _m4_to_1_b_T_3 = bits(io.a, 5, 5) @[lab3_2exp.scala 17:77]
    node _m4_to_1_b_T_4 = bits(io.a, 4, 4) @[lab3_2exp.scala 17:86]
    node _m4_to_1_b_T_5 = mux(io.s0, _m4_to_1_b_T_3, _m4_to_1_b_T_4) @[lab3_2exp.scala 17:65]
    node m4_to_1_b = mux(io.s1, _m4_to_1_b_T_2, _m4_to_1_b_T_5) @[lab3_2exp.scala 17:24]
    node m8_to_1 = mux(io.s2, m4_to_1_b, m4_to_1_a) @[lab3_2exp.scala 18:22]
    io.result <= m8_to_1 @[lab3_2exp.scala 19:15]
    
