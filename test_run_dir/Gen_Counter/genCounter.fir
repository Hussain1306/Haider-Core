;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit genCounter : 
  module genCounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {result : UInt<1>}
    
    reg counter1 : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[gencounter.scala 12:28]
    node _counter1_T = eq(counter1, UInt<3>("h04")) @[gencounter.scala 13:21]
    when _counter1_T : @[gencounter.scala 13:29]
      counter1 <= UInt<1>("h00") @[gencounter.scala 14:19]
      skip @[gencounter.scala 13:29]
    else : @[gencounter.scala 15:21]
      node _counter1_count_T = add(counter1, UInt<1>("h01")) @[gencounter.scala 16:28]
      node _counter1_count_T_1 = tail(_counter1_count_T, 1) @[gencounter.scala 16:28]
      counter1 <= _counter1_count_T_1 @[gencounter.scala 16:19]
      skip @[gencounter.scala 15:21]
    node _io_result_T = bits(counter1, 3, 3) @[gencounter.scala 22:26]
    io.result <= _io_result_T @[gencounter.scala 22:15]
    
