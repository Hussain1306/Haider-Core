;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab6task3 : 
  module lab6task3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<1>[3], flip load_in : UInt<1>[3], flip in : UInt<1>, flip load : UInt<1>}
    
    reg state : UInt<3>, clock with : (reset => (reset, UInt<3>("h01"))) @[lab6task3.scala 14:24]
    when io.load : @[lab6task3.scala 16:22]
      node _nextState_T = shl(state, 1) @[lab6task3.scala 17:36]
      node nextState = or(_nextState_T, io.in) @[lab6task3.scala 17:43]
      state <= nextState @[lab6task3.scala 18:19]
      node _io_out_0_T = bits(state, 0, 0) @[lab6task3.scala 19:31]
      node _io_out_0_T_1 = bits(_io_out_0_T, 0, 0) @[lab6task3.scala 19:35]
      io.out[0] <= _io_out_0_T_1 @[lab6task3.scala 19:23]
      skip @[lab6task3.scala 16:22]
    else : @[lab6task3.scala 20:20]
      io.out[0] <= io.load_in[0] @[lab6task3.scala 21:23]
      skip @[lab6task3.scala 20:20]
    when io.load : @[lab6task3.scala 16:22]
      node _nextState_T_1 = shl(state, 1) @[lab6task3.scala 17:36]
      node nextState_1 = or(_nextState_T_1, io.in) @[lab6task3.scala 17:43]
      state <= nextState_1 @[lab6task3.scala 18:19]
      node _io_out_1_T = bits(state, 1, 1) @[lab6task3.scala 19:31]
      node _io_out_1_T_1 = bits(_io_out_1_T, 0, 0) @[lab6task3.scala 19:35]
      io.out[1] <= _io_out_1_T_1 @[lab6task3.scala 19:23]
      skip @[lab6task3.scala 16:22]
    else : @[lab6task3.scala 20:20]
      io.out[1] <= io.load_in[1] @[lab6task3.scala 21:23]
      skip @[lab6task3.scala 20:20]
    when io.load : @[lab6task3.scala 16:22]
      node _nextState_T_2 = shl(state, 1) @[lab6task3.scala 17:36]
      node nextState_2 = or(_nextState_T_2, io.in) @[lab6task3.scala 17:43]
      state <= nextState_2 @[lab6task3.scala 18:19]
      node _io_out_2_T = bits(state, 2, 2) @[lab6task3.scala 19:31]
      node _io_out_2_T_1 = bits(_io_out_2_T, 0, 0) @[lab6task3.scala 19:35]
      io.out[2] <= _io_out_2_T_1 @[lab6task3.scala 19:23]
      skip @[lab6task3.scala 16:22]
    else : @[lab6task3.scala 20:20]
      io.out[2] <= io.load_in[2] @[lab6task3.scala 21:23]
      skip @[lab6task3.scala 20:20]
    
