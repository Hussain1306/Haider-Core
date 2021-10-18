;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit emux : 
  module emux : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<3>, flip in1 : UInt<3>, flip in2 : UInt<3>, flip sel : UInt<1>}
    
    node _io_out_T = mux(io.sel, io.in1, io.in2) @[emux.scala 15:5]
    io.out <= _io_out_T @[emux.scala 13:8]
    
