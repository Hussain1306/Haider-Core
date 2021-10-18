circuit Data_Mem :
  module Data_Mem :
    input clock : Clock
    input reset : UInt<1>
    input io_addr : UInt<12>
    input io_data_in : SInt<32>
    output io_data_out : SInt<32>
    input io_store : UInt<1>
    input io_load : UInt<1>

    mem data_Mem : @[Data_Mem.scala 19:27]
      data-type => SInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_data_out_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = eq(io_load, UInt<1>("h1")) @[Data_Mem.scala 22:22]
    node _io_data_out_T = bits(io_addr, 9, 0) @[Data_Mem.scala 23:45]
    node _T_1 = eq(io_store, UInt<1>("h1")) @[Data_Mem.scala 24:29]
    node _T_2 = bits(io_addr, 9, 0)
    node _GEN_0 = validif(_T_1, _T_2) @[Data_Mem.scala 24:37]
    node _GEN_1 = validif(_T_1, clock) @[Data_Mem.scala 24:37]
    node _GEN_2 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[Data_Mem.scala 24:37 Data_Mem.scala 19:27]
    node _GEN_3 = validif(_T_1, UInt<1>("h1")) @[Data_Mem.scala 24:37]
    node _GEN_4 = validif(_T_1, io_data_in) @[Data_Mem.scala 24:37]
    node _GEN_5 = validif(_T_1, asSInt(UInt<1>("h0"))) @[Data_Mem.scala 24:37 Data_Mem.scala 20:21]
    node _GEN_6 = validif(_T, _io_data_out_T) @[Data_Mem.scala 22:30 Data_Mem.scala 23:45]
    node _GEN_7 = validif(_T, clock) @[Data_Mem.scala 22:30 Data_Mem.scala 23:45]
    node _GEN_8 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[Data_Mem.scala 22:30 Data_Mem.scala 23:45 Data_Mem.scala 19:27]
    node _GEN_9 = mux(_T, data_Mem.io_data_out_MPORT.data, _GEN_5) @[Data_Mem.scala 22:30 Data_Mem.scala 23:29]
    node _GEN_10 = validif(eq(_T, UInt<1>("h0")), _GEN_0) @[Data_Mem.scala 22:30]
    node _GEN_11 = validif(eq(_T, UInt<1>("h0")), _GEN_1) @[Data_Mem.scala 22:30]
    node _GEN_12 = mux(_T, UInt<1>("h0"), _GEN_2) @[Data_Mem.scala 22:30 Data_Mem.scala 19:27]
    node _GEN_13 = validif(eq(_T, UInt<1>("h0")), _GEN_3) @[Data_Mem.scala 22:30]
    node _GEN_14 = validif(eq(_T, UInt<1>("h0")), _GEN_4) @[Data_Mem.scala 22:30]
    io_data_out <= _GEN_9
    data_Mem.io_data_out_MPORT.addr <= _GEN_6
    data_Mem.io_data_out_MPORT.en <= _GEN_8
    data_Mem.io_data_out_MPORT.clk <= _GEN_7
    data_Mem.MPORT.addr <= _GEN_10
    data_Mem.MPORT.en <= _GEN_12
    data_Mem.MPORT.clk <= _GEN_11
    data_Mem.MPORT.data <= _GEN_14
    data_Mem.MPORT.mask <= _GEN_13
