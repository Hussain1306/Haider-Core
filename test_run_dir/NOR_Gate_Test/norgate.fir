;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit norgate : 
  module norgate : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>}
    
    node _io_c_T = or(io.a, io.b) @[norgate.scala 13:20]
    node _io_c_T_1 = not(_io_c_T) @[norgate.scala 13:13]
    io.c <= _io_c_T_1 @[norgate.scala 13:10]
    
