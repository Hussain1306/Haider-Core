;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab5task2 : 
  module lab5task2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : {datafield : UInt<5>, addrfield : UInt<10>}, flip in : {datafield : UInt<5>, addrfield : UInt<10>}}
    
    io.out.addrfield <= io.in.addrfield @[lab5task2.scala 18:12]
    io.out.datafield <= io.in.datafield @[lab5task2.scala 18:12]
    
