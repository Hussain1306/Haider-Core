circuit secondtask :
  module secondtask :
    input clock : Clock
    input reset : UInt<1>
    output io_c : UInt<1>

    reg indicate : UInt<1>, clock with :
      reset => (UInt<1>("h0"), indicate) @[secondtask.scala 12:27]
    reg count : UInt<12>, clock with :
      reset => (UInt<1>("h0"), count) @[secondtask.scala 13:24]
    node _T = eq(indicate, UInt<1>("h1")) @[secondtask.scala 16:19]
    node _T_1 = eq(count, UInt<3>("h6")) @[secondtask.scala 17:20]
    node _count_T = sub(count, UInt<1>("h1")) @[secondtask.scala 20:28]
    node _count_T_1 = tail(_count_T, 1) @[secondtask.scala 20:28]
    node _count_T_2 = add(count, UInt<1>("h1")) @[secondtask.scala 23:28]
    node _count_T_3 = tail(_count_T_2, 1) @[secondtask.scala 23:28]
    node _GEN_0 = mux(_T_1, UInt<1>("h0"), indicate) @[secondtask.scala 17:33 secondtask.scala 19:22 secondtask.scala 12:27]
    node _GEN_1 = mux(_T_1, _count_T_1, _count_T_3) @[secondtask.scala 17:33 secondtask.scala 20:19 secondtask.scala 23:19]
    node _T_2 = eq(count, UInt<1>("h0")) @[secondtask.scala 27:16]
    node _count_T_4 = add(count, UInt<1>("h1")) @[secondtask.scala 30:24]
    node _count_T_5 = tail(_count_T_4, 1) @[secondtask.scala 30:24]
    node _count_T_6 = sub(count, UInt<1>("h1")) @[secondtask.scala 33:24]
    node _count_T_7 = tail(_count_T_6, 1) @[secondtask.scala 33:24]
    node _GEN_2 = mux(_T_2, UInt<1>("h1"), indicate) @[secondtask.scala 27:24 secondtask.scala 29:18 secondtask.scala 12:27]
    node _GEN_3 = mux(_T_2, _count_T_5, _count_T_7) @[secondtask.scala 27:24 secondtask.scala 30:15 secondtask.scala 33:15]
    node _GEN_4 = mux(_T, _GEN_0, _GEN_2) @[secondtask.scala 16:30]
    node _GEN_5 = mux(_T, _GEN_1, _GEN_3) @[secondtask.scala 16:30]
    node _io_c_T = bits(count, 0, 0) @[secondtask.scala 36:18]
    io_c <= _io_c_T @[secondtask.scala 36:10]
    indicate <= mux(reset, UInt<1>("h1"), _GEN_4) @[secondtask.scala 12:27 secondtask.scala 12:27]
    count <= mux(reset, UInt<12>("h0"), _GEN_5) @[secondtask.scala 13:24 secondtask.scala 13:24]
