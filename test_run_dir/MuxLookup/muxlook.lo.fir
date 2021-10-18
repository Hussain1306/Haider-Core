circuit muxlook :
  module muxlook :
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
    input io_s : UInt<3>
    output io_o : UInt<1>

    node _io_o_T = eq(UInt<1>("h1"), io_s) @[Mux.scala 80:60]
    node _io_o_T_1 = mux(_io_o_T, io_i1, io_i0) @[Mux.scala 80:57]
    node _io_o_T_2 = eq(UInt<2>("h2"), io_s) @[Mux.scala 80:60]
    node _io_o_T_3 = mux(_io_o_T_2, io_i2, _io_o_T_1) @[Mux.scala 80:57]
    node _io_o_T_4 = eq(UInt<2>("h3"), io_s) @[Mux.scala 80:60]
    node _io_o_T_5 = mux(_io_o_T_4, io_i3, _io_o_T_3) @[Mux.scala 80:57]
    node _io_o_T_6 = eq(UInt<3>("h4"), io_s) @[Mux.scala 80:60]
    node _io_o_T_7 = mux(_io_o_T_6, io_i4, _io_o_T_5) @[Mux.scala 80:57]
    node _io_o_T_8 = eq(UInt<3>("h5"), io_s) @[Mux.scala 80:60]
    node _io_o_T_9 = mux(_io_o_T_8, io_i5, _io_o_T_7) @[Mux.scala 80:57]
    node _io_o_T_10 = eq(UInt<3>("h6"), io_s) @[Mux.scala 80:60]
    node _io_o_T_11 = mux(_io_o_T_10, io_i6, _io_o_T_9) @[Mux.scala 80:57]
    node _io_o_T_12 = eq(UInt<3>("h7"), io_s) @[Mux.scala 80:60]
    node _io_o_T_13 = mux(_io_o_T_12, io_i7, _io_o_T_11) @[Mux.scala 80:57]
    io_o <= _io_o_T_13 @[muxlook.scala 20:10]
