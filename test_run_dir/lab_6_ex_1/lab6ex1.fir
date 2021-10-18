;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab6ex1 : 
  module lab6ex1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, flip reload : UInt<1>, out : UInt<4>}
    
    reg state : UInt<4>, clock with : (reset => (reset, UInt<4>("h01"))) @[lab6ex1.scala 13:24]
    when io.reload : @[lab6ex1.scala 15:20]
      node _nextState_T = shl(state, 1) @[lab6ex1.scala 16:32]
      node nextState = or(_nextState_T, UInt<1>("h00")) @[lab6ex1.scala 16:39]
      state <= nextState @[lab6ex1.scala 17:15]
      io.out <= state @[lab6ex1.scala 18:16]
      skip @[lab6ex1.scala 15:20]
    else : @[lab6ex1.scala 19:16]
      io.out <= io.in @[lab6ex1.scala 20:16]
      skip @[lab6ex1.scala 19:16]
    
