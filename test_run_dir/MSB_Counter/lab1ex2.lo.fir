circuit lab1ex2 :
  module lab1ex2 :
    input clock : Clock
    input reset : UInt<1>
    output io_result : UInt<1>

    node _max_T = shl(UInt<1>("h1"), 8) @[lab1ex2.scala 10:20]
    node _max_T_1 = sub(_max_T, UInt<1>("h1")) @[lab1ex2.scala 10:36]
    node max = tail(_max_T_1, 1) @[lab1ex2.scala 10:36]
    reg count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), count) @[lab1ex2.scala 11:24]
    node _T = eq(count, max) @[lab1ex2.scala 13:16]
    node _count_T = add(count, UInt<1>("h1")) @[lab1ex2.scala 17:24]
    node _count_T_1 = tail(_count_T, 1) @[lab1ex2.scala 17:24]
    node _GEN_0 = mux(_T, count, _count_T_1) @[lab1ex2.scala 13:24 lab1ex2.scala 11:24 lab1ex2.scala 17:15]
    node _T_1 = dshr(count, UInt<2>("h3")) @[lab1ex2.scala 19:15]
    node _T_2 = bits(_T_1, 0, 0) @[lab1ex2.scala 19:15]
    node _T_3 = eq(_T_2, UInt<1>("h1")) @[lab1ex2.scala 19:21]
    node _GEN_1 = mux(_T_3, UInt<1>("h0"), _GEN_0) @[lab1ex2.scala 19:29 lab1ex2.scala 20:15]
    node _io_result_T = dshr(count, UInt<2>("h3")) @[lab1ex2.scala 22:23]
    node _io_result_T_1 = bits(_io_result_T, 0, 0) @[lab1ex2.scala 22:23]
    io_result <= _io_result_T_1 @[lab1ex2.scala 22:15]
    count <= mux(reset, UInt<4>("h0"), _GEN_1) @[lab1ex2.scala 11:24 lab1ex2.scala 11:24]
