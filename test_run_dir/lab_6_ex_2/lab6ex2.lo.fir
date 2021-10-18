circuit lab6ex2 :
  module lab6ex2 :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<2>

    reg counter : UInt<2>, clock with :
      reset => (UInt<1>("h0"), counter) @[lab6ex2.scala 12:26]
    node _count_buffer_T = add(counter, UInt<1>("h1")) @[lab6ex2.scala 14:68]
    node _count_buffer_T_1 = tail(_count_buffer_T, 1) @[lab6ex2.scala 14:68]
    node _count_buffer_T_2 = eq(counter, UInt<3>("h4")) @[lab6ex2.scala 15:17]
    node _count_buffer_T_3 = add(counter, UInt<1>("h1")) @[lab6ex2.scala 15:45]
    node _count_buffer_T_4 = tail(_count_buffer_T_3, 1) @[lab6ex2.scala 15:45]
    node _count_buffer_T_5 = mux(_count_buffer_T_2, UInt<1>("h0"), _count_buffer_T_4) @[lab6ex2.scala 15:8]
    node count_buffer = mux(UInt<1>("h1"), _count_buffer_T_1, _count_buffer_T_5) @[lab6ex2.scala 14:27]
    io_out <= counter @[lab6ex2.scala 18:12]
    counter <= mux(reset, UInt<2>("h0"), count_buffer) @[lab6ex2.scala 12:26 lab6ex2.scala 12:26 lab6ex2.scala 17:13]
