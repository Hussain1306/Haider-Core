circuit lab5task3 :
  module lab5task3 :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<4>
    input io_in1 : UInt<4>
    input io_in2 : UInt<4>
    input io_sel : UInt<1>

    node _io_out_T = mux(io_sel, io_in1, io_in2) @[lab5task3.scala 17:12]
    io_out <= _io_out_T @[lab5task3.scala 14:12]
