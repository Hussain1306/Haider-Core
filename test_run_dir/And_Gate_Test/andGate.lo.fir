circuit andGate :
  module andGate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_c : UInt<1>

    node _io_c_T = and(io_a, io_b) @[andGate.scala 12:18]
    io_c <= _io_c_T @[andGate.scala 12:10]
