circuit lab8ex1 :
  module lab8ex1 :
    input clock : Clock
    input reset : UInt<1>
    input io_enable : UInt<1>
    input io_write : UInt<1>
    input io_addr : UInt<10>
    input io_mask_0 : UInt<1>
    input io_mask_1 : UInt<1>
    input io_mask_2 : UInt<1>
    input io_mask_3 : UInt<1>
    input io_dataIn_0 : UInt<8>
    input io_dataIn_1 : UInt<8>
    input io_dataIn_2 : UInt<8>
    input io_dataIn_3 : UInt<8>
    output io_dataOut_0 : UInt<8>
    output io_dataOut_1 : UInt<8>
    output io_dataOut_2 : UInt<8>
    output io_dataOut_3 : UInt<8>

    mem mem_0 : @[lab8ex1.scala 18:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_1 : @[lab8ex1.scala 18:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_2 : @[lab8ex1.scala 18:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_3 : @[lab8ex1.scala 18:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    reg a_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), a_0) @[lab8ex1.scala 19:17]
    reg a_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), a_1) @[lab8ex1.scala 19:17]
    reg a_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), a_2) @[lab8ex1.scala 19:17]
    reg a_3 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), a_3) @[lab8ex1.scala 19:17]
    node _a_0_T = and(io_dataIn_0, io_mask_0) @[lab8ex1.scala 20:26]
    node _a_1_T = and(io_dataIn_1, io_mask_1) @[lab8ex1.scala 21:26]
    node _a_2_T = and(io_dataIn_2, io_mask_2) @[lab8ex1.scala 22:26]
    node _a_3_T = and(io_dataIn_3, io_mask_3) @[lab8ex1.scala 23:26]
    node _GEN_0 = validif(io_write, io_addr) @[lab8ex1.scala 25:19]
    node _GEN_1 = validif(io_write, clock) @[lab8ex1.scala 25:19]
    node _GEN_2 = mux(io_write, UInt<1>("h1"), UInt<1>("h0")) @[lab8ex1.scala 25:19 lab8ex1.scala 18:26]
    node _GEN_3 = validif(io_write, UInt<1>("h1")) @[lab8ex1.scala 25:19]
    node _GEN_4 = validif(io_write, a_0) @[lab8ex1.scala 25:19]
    node _GEN_5 = validif(io_write, a_1) @[lab8ex1.scala 25:19]
    node _GEN_6 = validif(io_write, a_2) @[lab8ex1.scala 25:19]
    node _GEN_7 = validif(io_write, a_3) @[lab8ex1.scala 25:19]
    node _GEN_8 = validif(io_enable, io_addr) @[lab8ex1.scala 29:27 lab8ex1.scala 29:27]
    node _WIRE = _GEN_8 @[lab8ex1.scala 29:27]
    node _T = or(_WIRE, UInt<10>("h0")) @[lab8ex1.scala 29:27]
    node _T_1 = bits(_T, 9, 0) @[lab8ex1.scala 29:27]
    node _GEN_9 = mux(io_enable, UInt<1>("h1"), UInt<1>("h0")) @[lab8ex1.scala 29:27 lab8ex1.scala 29:27 lab8ex1.scala 18:26]
    node _GEN_10 = validif(io_enable, _T_1) @[lab8ex1.scala 29:27 lab8ex1.scala 29:27]
    node _GEN_11 = validif(io_enable, clock) @[lab8ex1.scala 29:27 lab8ex1.scala 29:27]
    io_dataOut_0 <= mem_0.MPORT_1.data @[lab8ex1.scala 29:16]
    io_dataOut_1 <= mem_1.MPORT_1.data @[lab8ex1.scala 29:16]
    io_dataOut_2 <= mem_2.MPORT_1.data @[lab8ex1.scala 29:16]
    io_dataOut_3 <= mem_3.MPORT_1.data @[lab8ex1.scala 29:16]
    mem_0.MPORT_1.addr <= _GEN_10
    mem_1.MPORT_1.addr <= _GEN_10
    mem_2.MPORT_1.addr <= _GEN_10
    mem_3.MPORT_1.addr <= _GEN_10
    mem_0.MPORT_1.en <= _GEN_9
    mem_1.MPORT_1.en <= _GEN_9
    mem_2.MPORT_1.en <= _GEN_9
    mem_3.MPORT_1.en <= _GEN_9
    mem_0.MPORT_1.clk <= _GEN_11
    mem_1.MPORT_1.clk <= _GEN_11
    mem_2.MPORT_1.clk <= _GEN_11
    mem_3.MPORT_1.clk <= _GEN_11
    mem_0.MPORT.addr <= _GEN_0
    mem_1.MPORT.addr <= _GEN_0
    mem_2.MPORT.addr <= _GEN_0
    mem_3.MPORT.addr <= _GEN_0
    mem_0.MPORT.en <= _GEN_2
    mem_1.MPORT.en <= _GEN_2
    mem_2.MPORT.en <= _GEN_2
    mem_3.MPORT.en <= _GEN_2
    mem_0.MPORT.clk <= _GEN_1
    mem_1.MPORT.clk <= _GEN_1
    mem_2.MPORT.clk <= _GEN_1
    mem_3.MPORT.clk <= _GEN_1
    mem_0.MPORT.data <= _GEN_4
    mem_1.MPORT.data <= _GEN_5
    mem_2.MPORT.data <= _GEN_6
    mem_3.MPORT.data <= _GEN_7
    mem_0.MPORT.mask <= _GEN_3
    mem_1.MPORT.mask <= _GEN_3
    mem_2.MPORT.mask <= _GEN_3
    mem_3.MPORT.mask <= _GEN_3
    a_0 <= _a_0_T @[lab8ex1.scala 20:10]
    a_1 <= _a_1_T @[lab8ex1.scala 21:10]
    a_2 <= _a_2_T @[lab8ex1.scala 22:10]
    a_3 <= _a_3_T @[lab8ex1.scala 23:10]
