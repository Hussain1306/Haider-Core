;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit fourbithalfadder : 
  module fourbithalfadder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip c : UInt<1>, flip d : UInt<1>, flip e : UInt<1>, flip f : UInt<1>, flip g : UInt<1>, flip h : UInt<1>, i : UInt<1>, j : UInt<1>, k : UInt<1>, l : UInt<1>, m : UInt<1>, n : UInt<1>, o : UInt<1>, p : UInt<1>}
    
    node _io_i_T = xor(io.a, io.b) @[fourbithalfadder.scala 25:18]
    io.i <= _io_i_T @[fourbithalfadder.scala 25:10]
    node _io_j_T = and(io.a, io.b) @[fourbithalfadder.scala 26:18]
    io.j <= _io_j_T @[fourbithalfadder.scala 26:10]
    node _io_k_T = xor(io.c, io.d) @[fourbithalfadder.scala 27:18]
    io.k <= _io_k_T @[fourbithalfadder.scala 27:10]
    node _io_l_T = and(io.c, io.d) @[fourbithalfadder.scala 28:18]
    io.l <= _io_l_T @[fourbithalfadder.scala 28:10]
    node _io_m_T = xor(io.e, io.f) @[fourbithalfadder.scala 29:18]
    io.m <= _io_m_T @[fourbithalfadder.scala 29:10]
    node _io_n_T = and(io.e, io.f) @[fourbithalfadder.scala 30:18]
    io.n <= _io_n_T @[fourbithalfadder.scala 30:10]
    node _io_o_T = xor(io.g, io.h) @[fourbithalfadder.scala 31:18]
    io.o <= _io_o_T @[fourbithalfadder.scala 31:10]
    node _io_p_T = and(io.g, io.h) @[fourbithalfadder.scala 32:18]
    io.p <= _io_p_T @[fourbithalfadder.scala 32:10]
    
