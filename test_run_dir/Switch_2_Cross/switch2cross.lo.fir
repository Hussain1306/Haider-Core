circuit switch2cross :
  module switch2cross :
    input clock : Clock
    input reset : UInt<1>
    input io_i1 : UInt<3>
    input io_i2 : UInt<3>
    output io_o1 : UInt<3>
    output io_o2 : UInt<3>
    input io_sel : UInt<1>

    node _GEN_0 = mux(io_sel, io_i2, io_i1) @[switch2cross.scala 15:17 switch2cross.scala 16:15 switch2cross.scala 19:15]
    node _GEN_1 = mux(io_sel, io_i1, io_i2) @[switch2cross.scala 15:17 switch2cross.scala 17:15 switch2cross.scala 20:15]
    io_o1 <= _GEN_0
    io_o2 <= _GEN_1
