circuit xnorgate :
  module xnorgate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_c : UInt<1>

    node _io_c_T = or(io_a, io_b) @[xnorgate.scala 12:21]
    node _io_c_T_1 = not(_io_c_T) @[xnorgate.scala 12:14]
    node _io_c_T_2 = and(io_a, io_b) @[xnorgate.scala 12:36]
    node _io_c_T_3 = or(_io_c_T_1, _io_c_T_2) @[xnorgate.scala 12:29]
    io_c <= _io_c_T_3 @[xnorgate.scala 12:10]
