;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Data_Mem : 
  module Data_Mem : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip addr : UInt<12>, flip data_in : SInt<32>, data_out : SInt<32>, flip store : UInt<1>, flip load : UInt<1>}
    
    cmem data_Mem : SInt<32>[1024] @[Data_Mem.scala 19:27]
    io.data_out <= asSInt(UInt<1>("h00")) @[Data_Mem.scala 20:21]
    node _T = eq(io.load, UInt<1>("h01")) @[Data_Mem.scala 22:22]
    when _T : @[Data_Mem.scala 22:30]
      node _io_data_out_T = bits(io.addr, 9, 0) @[Data_Mem.scala 23:45]
      read mport io_data_out_MPORT = data_Mem[_io_data_out_T], clock @[Data_Mem.scala 23:45]
      io.data_out <= io_data_out_MPORT @[Data_Mem.scala 23:29]
      skip @[Data_Mem.scala 22:30]
    else : @[Data_Mem.scala 24:37]
      node _T_1 = eq(io.store, UInt<1>("h01")) @[Data_Mem.scala 24:29]
      when _T_1 : @[Data_Mem.scala 24:37]
        node _T_2 = bits(io.addr, 9, 0)
        write mport MPORT = data_Mem[_T_2], clock
        MPORT <= io.data_in
        skip @[Data_Mem.scala 24:37]
      else : @[Data_Mem.scala 26:16]
        io.data_out is invalid @[Data_Mem.scala 27:29]
        skip @[Data_Mem.scala 26:16]
    
