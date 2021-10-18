;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab8task1 : 
  module Arbiter : 
    input clock : Clock
    input reset : Reset
    output io : {flip in : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt}[4], out : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt}, chosen : UInt<2>}
    
    io.chosen <= UInt<2>("h03") @[Arbiter.scala 123:13]
    io.out.bits <= io.in[3].bits @[Arbiter.scala 124:15]
    when io.in[2].valid : @[Arbiter.scala 126:27]
      io.chosen <= UInt<2>("h02") @[Arbiter.scala 127:17]
      io.out.bits <= io.in[2].bits @[Arbiter.scala 128:19]
      skip @[Arbiter.scala 126:27]
    when io.in[1].valid : @[Arbiter.scala 126:27]
      io.chosen <= UInt<1>("h01") @[Arbiter.scala 127:17]
      io.out.bits <= io.in[1].bits @[Arbiter.scala 128:19]
      skip @[Arbiter.scala 126:27]
    when io.in[0].valid : @[Arbiter.scala 126:27]
      io.chosen <= UInt<1>("h00") @[Arbiter.scala 127:17]
      io.out.bits <= io.in[0].bits @[Arbiter.scala 128:19]
      skip @[Arbiter.scala 126:27]
    node _grant_T = or(io.in[0].valid, io.in[1].valid) @[Arbiter.scala 31:68]
    node _grant_T_1 = or(_grant_T, io.in[2].valid) @[Arbiter.scala 31:68]
    node grant_1 = eq(io.in[0].valid, UInt<1>("h00")) @[Arbiter.scala 31:78]
    node grant_2 = eq(_grant_T, UInt<1>("h00")) @[Arbiter.scala 31:78]
    node grant_3 = eq(_grant_T_1, UInt<1>("h00")) @[Arbiter.scala 31:78]
    node _io_in_0_ready_T = and(UInt<1>("h01"), io.out.ready) @[Arbiter.scala 134:19]
    io.in[0].ready <= _io_in_0_ready_T @[Arbiter.scala 134:14]
    node _io_in_1_ready_T = and(grant_1, io.out.ready) @[Arbiter.scala 134:19]
    io.in[1].ready <= _io_in_1_ready_T @[Arbiter.scala 134:14]
    node _io_in_2_ready_T = and(grant_2, io.out.ready) @[Arbiter.scala 134:19]
    io.in[2].ready <= _io_in_2_ready_T @[Arbiter.scala 134:14]
    node _io_in_3_ready_T = and(grant_3, io.out.ready) @[Arbiter.scala 134:19]
    io.in[3].ready <= _io_in_3_ready_T @[Arbiter.scala 134:14]
    node _io_out_valid_T = eq(grant_3, UInt<1>("h00")) @[Arbiter.scala 135:19]
    node _io_out_valid_T_1 = or(_io_out_valid_T, io.in[3].valid) @[Arbiter.scala 135:31]
    io.out.valid <= _io_out_valid_T_1 @[Arbiter.scala 135:16]
    
  module Queue : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module Queue_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module Queue_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module Queue_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip enq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, deq : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}, count : UInt<2>}
    
    cmem ram : UInt<32>[2] @[Decoupled.scala 218:16]
    reg value : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg value_1 : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h00")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 40:37]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 40:37]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 229:17]
      infer mport MPORT = ram[value], clock @[Decoupled.scala 230:8]
      MPORT <= io.enq.bits @[Decoupled.scala 230:24]
      node wrap = eq(value, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T = add(value, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
      value <= _value_T_1 @[Counter.scala 76:15]
      skip @[Decoupled.scala 229:17]
    when do_deq : @[Decoupled.scala 233:17]
      node wrap_1 = eq(value_1, UInt<1>("h01")) @[Counter.scala 72:24]
      node _value_T_2 = add(value_1, UInt<1>("h01")) @[Counter.scala 76:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
      value_1 <= _value_T_3 @[Counter.scala 76:15]
      skip @[Decoupled.scala 233:17]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    when _T : @[Decoupled.scala 236:28]
      maybe_full <= do_enq @[Decoupled.scala 237:16]
      skip @[Decoupled.scala 236:28]
    node _io_deq_valid_T = eq(empty, UInt<1>("h00")) @[Decoupled.scala 240:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h00")) @[Decoupled.scala 241:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    infer mport io_deq_bits_MPORT = ram[value_1], clock @[Decoupled.scala 242:21]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 242:15]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<2>("h02"), UInt<1>("h00")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 259:14]
    
  module lab8task1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {memory_out : UInt<32>[4], flip requestor : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>}[4], flip readaddr : UInt<5>, flip writeaddr : UInt<5>}
    
    smem mem : UInt<32>[4][1024], undefined @[lab8task1.scala 13:26]
    inst arb of Arbiter @[lab8task1.scala 14:21]
    arb.clock <= clock
    arb.reset <= reset
    wire some : {flip ready : UInt<1>, valid : UInt<1>, bits : UInt} @[lab8task1.scala 15:20]
    wire output : UInt[4] @[lab8task1.scala 16:22]
    inst arb_io_in_0_q of Queue @[Decoupled.scala 296:21]
    arb_io_in_0_q.clock <= clock
    arb_io_in_0_q.reset <= reset
    arb_io_in_0_q.io.enq.valid <= io.requestor[0].valid @[Decoupled.scala 297:22]
    arb_io_in_0_q.io.enq.bits <= io.requestor[0].bits @[Decoupled.scala 298:21]
    io.requestor[0].ready <= arb_io_in_0_q.io.enq.ready @[Decoupled.scala 299:17]
    arb.io.in[0].bits <= arb_io_in_0_q.io.deq.bits @[lab8task1.scala 18:18]
    arb.io.in[0].valid <= arb_io_in_0_q.io.deq.valid @[lab8task1.scala 18:18]
    arb_io_in_0_q.io.deq.ready <= arb.io.in[0].ready @[lab8task1.scala 18:18]
    inst arb_io_in_1_q of Queue_1 @[Decoupled.scala 296:21]
    arb_io_in_1_q.clock <= clock
    arb_io_in_1_q.reset <= reset
    arb_io_in_1_q.io.enq.valid <= io.requestor[1].valid @[Decoupled.scala 297:22]
    arb_io_in_1_q.io.enq.bits <= io.requestor[1].bits @[Decoupled.scala 298:21]
    io.requestor[1].ready <= arb_io_in_1_q.io.enq.ready @[Decoupled.scala 299:17]
    arb.io.in[1].bits <= arb_io_in_1_q.io.deq.bits @[lab8task1.scala 19:18]
    arb.io.in[1].valid <= arb_io_in_1_q.io.deq.valid @[lab8task1.scala 19:18]
    arb_io_in_1_q.io.deq.ready <= arb.io.in[1].ready @[lab8task1.scala 19:18]
    inst arb_io_in_2_q of Queue_2 @[Decoupled.scala 296:21]
    arb_io_in_2_q.clock <= clock
    arb_io_in_2_q.reset <= reset
    arb_io_in_2_q.io.enq.valid <= io.requestor[2].valid @[Decoupled.scala 297:22]
    arb_io_in_2_q.io.enq.bits <= io.requestor[2].bits @[Decoupled.scala 298:21]
    io.requestor[2].ready <= arb_io_in_2_q.io.enq.ready @[Decoupled.scala 299:17]
    arb.io.in[2].bits <= arb_io_in_2_q.io.deq.bits @[lab8task1.scala 20:18]
    arb.io.in[2].valid <= arb_io_in_2_q.io.deq.valid @[lab8task1.scala 20:18]
    arb_io_in_2_q.io.deq.ready <= arb.io.in[2].ready @[lab8task1.scala 20:18]
    inst arb_io_in_3_q of Queue_3 @[Decoupled.scala 296:21]
    arb_io_in_3_q.clock <= clock
    arb_io_in_3_q.reset <= reset
    arb_io_in_3_q.io.enq.valid <= io.requestor[3].valid @[Decoupled.scala 297:22]
    arb_io_in_3_q.io.enq.bits <= io.requestor[3].bits @[Decoupled.scala 298:21]
    io.requestor[3].ready <= arb_io_in_3_q.io.enq.ready @[Decoupled.scala 299:17]
    arb.io.in[3].bits <= arb_io_in_3_q.io.deq.bits @[lab8task1.scala 21:18]
    arb.io.in[3].valid <= arb_io_in_3_q.io.deq.valid @[lab8task1.scala 21:18]
    arb_io_in_3_q.io.deq.ready <= arb.io.in[3].ready @[lab8task1.scala 21:18]
    some.bits <= arb.io.out.bits @[lab8task1.scala 23:10]
    some.valid <= arb.io.out.valid @[lab8task1.scala 23:10]
    arb.io.out.ready <= some.ready @[lab8task1.scala 23:10]
    some.ready <= UInt<1>("h01") @[lab8task1.scala 24:16]
    output[0] <= some.bits @[lab8task1.scala 27:15]
    output[1] <= UInt<1>("h00") @[lab8task1.scala 28:15]
    output[2] <= UInt<1>("h00") @[lab8task1.scala 29:15]
    output[3] <= UInt<1>("h00") @[lab8task1.scala 30:15]
    write mport MPORT = mem[io.writeaddr], clock
    MPORT[0] <= output[0]
    MPORT[1] <= output[1]
    MPORT[2] <= output[2]
    MPORT[3] <= output[3]
    read mport MPORT_1 = mem[io.readaddr], clock @[lab8task1.scala 33:30]
    io.memory_out[0] <= MPORT_1[0] @[lab8task1.scala 33:19]
    io.memory_out[1] <= MPORT_1[1] @[lab8task1.scala 33:19]
    io.memory_out[2] <= MPORT_1[2] @[lab8task1.scala 33:19]
    io.memory_out[3] <= MPORT_1[3] @[lab8task1.scala 33:19]
    
