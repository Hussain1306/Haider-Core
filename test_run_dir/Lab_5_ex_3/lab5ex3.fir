;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab5ex3 : 
  module lab5ex3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<16>[4], out : UInt<16>[4]}
    
    node _io_out_0_T = add(io.in[0], io.in[1]) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_1 = tail(_io_out_0_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_2 = add(_io_out_0_T_1, io.in[2]) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_3 = tail(_io_out_0_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_4 = add(_io_out_0_T_3, io.in[3]) @[lab5ex3Test.scala 10:43]
    node _io_out_0_T_5 = tail(_io_out_0_T_4, 1) @[lab5ex3Test.scala 10:43]
    io.out[0] <= _io_out_0_T_5 @[lab5ex3.scala 15:16]
    node _io_out_1_T = add(io.in[0], io.in[1]) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_1 = tail(_io_out_1_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_2 = add(_io_out_1_T_1, io.in[2]) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_3 = tail(_io_out_1_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_4 = add(_io_out_1_T_3, io.in[3]) @[lab5ex3Test.scala 10:43]
    node _io_out_1_T_5 = tail(_io_out_1_T_4, 1) @[lab5ex3Test.scala 10:43]
    io.out[1] <= _io_out_1_T_5 @[lab5ex3.scala 16:16]
    node _io_out_2_T = add(io.in[0], io.in[1]) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_1 = tail(_io_out_2_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_2 = add(_io_out_2_T_1, io.in[2]) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_3 = tail(_io_out_2_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_4 = add(_io_out_2_T_3, io.in[3]) @[lab5ex3Test.scala 10:43]
    node _io_out_2_T_5 = tail(_io_out_2_T_4, 1) @[lab5ex3Test.scala 10:43]
    io.out[2] <= _io_out_2_T_5 @[lab5ex3.scala 17:16]
    node _io_out_3_T = add(io.in[0], io.in[1]) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_1 = tail(_io_out_3_T, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_2 = add(_io_out_3_T_1, io.in[2]) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_3 = tail(_io_out_3_T_2, 1) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_4 = add(_io_out_3_T_3, io.in[3]) @[lab5ex3Test.scala 10:43]
    node _io_out_3_T_5 = tail(_io_out_3_T_4, 1) @[lab5ex3Test.scala 10:43]
    io.out[3] <= _io_out_3_T_5 @[lab5ex3.scala 18:16]
    
