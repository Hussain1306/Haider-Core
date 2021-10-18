circuit xorgate :
  module xorgate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_c : UInt<1>

    node _io_c_T = not(io_b) @[xorgate.scala 12:21]
    node _io_c_T_1 = and(io_a, _io_c_T) @[xorgate.scala 12:19]
    node _io_c_T_2 = not(io_a) @[xorgate.scala 12:30]
    node _io_c_T_3 = and(_io_c_T_2, io_b) @[xorgate.scala 12:36]
    node _io_c_T_4 = or(_io_c_T_1, _io_c_T_3) @[xorgate.scala 12:28]
    io_c <= _io_c_T_4 @[xorgate.scala 12:10]
