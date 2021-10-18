circuit lab6task4 :
  module lab6task4 :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<4>

    reg up_down : UInt<1>, clock with :
      reset => (UInt<1>("h0"), up_down) @[lab6task4.scala 12:26]
    reg counter : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter) @[lab6task4.scala 13:26]
    node _T = eq(counter, UInt<4>("h9")) @[lab6task4.scala 16:22]
    node _counter_T = sub(counter, UInt<1>("h1")) @[lab6task4.scala 18:32]
    node _counter_T_1 = tail(_counter_T, 1) @[lab6task4.scala 18:32]
    node _counter_T_2 = add(counter, UInt<1>("h1")) @[lab6task4.scala 20:32]
    node _counter_T_3 = tail(_counter_T_2, 1) @[lab6task4.scala 20:32]
    node _GEN_0 = mux(_T, UInt<1>("h0"), up_down) @[lab6task4.scala 16:32 lab6task4.scala 17:21 lab6task4.scala 12:26]
    node _GEN_1 = mux(_T, _counter_T_1, _counter_T_3) @[lab6task4.scala 16:32 lab6task4.scala 18:21 lab6task4.scala 20:21]
    node _T_1 = eq(counter, UInt<1>("h0")) @[lab6task4.scala 23:24]
    node _counter_T_4 = add(counter, UInt<1>("h1")) @[lab6task4.scala 25:34]
    node _counter_T_5 = tail(_counter_T_4, 1) @[lab6task4.scala 25:34]
    node _counter_T_6 = sub(counter, UInt<1>("h1")) @[lab6task4.scala 27:34]
    node _counter_T_7 = tail(_counter_T_6, 1) @[lab6task4.scala 27:34]
    node _GEN_2 = mux(_T_1, UInt<1>("h1"), up_down) @[lab6task4.scala 23:32 lab6task4.scala 24:23 lab6task4.scala 12:26]
    node _GEN_3 = mux(_T_1, _counter_T_5, _counter_T_7) @[lab6task4.scala 23:32 lab6task4.scala 25:23 lab6task4.scala 27:23]
    node _GEN_4 = mux(up_down, _GEN_0, _GEN_2) @[lab6task4.scala 15:18]
    node _GEN_5 = mux(up_down, _GEN_1, _GEN_3) @[lab6task4.scala 15:18]
    io_out <= counter @[lab6task4.scala 30:12]
    up_down <= mux(reset, UInt<1>("h1"), _GEN_4) @[lab6task4.scala 12:26 lab6task4.scala 12:26]
    counter <= mux(reset, UInt<4>("h0"), _GEN_5) @[lab6task4.scala 13:26 lab6task4.scala 13:26]
