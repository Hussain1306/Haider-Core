;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit orgate : 
  module orgate : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>}
    
    node _io_c_T = or(io.a, io.b) @[orgate.scala 13:18]
    io.c <= _io_c_T @[orgate.scala 13:10]
    
