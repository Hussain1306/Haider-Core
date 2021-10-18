circuit Ins_Mem :
  module Ins_Mem :
    input clock : Clock
    input reset : UInt<1>
    input io_rAdder : UInt<12>
    output io_wData : UInt<32>

    mem ins_mem : @[Ins_Mem.scala 16:26]
      data-type => UInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_wData_MPORT
      read-under-write => undefined
    node _io_wData_T = bits(io_rAdder, 9, 0) @[Ins_Mem.scala 17:28]
    io_wData <= ins_mem.io_wData_MPORT.data @[Ins_Mem.scala 17:18]
    ins_mem.io_wData_MPORT.addr <= _io_wData_T @[Ins_Mem.scala 17:28]
    ins_mem.io_wData_MPORT.en <= UInt<1>("h1") @[Ins_Mem.scala 17:28]
    ins_mem.io_wData_MPORT.clk <= clock @[Ins_Mem.scala 17:28]
