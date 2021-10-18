circuit norgate :
  module norgate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_c : UInt<1>

    node _io_c_T = or(io_a, io_b) @[norgate.scala 13:20]
    node _io_c_T_1 = not(_io_c_T) @[norgate.scala 13:13]
    io_c <= _io_c_T_1 @[norgate.scala 13:10]
