;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit PC : 
  module PC : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip input : UInt<32>, PC_4 : UInt<32>, pc : UInt<32>}
    
    reg reg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[PC.scala 15:26]
    reg <= io.input @[PC.scala 16:13]
    io.pc <= io.input @[PC.scala 17:15]
    node _io_PC_4_T = add(reg, UInt<3>("h04")) @[PC.scala 18:24]
    node _io_PC_4_T_1 = tail(_io_PC_4_T, 1) @[PC.scala 18:24]
    io.PC_4 <= _io_PC_4_T_1 @[PC.scala 18:17]
    
