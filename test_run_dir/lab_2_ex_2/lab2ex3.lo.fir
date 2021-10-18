circuit lab2ex3 :
  module lab2ex3 :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<2>
    input io_in1 : UInt<2>
    input io_in2 : UInt<2>
    input io_in3 : UInt<2>
    input io_s : UInt<4>
    output io_r : UInt<2>

    node _io_r_T = bits(io_s, 0, 0) @[Mux.scala 29:36]
    node _io_r_T_1 = bits(io_s, 1, 1) @[Mux.scala 29:36]
    node _io_r_T_2 = bits(io_s, 2, 2) @[Mux.scala 29:36]
    node _io_r_T_3 = bits(io_s, 3, 3) @[Mux.scala 29:36]
    node _io_r_T_4 = mux(_io_r_T, io_in0, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_r_T_5 = mux(_io_r_T_1, io_in1, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_r_T_6 = mux(_io_r_T_2, io_in2, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_r_T_7 = mux(_io_r_T_3, io_in3, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_r_T_8 = or(_io_r_T_4, _io_r_T_5) @[Mux.scala 27:72]
    node _io_r_T_9 = or(_io_r_T_8, _io_r_T_6) @[Mux.scala 27:72]
    node _io_r_T_10 = or(_io_r_T_9, _io_r_T_7) @[Mux.scala 27:72]
    node _io_r_WIRE = _io_r_T_10 @[Mux.scala 27:72 Mux.scala 27:72]
    io_r <= _io_r_WIRE @[lab2ex3.scala 16:10]
