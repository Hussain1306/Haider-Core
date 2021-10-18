;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab2ex3 : 
  module lab2ex3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in0 : UInt<2>, flip in1 : UInt<2>, flip in2 : UInt<2>, flip in3 : UInt<2>, flip s : UInt<4>, r : UInt<2>}
    
    node _io_r_T = bits(io.s, 0, 0) @[Mux.scala 29:36]
    node _io_r_T_1 = bits(io.s, 1, 1) @[Mux.scala 29:36]
    node _io_r_T_2 = bits(io.s, 2, 2) @[Mux.scala 29:36]
    node _io_r_T_3 = bits(io.s, 3, 3) @[Mux.scala 29:36]
    node _io_r_T_4 = mux(_io_r_T, io.in0, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_r_T_5 = mux(_io_r_T_1, io.in1, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_r_T_6 = mux(_io_r_T_2, io.in2, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_r_T_7 = mux(_io_r_T_3, io.in3, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_r_T_8 = or(_io_r_T_4, _io_r_T_5) @[Mux.scala 27:72]
    node _io_r_T_9 = or(_io_r_T_8, _io_r_T_6) @[Mux.scala 27:72]
    node _io_r_T_10 = or(_io_r_T_9, _io_r_T_7) @[Mux.scala 27:72]
    wire _io_r_WIRE : UInt<2> @[Mux.scala 27:72]
    _io_r_WIRE <= _io_r_T_10 @[Mux.scala 27:72]
    io.r <= _io_r_WIRE @[lab2ex3.scala 16:10]
    
