circuit orgate :
  module orgate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_c : UInt<1>

    node _io_c_T = or(io_a, io_b) @[orgate.scala 13:18]
    io_c <= _io_c_T @[orgate.scala 13:10]
