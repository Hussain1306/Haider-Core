circuit counter :
  module counter :
    input clock : Clock
    input reset : UInt<1>
    output io_o : UInt<16>

    node _max_T = dshl(UInt<1>("h1"), UInt<2>("h3")) @[counter.scala 9:20]
    node _max_T_1 = sub(_max_T, UInt<1>("h1")) @[counter.scala 9:36]
    node max = tail(_max_T_1, 1) @[counter.scala 9:36]
    reg count : UInt<16>, clock with :
      reset => (UInt<1>("h0"), count) @[counter.scala 10:26]
    node _T = eq(count, max) @[counter.scala 12:18]
    node _count_T = add(count, UInt<1>("h1")) @[counter.scala 15:24]
    node _count_T_1 = tail(_count_T, 1) @[counter.scala 15:24]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _count_T_1) @[counter.scala 12:28 counter.scala 13:15 counter.scala 15:15]
    node _io_o_T = dshr(count, UInt<4>("hf")) @[counter.scala 17:19]
    node _io_o_T_1 = bits(_io_o_T, 0, 0) @[counter.scala 17:19]
    io_o <= _io_o_T_1 @[counter.scala 17:10]
    count <= mux(reset, UInt<16>("h0"), _GEN_0) @[counter.scala 10:26 counter.scala 10:26]
