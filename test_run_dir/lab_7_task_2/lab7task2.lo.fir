circuit lab7task2 :
  module lab7task2 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<1>
    input io_start : UInt<1>
    output io_out : UInt<8>
    output io_flag : UInt<1>

    reg State : UInt<1>, clock with :
      reset => (UInt<1>("h0"), State) @[lab7task2.scala 17:24]
    reg state : UInt<8>, clock with :
      reset => (UInt<1>("h0"), state) @[lab7task2.scala 22:24]
    node _T = eq(UInt<1>("h0"), state) @[Conditional.scala 37:30]
    node _T_1 = eq(io_in, UInt<1>("h1")) @[lab7task2.scala 26:35]
    node _T_2 = and(io_start, _T_1) @[lab7task2.scala 26:27]
    node _nextState_T = shl(state, 1) @[lab7task2.scala 27:36]
    node nextState = or(_nextState_T, UInt<1>("h0")) @[lab7task2.scala 27:43]
    node _GEN_0 = mux(_T_2, nextState, state) @[lab7task2.scala 26:43 lab7task2.scala 28:19 lab7task2.scala 22:24]
    node _GEN_1 = mux(_T_2, state, UInt<1>("h0")) @[lab7task2.scala 26:43 lab7task2.scala 29:20 lab7task2.scala 19:12]
    node _GEN_2 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[lab7task2.scala 26:43 lab7task2.scala 30:21 lab7task2.scala 20:13]
    node _GEN_3 = mux(_T_2, UInt<1>("h1"), State) @[lab7task2.scala 26:43 lab7task2.scala 31:19 lab7task2.scala 17:24]
    node _T_3 = eq(UInt<1>("h1"), state) @[Conditional.scala 37:30]
    node _T_4 = eq(io_in, UInt<1>("h0")) @[lab7task2.scala 35:36]
    node _T_5 = and(io_start, _T_4) @[lab7task2.scala 35:27]
    node _nextState_T_1 = shl(state, 1) @[lab7task2.scala 36:36]
    node nextState_1 = or(_nextState_T_1, UInt<1>("h1")) @[lab7task2.scala 36:43]
    node _GEN_4 = mux(_T_5, nextState_1, state) @[lab7task2.scala 35:44 lab7task2.scala 37:19 lab7task2.scala 22:24]
    node _GEN_5 = mux(_T_5, state, UInt<1>("h0")) @[lab7task2.scala 35:44 lab7task2.scala 38:20 lab7task2.scala 19:12]
    node _GEN_6 = mux(_T_5, UInt<1>("h0"), UInt<1>("h0")) @[lab7task2.scala 35:44 lab7task2.scala 39:21 lab7task2.scala 20:13]
    node _GEN_7 = mux(_T_5, UInt<1>("h0"), State) @[lab7task2.scala 35:44 lab7task2.scala 40:19 lab7task2.scala 17:24]
    node _GEN_8 = mux(_T_3, _GEN_4, state) @[Conditional.scala 39:67 lab7task2.scala 22:24]
    node _GEN_9 = mux(_T_3, _GEN_5, UInt<1>("h0")) @[Conditional.scala 39:67 lab7task2.scala 19:12]
    node _GEN_10 = mux(_T_3, _GEN_6, UInt<1>("h0")) @[Conditional.scala 39:67 lab7task2.scala 20:13]
    node _GEN_11 = mux(_T_3, _GEN_7, State) @[Conditional.scala 39:67 lab7task2.scala 17:24]
    node _GEN_12 = mux(_T, _GEN_0, _GEN_8) @[Conditional.scala 40:58]
    node _GEN_13 = mux(_T, _GEN_1, _GEN_9) @[Conditional.scala 40:58]
    node _GEN_14 = mux(_T, _GEN_2, _GEN_10) @[Conditional.scala 40:58]
    node _GEN_15 = mux(_T, _GEN_3, _GEN_11) @[Conditional.scala 40:58]
    io_out <= _GEN_13
    io_flag <= _GEN_14
    State <= mux(reset, UInt<1>("h0"), _GEN_15) @[lab7task2.scala 17:24 lab7task2.scala 17:24]
    state <= mux(reset, UInt<8>("h0"), bits(_GEN_12, 7, 0)) @[lab7task2.scala 22:24 lab7task2.scala 22:24]
