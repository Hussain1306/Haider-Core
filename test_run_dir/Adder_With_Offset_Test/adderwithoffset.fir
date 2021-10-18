;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit adderwithoffset : 
  module adderwithoffset : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : SInt<16>, flip b : UInt<16>, c : UInt<16>}
    
    node y1 = asSInt(UInt<5>("h017")) @[adderwithoffset.scala 13:21]
    node _in1_T = add(io.a, y1) @[adderwithoffset.scala 14:20]
    node _in1_T_1 = tail(_in1_T, 1) @[adderwithoffset.scala 14:20]
    node in1 = asSInt(_in1_T_1) @[adderwithoffset.scala 14:20]
    node _io_c_T = asUInt(in1) @[adderwithoffset.scala 15:17]
    node _io_c_T_1 = add(_io_c_T, io.b) @[adderwithoffset.scala 15:24]
    node _io_c_T_2 = tail(_io_c_T_1, 1) @[adderwithoffset.scala 15:24]
    io.c <= _io_c_T_2 @[adderwithoffset.scala 15:10]
    
