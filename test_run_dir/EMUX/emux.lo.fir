circuit emux :
  module emux :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<3>
    input io_in1 : UInt<3>
    input io_in2 : UInt<3>
    input io_sel : UInt<1>

    node _io_out_T = mux(io_sel, io_in1, io_in2) @[emux.scala 15:5]
    io_out <= _io_out_T @[emux.scala 13:8]
