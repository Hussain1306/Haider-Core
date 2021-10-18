circuit taskcounter :
  module taskcounter :
    input clock : Clock
    input reset : UInt<1>
    output io_result : UInt<1>

    reg counter1 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), counter1) @[taskcounter.scala 11:28]
    node _counter1_T = eq(counter1, UInt<3>("h7")) @[taskcounter.scala 12:21]
    node _counter1_count_T = add(counter1, UInt<1>("h1")) @[taskcounter.scala 16:28]
    node _counter1_count_T_1 = tail(_counter1_count_T, 1) @[taskcounter.scala 16:28]
    node _GEN_0 = mux(_counter1_T, UInt<1>("h0"), _counter1_count_T_1) @[taskcounter.scala 12:36 taskcounter.scala 13:19 taskcounter.scala 16:19]
    node _io_result_T = bits(counter1, 2, 2) @[taskcounter.scala 21:26]
    io_result <= _io_result_T @[taskcounter.scala 21:15]
    counter1 <= mux(reset, UInt<3>("h0"), _GEN_0) @[taskcounter.scala 11:28 taskcounter.scala 11:28]
