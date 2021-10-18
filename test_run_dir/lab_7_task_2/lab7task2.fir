;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab7task2 : 
  module lab7task2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<1>, flip start : UInt<1>, out : UInt<8>, flag : UInt<1>}
    
    reg State : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[lab7task2.scala 17:24]
    io.out <= UInt<1>("h00") @[lab7task2.scala 19:12]
    io.flag <= UInt<1>("h00") @[lab7task2.scala 20:13]
    reg state : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[lab7task2.scala 22:24]
    node _T = eq(UInt<1>("h00"), state) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      node _T_1 = eq(io.in, UInt<1>("h01")) @[lab7task2.scala 26:35]
      node _T_2 = and(io.start, _T_1) @[lab7task2.scala 26:27]
      when _T_2 : @[lab7task2.scala 26:43]
        node _nextState_T = shl(state, 1) @[lab7task2.scala 27:36]
        node nextState = or(_nextState_T, UInt<1>("h00")) @[lab7task2.scala 27:43]
        state <= nextState @[lab7task2.scala 28:19]
        io.out <= state @[lab7task2.scala 29:20]
        io.flag <= UInt<1>("h01") @[lab7task2.scala 30:21]
        State <= UInt<1>("h01") @[lab7task2.scala 31:19]
        skip @[lab7task2.scala 26:43]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_3 = eq(UInt<1>("h01"), state) @[Conditional.scala 37:30]
      when _T_3 : @[Conditional.scala 39:67]
        node _T_4 = eq(io.in, UInt<1>("h00")) @[lab7task2.scala 35:36]
        node _T_5 = and(io.start, _T_4) @[lab7task2.scala 35:27]
        when _T_5 : @[lab7task2.scala 35:44]
          node _nextState_T_1 = shl(state, 1) @[lab7task2.scala 36:36]
          node nextState_1 = or(_nextState_T_1, UInt<1>("h01")) @[lab7task2.scala 36:43]
          state <= nextState_1 @[lab7task2.scala 37:19]
          io.out <= state @[lab7task2.scala 38:20]
          io.flag <= UInt<1>("h00") @[lab7task2.scala 39:21]
          State <= UInt<1>("h00") @[lab7task2.scala 40:19]
          skip @[lab7task2.scala 35:44]
        skip @[Conditional.scala 39:67]
    
