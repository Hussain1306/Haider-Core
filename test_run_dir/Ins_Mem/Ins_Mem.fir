;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Ins_Mem : 
  module Ins_Mem : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip rAdder : UInt<12>, wData : UInt<32>}
    
    cmem ins_mem : UInt<32>[1024] @[Ins_Mem.scala 16:26]
    node _io_wData_T = bits(io.rAdder, 9, 0) @[Ins_Mem.scala 17:28]
    infer mport io_wData_MPORT = ins_mem[_io_wData_T], clock @[Ins_Mem.scala 17:28]
    io.wData <= io_wData_MPORT @[Ins_Mem.scala 17:18]
    
