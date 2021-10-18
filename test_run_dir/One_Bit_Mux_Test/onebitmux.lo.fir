circuit onebitmux :
  module onebitmux :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_s : UInt<1>
    output io_c : UInt<1>

    node _io_c_T = not(io_s) @[onebitmux.scala 13:22]
    node _io_c_T_1 = and(io_a, _io_c_T) @[onebitmux.scala 13:19]
    node _io_c_T_2 = and(io_b, io_s) @[onebitmux.scala 13:39]
    node _io_c_T_3 = or(_io_c_T_1, _io_c_T_2) @[onebitmux.scala 13:31]
    io_c <= _io_c_T_3 @[onebitmux.scala 13:10]
