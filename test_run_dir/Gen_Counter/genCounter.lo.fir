circuit genCounter :
  module genCounter :
    input clock : Clock
    input reset : UInt<1>
    output io_result : UInt<1>

    reg counter1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter1) @[gencounter.scala 12:28]
    node _counter1_T = eq(counter1, UInt<3>("h4")) @[gencounter.scala 13:21]
    node _counter1_count_T = add(counter1, UInt<1>("h1")) @[gencounter.scala 16:28]
    node _counter1_count_T_1 = tail(_counter1_count_T, 1) @[gencounter.scala 16:28]
    node _GEN_0 = mux(_counter1_T, UInt<1>("h0"), _counter1_count_T_1) @[gencounter.scala 13:29 gencounter.scala 14:19 gencounter.scala 16:19]
    node _io_result_T = bits(counter1, 3, 3) @[gencounter.scala 22:26]
    io_result <= _io_result_T @[gencounter.scala 22:15]
    counter1 <= mux(reset, UInt<4>("h0"), _GEN_0) @[gencounter.scala 12:28 gencounter.scala 12:28]
