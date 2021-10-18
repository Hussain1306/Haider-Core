circuit notgate :
  module notgate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    output io_b : UInt<1>

    node _io_b_T = not(io_a) @[notgate.scala 11:13]
    io_b <= _io_b_T @[notgate.scala 11:10]
