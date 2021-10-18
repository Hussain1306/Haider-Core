;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit xnorgate : 
  module xnorgate : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>}
    
    node _io_c_T = or(io.a, io.b) @[xnorgate.scala 12:21]
    node _io_c_T_1 = not(_io_c_T) @[xnorgate.scala 12:14]
    node _io_c_T_2 = and(io.a, io.b) @[xnorgate.scala 12:36]
    node _io_c_T_3 = or(_io_c_T_1, _io_c_T_2) @[xnorgate.scala 12:29]
    io.c <= _io_c_T_3 @[xnorgate.scala 12:10]
    
