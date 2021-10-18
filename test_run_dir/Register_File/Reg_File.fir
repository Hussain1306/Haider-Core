;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Reg_File : 
  module Reg_File : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip Reg_en : UInt<1>, flip rs1 : UInt<5>, flip rs2 : UInt<5>, flip rd : UInt<5>, ws1 : SInt<32>, ws2 : SInt<32>, flip wd : SInt<32>}
    
    reg reg_file : SInt<32>[32], clock @[Reg_File.scala 17:27]
    io.ws1 <= reg_file[io.rs1] @[Reg_File.scala 18:16]
    io.ws2 <= reg_file[io.rs2] @[Reg_File.scala 19:16]
    node _T = eq(io.Reg_en, UInt<1>("h01")) @[Reg_File.scala 20:24]
    when _T : @[Reg_File.scala 20:32]
      node _T_1 = eq(io.rd, UInt<1>("h00")) @[Reg_File.scala 21:28]
      when _T_1 : @[Reg_File.scala 21:43]
        reg_file[io.rd] <= asSInt(UInt<1>("h00")) @[Reg_File.scala 22:41]
        skip @[Reg_File.scala 21:43]
      else : @[Reg_File.scala 23:28]
        reg_file[io.rd] <= io.wd @[Reg_File.scala 24:41]
        skip @[Reg_File.scala 23:28]
      skip @[Reg_File.scala 20:32]
    
