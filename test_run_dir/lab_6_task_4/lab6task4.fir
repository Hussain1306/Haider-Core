;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab6task4 : 
  module lab6task4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<4>}
    
    reg up_down : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[lab6task4.scala 12:26]
    reg counter : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[lab6task4.scala 13:26]
    when up_down : @[lab6task4.scala 15:18]
      node _T = eq(counter, UInt<4>("h09")) @[lab6task4.scala 16:22]
      when _T : @[lab6task4.scala 16:32]
        up_down <= UInt<1>("h00") @[lab6task4.scala 17:21]
        node _counter_T = sub(counter, UInt<1>("h01")) @[lab6task4.scala 18:32]
        node _counter_T_1 = tail(_counter_T, 1) @[lab6task4.scala 18:32]
        counter <= _counter_T_1 @[lab6task4.scala 18:21]
        skip @[lab6task4.scala 16:32]
      else : @[lab6task4.scala 19:20]
        node _counter_T_2 = add(counter, UInt<1>("h01")) @[lab6task4.scala 20:32]
        node _counter_T_3 = tail(_counter_T_2, 1) @[lab6task4.scala 20:32]
        counter <= _counter_T_3 @[lab6task4.scala 20:21]
        skip @[lab6task4.scala 19:20]
      skip @[lab6task4.scala 15:18]
    else : @[lab6task4.scala 22:16]
      node _T_1 = eq(counter, UInt<1>("h00")) @[lab6task4.scala 23:24]
      when _T_1 : @[lab6task4.scala 23:32]
        up_down <= UInt<1>("h01") @[lab6task4.scala 24:23]
        node _counter_T_4 = add(counter, UInt<1>("h01")) @[lab6task4.scala 25:34]
        node _counter_T_5 = tail(_counter_T_4, 1) @[lab6task4.scala 25:34]
        counter <= _counter_T_5 @[lab6task4.scala 25:23]
        skip @[lab6task4.scala 23:32]
      else : @[lab6task4.scala 26:22]
        node _counter_T_6 = sub(counter, UInt<1>("h01")) @[lab6task4.scala 27:34]
        node _counter_T_7 = tail(_counter_T_6, 1) @[lab6task4.scala 27:34]
        counter <= _counter_T_7 @[lab6task4.scala 27:23]
        skip @[lab6task4.scala 26:22]
      skip @[lab6task4.scala 22:16]
    io.out <= counter @[lab6task4.scala 30:12]
    
