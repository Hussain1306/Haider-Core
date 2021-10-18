circuit MuxLookup :
  module MuxLookup :
    input clock : Clock
    input reset : UInt<1>
    input io_i0 : UInt<1>
    input io_i1 : UInt<1>
    input io_i2 : UInt<1>
    input io_i3 : UInt<1>
    input io_i4 : UInt<1>
    input io_i5 : UInt<1>
    input io_i6 : UInt<1>
    input io_i7 : UInt<1>
    input io_s0 : UInt<1>
    input io_s1 : UInt<1>
    input io_s2 : UInt<1>
    output io_o : UInt<1>

    node _io_o_T = eq(UInt<1>("h1"), io_s2) @[Mux.scala 80:60]
    node _io_o_T_1 = mux(_io_o_T, io_i1, io_i0) @[Mux.scala 80:57]
    node _io_o_T_2 = eq(UInt<1>("h1"), io_s2) @[Mux.scala 80:60]
    node _io_o_T_3 = mux(_io_o_T_2, io_i3, io_i2) @[Mux.scala 80:57]
    node _io_o_T_4 = eq(UInt<1>("h1"), io_s1) @[Mux.scala 80:60]
    node _io_o_T_5 = mux(_io_o_T_4, _io_o_T_3, _io_o_T_1) @[Mux.scala 80:57]
    node _io_o_T_6 = eq(UInt<1>("h1"), io_s2) @[Mux.scala 80:60]
    node _io_o_T_7 = mux(_io_o_T_6, io_i5, io_i4) @[Mux.scala 80:57]
    node _io_o_T_8 = eq(UInt<1>("h1"), io_s2) @[Mux.scala 80:60]
    node _io_o_T_9 = mux(_io_o_T_8, io_i7, io_i6) @[Mux.scala 80:57]
    node _io_o_T_10 = eq(UInt<1>("h1"), io_s1) @[Mux.scala 80:60]
    node _io_o_T_11 = mux(_io_o_T_10, _io_o_T_9, _io_o_T_7) @[Mux.scala 80:57]
    node _io_o_T_12 = eq(UInt<1>("h1"), io_s0) @[Mux.scala 80:60]
    node _io_o_T_13 = mux(_io_o_T_12, _io_o_T_11, _io_o_T_5) @[Mux.scala 80:57]
    io_o <= _io_o_T_13 @[lab2ex2.scala 23:10]
