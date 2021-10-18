;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit notgate : 
  module notgate : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, b : UInt<1>}
    
    node _io_b_T = not(io.a) @[notgate.scala 11:13]
    io.b <= _io_b_T @[notgate.scala 11:10]
    
