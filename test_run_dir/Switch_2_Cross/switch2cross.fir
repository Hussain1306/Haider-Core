;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit switch2cross : 
  module switch2cross : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip i1 : UInt<3>, flip i2 : UInt<3>, o1 : UInt<3>, o2 : UInt<3>, flip sel : UInt<1>}
    
    when io.sel : @[switch2cross.scala 15:17]
      io.o1 <= io.i2 @[switch2cross.scala 16:15]
      io.o2 <= io.i1 @[switch2cross.scala 17:15]
      skip @[switch2cross.scala 15:17]
    else : @[switch2cross.scala 18:16]
      io.o1 <= io.i1 @[switch2cross.scala 19:15]
      io.o2 <= io.i2 @[switch2cross.scala 20:15]
      skip @[switch2cross.scala 18:16]
    
