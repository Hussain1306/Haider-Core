circuit lab5ex2 :
  module lab5ex2 :
    input clock : Clock
    input reset : UInt<1>
    output io_o : UInt<2>
    input io_i1 : UInt<2>
    input io_i2 : UInt<2>
    input io_s : UInt<1>

    node _io_o_T = mux(io_s, io_i2, io_i1) @[lab5ex2.scala 17:16]
    io_o <= _io_o_T @[lab5ex2.scala 17:10]
