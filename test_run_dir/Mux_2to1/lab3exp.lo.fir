circuit lab3exp :
  module lab3exp :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<2>
    input io_b : UInt<2>
    input io_s : UInt<1>
    output io_o : UInt<2>

    node _io_o_T = mux(io_s, io_a, io_b) @[lab3exp.scala 14:16]
    io_o <= _io_o_T @[lab3exp.scala 14:10]
