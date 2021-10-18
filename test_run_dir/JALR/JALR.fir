;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit JALR : 
  module JALR : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : SInt<32>, flip b : SInt<32>, out : SInt<32>}
    
    node _io_out_T = add(io.a, io.b) @[JALR.scala 17:25]
    node _io_out_T_1 = tail(_io_out_T, 1) @[JALR.scala 17:25]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[JALR.scala 17:25]
    node _io_out_T_3 = and(_io_out_T_2, asSInt(UInt<37>("h0842b560d0"))) @[JALR.scala 17:33]
    node _io_out_T_4 = asSInt(_io_out_T_3) @[JALR.scala 17:33]
    io.out <= _io_out_T_4 @[JALR.scala 17:16]
    
