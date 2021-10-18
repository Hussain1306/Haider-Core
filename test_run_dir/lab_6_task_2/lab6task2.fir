;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab6task2 : 
  module lab6task2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<3>}
    
    io.out <= UInt<1>("h00") @[lab6task2.scala 11:12]
    reg count : UInt<6>, clock with : (reset => (reset, UInt<6>("h00"))) @[lab6task2.scala 12:24]
    node _T = eq(count, UInt<5>("h010")) @[lab6task2.scala 13:16]
    when _T : @[lab6task2.scala 13:25]
      count <= UInt<1>("h00") @[lab6task2.scala 14:15]
      skip @[lab6task2.scala 13:25]
    else : @[lab6task2.scala 15:16]
      node _count_T = xor(count, UInt<1>("h01")) @[lab6task2.scala 16:24]
      count <= _count_T @[lab6task2.scala 16:15]
      skip @[lab6task2.scala 15:16]
    io.out <= count @[lab6task2.scala 18:12]
    
