;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Top : 
  module adderinputs : 
    input clock : Clock
    input reset : Reset
    output io : {out : UInt<48>, flip in_bundle : {in1 : UInt<20>, in2 : UInt<20>}}
    
    node _io_out_T = add(io.in_bundle.in1, io.in_bundle.in2) @[Top.scala 19:32]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Top.scala 19:32]
    io.out <= _io_out_T_1 @[Top.scala 19:12]
    
  module Top : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<48>, flip in : UInt<20>}
    
    wire inBundle : {in1 : UInt<20>, in2 : UInt<20>} @[Top.scala 26:24]
    inBundle.in2 is invalid @[Top.scala 27:14]
    inBundle.in1 is invalid @[Top.scala 27:14]
    inst m of adderinputs @[Top.scala 28:19]
    m.clock <= clock
    m.reset <= reset
    m.io.in_bundle.in1 <= io.in @[Top.scala 29:24]
    m.io.in_bundle.in2 <= io.in @[Top.scala 30:24]
    io.out <= m.io.out @[Top.scala 31:12]
    
