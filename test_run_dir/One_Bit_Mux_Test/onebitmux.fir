;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit onebitmux : 
  module onebitmux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip s : UInt<1>, c : UInt<1>}
    
    node _io_c_T = not(io.s) @[onebitmux.scala 13:22]
    node _io_c_T_1 = and(io.a, _io_c_T) @[onebitmux.scala 13:19]
    node _io_c_T_2 = and(io.b, io.s) @[onebitmux.scala 13:39]
    node _io_c_T_3 = or(_io_c_T_1, _io_c_T_2) @[onebitmux.scala 13:31]
    io.c <= _io_c_T_3 @[onebitmux.scala 13:10]
    
