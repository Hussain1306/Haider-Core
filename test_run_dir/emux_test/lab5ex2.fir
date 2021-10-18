;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab5ex2 : 
  module lab5ex2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {o : UInt<2>, flip i1 : UInt<2>, flip i2 : UInt<2>, flip s : UInt<1>}
    
    node _io_o_T = mux(io.s, io.i2, io.i1) @[lab5ex2.scala 17:16]
    io.o <= _io_o_T @[lab5ex2.scala 17:10]
    
