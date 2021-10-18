;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab5task1 : 
  module lab5task1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in0 : UInt<7>, flip in1 : UInt<7>, sum : UInt<7>}
    
    node _io_sum_T = add(io.in0, io.in1) @[lab5task1.scala 16:26]
    node _io_sum_T_1 = tail(_io_sum_T, 1) @[lab5task1.scala 16:26]
    io.sum <= _io_sum_T_1 @[lab5task1.scala 16:16]
    
