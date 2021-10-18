;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit onebithalfadder : 
  module onebithalfadder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>, d : UInt<1>}
    
    node _io_c_T = xor(io.a, io.b) @[onebithalfadder.scala 13:18]
    io.c <= _io_c_T @[onebithalfadder.scala 13:10]
    node _io_d_T = and(io.a, io.b) @[onebithalfadder.scala 14:18]
    io.d <= _io_d_T @[onebithalfadder.scala 14:10]
    
