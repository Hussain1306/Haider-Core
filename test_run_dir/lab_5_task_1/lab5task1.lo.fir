circuit lab5task1 :
  module lab5task1 :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<7>
    input io_in1 : UInt<7>
    output io_sum : UInt<7>

    node _io_sum_T = add(io_in0, io_in1) @[lab5task1.scala 16:26]
    node _io_sum_T_1 = tail(_io_sum_T, 1) @[lab5task1.scala 16:26]
    io_sum <= _io_sum_T_1 @[lab5task1.scala 16:16]
