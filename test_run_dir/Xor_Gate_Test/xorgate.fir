;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit xorgate : 
  module xorgate : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>}
    
    node _io_c_T = not(io.b) @[xorgate.scala 12:21]
    node _io_c_T_1 = and(io.a, _io_c_T) @[xorgate.scala 12:19]
    node _io_c_T_2 = not(io.a) @[xorgate.scala 12:30]
    node _io_c_T_3 = and(_io_c_T_2, io.b) @[xorgate.scala 12:36]
    node _io_c_T_4 = or(_io_c_T_1, _io_c_T_3) @[xorgate.scala 12:28]
    io.c <= _io_c_T_4 @[xorgate.scala 12:10]
    
