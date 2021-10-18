;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit taskcounter : 
  module taskcounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {result : UInt<1>}
    
    reg counter1 : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[taskcounter.scala 11:28]
    node _counter1_T = eq(counter1, UInt<3>("h07")) @[taskcounter.scala 12:21]
    when _counter1_T : @[taskcounter.scala 12:36]
      counter1 <= UInt<1>("h00") @[taskcounter.scala 13:19]
      skip @[taskcounter.scala 12:36]
    else : @[taskcounter.scala 15:19]
      node _counter1_count_T = add(counter1, UInt<1>("h01")) @[taskcounter.scala 16:28]
      node _counter1_count_T_1 = tail(_counter1_count_T, 1) @[taskcounter.scala 16:28]
      counter1 <= _counter1_count_T_1 @[taskcounter.scala 16:19]
      skip @[taskcounter.scala 15:19]
    node _io_result_T = bits(counter1, 2, 2) @[taskcounter.scala 21:26]
    io.result <= _io_result_T @[taskcounter.scala 21:15]
    
