circuit lab7ex1 :
  module Queue :
    input clock : Clock
    input reset : UInt<1>
    output io_enq_ready : UInt<1>
    input io_enq_valid : UInt<1>
    input io_enq_bits : UInt<8>
    input io_deq_ready : UInt<1>
    output io_deq_valid : UInt<1>
    output io_deq_bits : UInt<8>
    output io_count : UInt<2>

    mem ram : @[Decoupled.scala 218:16]
      data-type => UInt<8>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => io_deq_bits_MPORT
      writer => MPORT
      read-under-write => undefined
    reg value : UInt<1>, clock with :
      reset => (UInt<1>("h0"), value) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), value_1) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37]
    node _do_deq_T = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37]
    node wrap = eq(value, UInt<1>("h1")) @[Counter.scala 72:24]
    node _value_T = add(value, UInt<1>("h1")) @[Counter.scala 76:24]
    node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
    node do_enq = _do_enq_T
    node _GEN_0 = validif(do_enq, value) @[Decoupled.scala 229:17 Decoupled.scala 230:8]
    node _GEN_1 = validif(do_enq, clock) @[Decoupled.scala 229:17 Decoupled.scala 230:8]
    node _GEN_2 = mux(do_enq, UInt<1>("h1"), UInt<1>("h0")) @[Decoupled.scala 229:17 Decoupled.scala 230:8 Decoupled.scala 218:16]
    node _GEN_3 = validif(do_enq, UInt<1>("h1")) @[Decoupled.scala 229:17 Decoupled.scala 230:24]
    node _GEN_4 = validif(do_enq, io_enq_bits) @[Decoupled.scala 229:17 Decoupled.scala 230:24]
    node _GEN_5 = mux(do_enq, _value_T_1, value) @[Decoupled.scala 229:17 Counter.scala 76:15 Counter.scala 60:40]
    node wrap_1 = eq(value_1, UInt<1>("h1")) @[Counter.scala 72:24]
    node _value_T_2 = add(value_1, UInt<1>("h1")) @[Counter.scala 76:24]
    node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
    node do_deq = _do_deq_T
    node _GEN_6 = mux(do_deq, _value_T_3, value_1) @[Decoupled.scala 233:17 Counter.scala 76:15 Counter.scala 60:40]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    node _GEN_7 = mux(_T, do_enq, maybe_full) @[Decoupled.scala 236:28 Decoupled.scala 237:16 Decoupled.scala 221:27]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 240:19]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 241:19]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h2"), UInt<1>("h0")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io_enq_ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    io_deq_valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    io_deq_bits <= ram.io_deq_bits_MPORT.data @[Decoupled.scala 242:15]
    io_count <= _io_count_T_2 @[Decoupled.scala 259:14]
    ram.io_deq_bits_MPORT.addr <= value_1 @[Decoupled.scala 242:21]
    ram.io_deq_bits_MPORT.en <= UInt<1>("h1") @[Decoupled.scala 242:21]
    ram.io_deq_bits_MPORT.clk <= clock @[Decoupled.scala 242:21]
    ram.MPORT.addr <= _GEN_0
    ram.MPORT.en <= _GEN_2
    ram.MPORT.clk <= _GEN_1
    ram.MPORT.data <= _GEN_4
    ram.MPORT.mask <= _GEN_3
    value <= mux(reset, UInt<1>("h0"), _GEN_5) @[Counter.scala 60:40 Counter.scala 60:40]
    value_1 <= mux(reset, UInt<1>("h0"), _GEN_6) @[Counter.scala 60:40 Counter.scala 60:40]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_7) @[Decoupled.scala 221:27 Decoupled.scala 221:27]

  module Arbiter :
    input clock : Clock
    input reset : UInt<1>
    output io_in_0_ready : UInt<1>
    input io_in_0_valid : UInt<1>
    input io_in_0_bits : UInt<8>
    output io_in_1_ready : UInt<1>
    input io_in_1_valid : UInt<1>
    input io_in_1_bits : UInt<8>
    input io_out_ready : UInt<1>
    output io_out_valid : UInt<1>
    output io_out_bits : UInt<8>
    output io_chosen : UInt<1>

    node _GEN_0 = mux(io_in_0_valid, UInt<1>("h0"), UInt<1>("h1")) @[Arbiter.scala 126:27 Arbiter.scala 127:17 Arbiter.scala 123:13]
    node _GEN_1 = mux(io_in_0_valid, io_in_0_bits, io_in_1_bits) @[Arbiter.scala 126:27 Arbiter.scala 128:19 Arbiter.scala 124:15]
    node grant_1 = eq(io_in_0_valid, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node _io_in_0_ready_T = and(UInt<1>("h1"), io_out_ready) @[Arbiter.scala 134:19]
    node _io_in_1_ready_T = and(grant_1, io_out_ready) @[Arbiter.scala 134:19]
    node _io_out_valid_T = eq(grant_1, UInt<1>("h0")) @[Arbiter.scala 135:19]
    node _io_out_valid_T_1 = or(_io_out_valid_T, io_in_1_valid) @[Arbiter.scala 135:31]
    io_in_0_ready <= _io_in_0_ready_T @[Arbiter.scala 134:14]
    io_in_1_ready <= _io_in_1_ready_T @[Arbiter.scala 134:14]
    io_out_valid <= _io_out_valid_T_1 @[Arbiter.scala 135:16]
    io_out_bits <= _GEN_1
    io_chosen <= _GEN_0

  module lab7ex1 :
    input clock : Clock
    input reset : UInt<1>
    output io_in_ready : UInt<1>
    input io_in_valid : UInt<1>
    input io_in_bits : UInt<8>
    output io_in2_ready : UInt<1>
    input io_in2_valid : UInt<1>
    input io_in2_bits : UInt<8>
    input io_consumer_ready : UInt<1>
    output io_consumer_valid : UInt<1>
    output io_consumer_bits : UInt<8>

    inst producer_q1 of Queue @[Decoupled.scala 296:21]
    inst producer_q2 of Queue @[Decoupled.scala 296:21]
    inst arb of Arbiter @[lab7ex1.scala 17:21]
    io_in_ready <= producer_q1.io_enq_ready @[Decoupled.scala 299:17]
    io_in2_ready <= producer_q2.io_enq_ready @[Decoupled.scala 299:17]
    io_consumer_valid <= arb.io_out_valid @[lab7ex1.scala 22:17]
    io_consumer_bits <= arb.io_out_bits @[lab7ex1.scala 22:17]
    producer_q1.clock <= clock
    producer_q1.reset <= reset
    producer_q1.io_enq_valid <= io_in_valid @[Decoupled.scala 297:22]
    producer_q1.io_enq_bits <= io_in_bits @[Decoupled.scala 298:21]
    producer_q1.io_deq_ready <= arb.io_in_1_ready @[lab7ex1.scala 20:18]
    producer_q2.clock <= clock
    producer_q2.reset <= reset
    producer_q2.io_enq_valid <= io_in2_valid @[Decoupled.scala 297:22]
    producer_q2.io_enq_bits <= io_in2_bits @[Decoupled.scala 298:21]
    producer_q2.io_deq_ready <= arb.io_in_0_ready @[lab7ex1.scala 19:18]
    arb.clock <= clock
    arb.reset <= reset
    arb.io_in_0_valid <= producer_q2.io_deq_valid @[lab7ex1.scala 19:18]
    arb.io_in_0_bits <= producer_q2.io_deq_bits @[lab7ex1.scala 19:18]
    arb.io_in_1_valid <= producer_q1.io_deq_valid @[lab7ex1.scala 20:18]
    arb.io_in_1_bits <= producer_q1.io_deq_bits @[lab7ex1.scala 20:18]
    arb.io_out_ready <= io_consumer_ready @[lab7ex1.scala 22:17]
