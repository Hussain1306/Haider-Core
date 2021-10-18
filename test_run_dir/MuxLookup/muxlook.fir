;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit muxlook : 
  module muxlook : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip i0 : UInt<1>, flip i1 : UInt<1>, flip i2 : UInt<1>, flip i3 : UInt<1>, flip i4 : UInt<1>, flip i5 : UInt<1>, flip i6 : UInt<1>, flip i7 : UInt<1>, flip s : UInt<3>, o : UInt<1>}
    
    node _io_o_T = eq(UInt<1>("h01"), io.s) @[Mux.scala 80:60]
    node _io_o_T_1 = mux(_io_o_T, io.i1, io.i0) @[Mux.scala 80:57]
    node _io_o_T_2 = eq(UInt<2>("h02"), io.s) @[Mux.scala 80:60]
    node _io_o_T_3 = mux(_io_o_T_2, io.i2, _io_o_T_1) @[Mux.scala 80:57]
    node _io_o_T_4 = eq(UInt<2>("h03"), io.s) @[Mux.scala 80:60]
    node _io_o_T_5 = mux(_io_o_T_4, io.i3, _io_o_T_3) @[Mux.scala 80:57]
    node _io_o_T_6 = eq(UInt<3>("h04"), io.s) @[Mux.scala 80:60]
    node _io_o_T_7 = mux(_io_o_T_6, io.i4, _io_o_T_5) @[Mux.scala 80:57]
    node _io_o_T_8 = eq(UInt<3>("h05"), io.s) @[Mux.scala 80:60]
    node _io_o_T_9 = mux(_io_o_T_8, io.i5, _io_o_T_7) @[Mux.scala 80:57]
    node _io_o_T_10 = eq(UInt<3>("h06"), io.s) @[Mux.scala 80:60]
    node _io_o_T_11 = mux(_io_o_T_10, io.i6, _io_o_T_9) @[Mux.scala 80:57]
    node _io_o_T_12 = eq(UInt<3>("h07"), io.s) @[Mux.scala 80:60]
    node _io_o_T_13 = mux(_io_o_T_12, io.i7, _io_o_T_11) @[Mux.scala 80:57]
    io.o <= _io_o_T_13 @[muxlook.scala 20:10]
    
