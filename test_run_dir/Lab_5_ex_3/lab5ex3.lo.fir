circuit lab5ex3 :
  module lab5ex3 :
    input clock : Clock
    input reset : UInt<1>
    input io_in_0 : UInt<16>
    input io_in_1 : UInt<16>
    input io_in_2 : UInt<16>
    input io_in_3 : UInt<16>
    output io_out_0 : UInt<16>
    output io_out_1 : UInt<16>
    output io_out_2 : UInt<16>
    output io_out_3 : UInt<16>

    node _io_out_0_T = add(io_in_0, io_in_1) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_1 = tail(_io_out_0_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_2 = add(_io_out_0_T_1, io_in_2) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_3 = tail(_io_out_0_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_4 = add(_io_out_0_T_3, io_in_3) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_5 = tail(_io_out_0_T_4, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T = add(io_in_0, io_in_1) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_1 = tail(_io_out_1_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_2 = add(_io_out_1_T_1, io_in_2) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_3 = tail(_io_out_1_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_4 = add(_io_out_1_T_3, io_in_3) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_5 = tail(_io_out_1_T_4, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T = add(io_in_0, io_in_1) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_1 = tail(_io_out_2_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_2 = add(_io_out_2_T_1, io_in_2) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_3 = tail(_io_out_2_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_4 = add(_io_out_2_T_3, io_in_3) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_5 = tail(_io_out_2_T_4, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T = add(io_in_0, io_in_1) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_1 = tail(_io_out_3_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_2 = add(_io_out_3_T_1, io_in_2) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_3 = tail(_io_out_3_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_4 = add(_io_out_3_T_3, io_in_3) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_5 = tail(_io_out_3_T_4, 1) @[lab5ex3Test.scala 10:43]
    io_out_0 <= _io_out_0_T_5 @[lab5ex3.scala 15:16]
    io_out_1 <= _io_out_1_T_5 @[lab5ex3.scala 16:16]
    io_out_2 <= _io_out_2_T_5 @[lab5ex3.scala 17:16]
    io_out_3 <= _io_out_3_T_5 @[lab5ex3.scala 18:16]
