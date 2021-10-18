;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit nandgate : 
  module nandgate : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>}
    
    node _io_c_T = and(io.a, io.b) @[nandgate.scala 12:20]
    node _io_c_T_1 = not(_io_c_T) @[nandgate.scala 12:13]
    io.c <= _io_c_T_1 @[nandgate.scala 12:10]
    
