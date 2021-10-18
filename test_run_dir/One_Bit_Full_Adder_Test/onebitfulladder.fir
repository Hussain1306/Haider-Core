;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit onebitfulladder : 
  module onebitfulladder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip c : UInt<1>, d : UInt<1>, e : UInt<1>}
    
    node _io_d_T = xor(io.a, io.b) @[onebitfulladder.scala 14:19]
    node _io_d_T_1 = xor(_io_d_T, io.c) @[onebitfulladder.scala 14:27]
    io.d <= _io_d_T_1 @[onebitfulladder.scala 14:10]
    node _io_e_T = and(io.a, io.b) @[onebitfulladder.scala 15:19]
    node _io_e_T_1 = xor(io.a, io.b) @[onebitfulladder.scala 15:36]
    node _io_e_T_2 = and(_io_e_T_1, io.c) @[onebitfulladder.scala 15:44]
    node _io_e_T_3 = or(_io_e_T, _io_e_T_2) @[onebitfulladder.scala 15:27]
    io.e <= _io_e_T_3 @[onebitfulladder.scala 15:10]
    
