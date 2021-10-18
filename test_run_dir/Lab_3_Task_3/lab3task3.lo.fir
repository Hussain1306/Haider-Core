circuit lab3task3 :
  module lab3task3 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<2>
    output io_out_valid : UInt<1>
    output io_out_bits : UInt<4>

    node _T = eq(UInt<1>("h0"), io_in) @[Conditional.scala 37:30]
    node _T_1 = eq(UInt<1>("h1"), io_in) @[Conditional.scala 37:30]
    node _T_2 = eq(UInt<2>("h2"), io_in) @[Conditional.scala 37:30]
    node _T_3 = eq(UInt<2>("h3"), io_in) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[Conditional.scala 39:67 lab3task3.scala 31:18 lab3task3.scala 14:18]
    node _GEN_1 = mux(_T_3, UInt<4>("h8"), UInt<1>("h0")) @[Conditional.scala 39:67 lab3task3.scala 32:17 lab3task3.scala 15:17]
    node _GEN_2 = mux(_T_2, UInt<1>("h1"), _GEN_0) @[Conditional.scala 39:67 lab3task3.scala 27:18]
    node _GEN_3 = mux(_T_2, UInt<3>("h4"), _GEN_1) @[Conditional.scala 39:67 lab3task3.scala 28:17]
    node _GEN_4 = mux(_T_1, UInt<1>("h1"), _GEN_2) @[Conditional.scala 39:67 lab3task3.scala 23:18]
    node _GEN_5 = mux(_T_1, UInt<2>("h2"), _GEN_3) @[Conditional.scala 39:67 lab3task3.scala 24:17]
    node _GEN_6 = mux(_T, UInt<1>("h1"), _GEN_4) @[Conditional.scala 40:58 lab3task3.scala 19:18]
    node _GEN_7 = mux(_T, UInt<1>("h1"), _GEN_5) @[Conditional.scala 40:58 lab3task3.scala 20:17]
    io_out_valid <= _GEN_6
    io_out_bits <= _GEN_7
