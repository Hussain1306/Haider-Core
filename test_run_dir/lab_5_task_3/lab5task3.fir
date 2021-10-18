;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab5task3 : 
  module lab5task3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<4>, flip in1 : UInt<4>, flip in2 : UInt<4>, flip sel : UInt<1>}
    
    node _io_out_T = mux(io.sel, io.in1, io.in2) @[lab5task3.scala 17:12]
    io.out <= _io_out_T @[lab5task3.scala 14:12]
    
