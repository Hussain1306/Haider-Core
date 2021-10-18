;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab3exp : 
  module lab3exp : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<2>, flip b : UInt<2>, flip s : UInt<1>, o : UInt<2>}
    
    node _io_o_T = mux(io.s, io.a, io.b) @[lab3exp.scala 14:16]
    io.o <= _io_o_T @[lab3exp.scala 14:10]
    
