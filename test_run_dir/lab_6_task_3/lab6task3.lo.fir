circuit lab6task3 :
  module lab6task3 :
    input clock : Clock
    input reset : UInt<1>
    output io_out_0 : UInt<1>
    output io_out_1 : UInt<1>
    output io_out_2 : UInt<1>
    input io_load_in_0 : UInt<1>
    input io_load_in_1 : UInt<1>
    input io_load_in_2 : UInt<1>
    input io_in : UInt<1>
    input io_load : UInt<1>

    reg state : UInt<3>, clock with :
      reset => (UInt<1>("h0"), state) @[lab6task3.scala 14:24]
    node _nextState_T = shl(state, 1) @[lab6task3.scala 17:36]
    node nextState = or(_nextState_T, io_in) @[lab6task3.scala 17:43]
    node _io_out_0_T = bits(state, 0, 0) @[lab6task3.scala 19:31]
    node _io_out_0_T_1 = bits(_io_out_0_T, 0, 0) @[lab6task3.scala 19:35]
    node _GEN_0 = mux(io_load, nextState, state) @[lab6task3.scala 16:22 lab6task3.scala 18:19 lab6task3.scala 14:24]
    node _GEN_1 = mux(io_load, _io_out_0_T_1, io_load_in_0) @[lab6task3.scala 16:22 lab6task3.scala 19:23 lab6task3.scala 21:23]
    node _nextState_T_1 = shl(state, 1) @[lab6task3.scala 17:36]
    node nextState_1 = or(_nextState_T_1, io_in) @[lab6task3.scala 17:43]
    node _io_out_1_T = bits(state, 1, 1) @[lab6task3.scala 19:31]
    node _io_out_1_T_1 = bits(_io_out_1_T, 0, 0) @[lab6task3.scala 19:35]
    node _GEN_2 = mux(io_load, nextState_1, _GEN_0) @[lab6task3.scala 16:22 lab6task3.scala 18:19]
    node _GEN_3 = mux(io_load, _io_out_1_T_1, io_load_in_1) @[lab6task3.scala 16:22 lab6task3.scala 19:23 lab6task3.scala 21:23]
    node _nextState_T_2 = shl(state, 1) @[lab6task3.scala 17:36]
    node nextState_2 = or(_nextState_T_2, io_in) @[lab6task3.scala 17:43]
    node _io_out_2_T = bits(state, 2, 2) @[lab6task3.scala 19:31]
    node _io_out_2_T_1 = bits(_io_out_2_T, 0, 0) @[lab6task3.scala 19:35]
    node _GEN_4 = mux(io_load, nextState_2, _GEN_2) @[lab6task3.scala 16:22 lab6task3.scala 18:19]
    node _GEN_5 = mux(io_load, _io_out_2_T_1, io_load_in_2) @[lab6task3.scala 16:22 lab6task3.scala 19:23 lab6task3.scala 21:23]
    io_out_0 <= _GEN_1
    io_out_1 <= _GEN_3
    io_out_2 <= _GEN_5
    state <= mux(reset, UInt<3>("h1"), bits(_GEN_4, 2, 0)) @[lab6task3.scala 14:24 lab6task3.scala 14:24]
