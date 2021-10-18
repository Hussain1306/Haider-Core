circuit lab6ex1 :
  module lab6ex1 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    input io_reload : UInt<1>
    output io_out : UInt<4>

    reg state : UInt<4>, clock with :
      reset => (UInt<1>("h0"), state) @[lab6ex1.scala 13:24]
    node _nextState_T = shl(state, 1) @[lab6ex1.scala 16:32]
    node nextState = or(_nextState_T, UInt<1>("h0")) @[lab6ex1.scala 16:39]
    node _GEN_0 = mux(io_reload, nextState, state) @[lab6ex1.scala 15:20 lab6ex1.scala 17:15 lab6ex1.scala 13:24]
    node _GEN_1 = mux(io_reload, state, io_in) @[lab6ex1.scala 15:20 lab6ex1.scala 18:16 lab6ex1.scala 20:16]
    io_out <= _GEN_1
    state <= mux(reset, UInt<4>("h1"), bits(_GEN_0, 3, 0)) @[lab6ex1.scala 13:24 lab6ex1.scala 13:24]
