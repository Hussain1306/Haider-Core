;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit twobithalfadder : 
  module twobithalfadder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip c : UInt<1>, flip d : UInt<1>, e : UInt<1>, f : UInt<1>, g : UInt<1>, h : UInt<1>}
    
    node _io_e_T = xor(io.a, io.b) @[twobithalfadder.scala 17:18]
    io.e <= _io_e_T @[twobithalfadder.scala 17:10]
    node _io_f_T = and(io.a, io.b) @[twobithalfadder.scala 18:18]
    io.f <= _io_f_T @[twobithalfadder.scala 18:10]
    node _io_g_T = xor(io.c, io.d) @[twobithalfadder.scala 19:18]
    io.g <= _io_g_T @[twobithalfadder.scala 19:10]
    node _io_h_T = and(io.c, io.d) @[twobithalfadder.scala 20:18]
    io.h <= _io_h_T @[twobithalfadder.scala 20:10]
    
