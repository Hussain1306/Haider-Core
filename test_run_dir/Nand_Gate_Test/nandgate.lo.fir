circuit nandgate :
  module nandgate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_c : UInt<1>

    node _io_c_T = and(io_a, io_b) @[nandgate.scala 12:20]
    node _io_c_T_1 = not(_io_c_T) @[nandgate.scala 12:13]
    io_c <= _io_c_T_1 @[nandgate.scala 12:10]
