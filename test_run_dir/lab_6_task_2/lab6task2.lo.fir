circuit lab6task2 :
  module lab6task2 :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<3>

    reg count : UInt<6>, clock with :
      reset => (UInt<1>("h0"), count) @[lab6task2.scala 12:24]
    node _T = eq(count, UInt<5>("h10")) @[lab6task2.scala 13:16]
    node _count_T = xor(count, UInt<1>("h1")) @[lab6task2.scala 16:24]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _count_T) @[lab6task2.scala 13:25 lab6task2.scala 14:15 lab6task2.scala 16:15]
    io_out <= bits(count, 2, 0) @[lab6task2.scala 18:12]
    count <= mux(reset, UInt<6>("h0"), _GEN_0) @[lab6task2.scala 12:24 lab6task2.scala 12:24]
