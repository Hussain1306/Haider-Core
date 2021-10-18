circuit Alu_Control :
  module Alu_Control :
    input clock : Clock
    input reset : UInt<1>
    input io_ALUop : UInt<5>
    input io_func7 : UInt<1>
    input io_func3 : UInt<5>
    output io_ALUcont : UInt<4>

    node _T = eq(io_ALUop, UInt<1>("h0")) @[Alu_Control.scala 16:31]
    node _T_1 = eq(io_func7, UInt<1>("h0")) @[Alu_Control.scala 17:42]
    node _io_ALUcont_T = eq(io_func3, UInt<1>("h0")) @[Alu_Control.scala 19:46]
    node _io_ALUcont_T_1 = eq(io_func3, UInt<3>("h7")) @[Alu_Control.scala 20:46]
    node _io_ALUcont_T_2 = eq(io_func3, UInt<3>("h6")) @[Alu_Control.scala 21:46]
    node _io_ALUcont_T_3 = eq(io_func3, UInt<3>("h4")) @[Alu_Control.scala 22:46]
    node _io_ALUcont_T_4 = eq(io_func3, UInt<1>("h1")) @[Alu_Control.scala 23:46]
    node _io_ALUcont_T_5 = eq(io_func3, UInt<3>("h5")) @[Alu_Control.scala 24:46]
    node _io_ALUcont_T_6 = eq(io_func3, UInt<2>("h2")) @[Alu_Control.scala 25:46]
    node _io_ALUcont_T_7 = eq(io_func3, UInt<2>("h3")) @[Alu_Control.scala 26:46]
    node _io_ALUcont_T_8 = mux(_io_ALUcont_T_7, UInt<4>("h9"), UInt<1>("h0")) @[Mux.scala 98:16]
    node _io_ALUcont_T_9 = mux(_io_ALUcont_T_6, UInt<4>("h8"), _io_ALUcont_T_8) @[Mux.scala 98:16]
    node _io_ALUcont_T_10 = mux(_io_ALUcont_T_5, UInt<3>("h5"), _io_ALUcont_T_9) @[Mux.scala 98:16]
    node _io_ALUcont_T_11 = mux(_io_ALUcont_T_4, UInt<3>("h7"), _io_ALUcont_T_10) @[Mux.scala 98:16]
    node _io_ALUcont_T_12 = mux(_io_ALUcont_T_3, UInt<3>("h4"), _io_ALUcont_T_11) @[Mux.scala 98:16]
    node _io_ALUcont_T_13 = mux(_io_ALUcont_T_2, UInt<2>("h3"), _io_ALUcont_T_12) @[Mux.scala 98:16]
    node _io_ALUcont_T_14 = mux(_io_ALUcont_T_1, UInt<2>("h2"), _io_ALUcont_T_13) @[Mux.scala 98:16]
    node _io_ALUcont_T_15 = mux(_io_ALUcont_T, UInt<1>("h0"), _io_ALUcont_T_14) @[Mux.scala 98:16]
    node _GEN_0 = validif(_T_1, _io_ALUcont_T_15) @[Alu_Control.scala 17:54 Alu_Control.scala 18:47]
    node _T_2 = eq(io_ALUop, UInt<1>("h1")) @[Alu_Control.scala 31:37]
    node _T_3 = eq(io_func3, UInt<3>("h5")) @[Alu_Control.scala 32:39]
    node io_ALUcont_hi = cat(UInt<1>("h0"), io_func7) @[Cat.scala 30:58]
    node _io_ALUcont_T_16 = cat(io_ALUcont_hi, io_func3) @[Cat.scala 30:58]
    node _io_ALUcont_T_17 = cat(UInt<1>("h0"), io_func3) @[Cat.scala 30:58]
    node _GEN_1 = mux(_T_3, _io_ALUcont_T_16, _io_ALUcont_T_17) @[Alu_Control.scala 32:52 Alu_Control.scala 33:44 Alu_Control.scala 35:44]
    node _T_4 = eq(io_ALUop, UInt<3>("h5")) @[Alu_Control.scala 37:37]
    node _T_5 = eq(io_ALUop, UInt<3>("h4")) @[Alu_Control.scala 39:37]
    node _T_6 = eq(io_ALUop, UInt<2>("h2")) @[Alu_Control.scala 41:37]
    node _io_ALUcont_T_18 = cat(UInt<2>("h2"), io_func3) @[Cat.scala 30:58]
    node _T_7 = eq(io_ALUop, UInt<3>("h6")) @[Alu_Control.scala 43:37]
    node _T_8 = eq(io_ALUop, UInt<2>("h3")) @[Alu_Control.scala 45:37]
    node _GEN_2 = validif(_T_8, UInt<5>("h1f")) @[Alu_Control.scala 45:50 Alu_Control.scala 46:36]
    node _GEN_3 = mux(_T_7, UInt<1>("h0"), _GEN_2) @[Alu_Control.scala 43:50 Alu_Control.scala 44:36]
    node _GEN_4 = mux(_T_6, _io_ALUcont_T_18, _GEN_3) @[Alu_Control.scala 41:50 Alu_Control.scala 42:36]
    node _GEN_5 = mux(_T_5, UInt<1>("h0"), _GEN_4) @[Alu_Control.scala 39:50 Alu_Control.scala 40:36]
    node _GEN_6 = mux(_T_4, UInt<1>("h0"), _GEN_5) @[Alu_Control.scala 37:50 Alu_Control.scala 38:36]
    node _GEN_7 = mux(_T_2, _GEN_1, _GEN_6) @[Alu_Control.scala 31:50]
    node _GEN_8 = mux(_T, _GEN_0, _GEN_7) @[Alu_Control.scala 16:44]
    io_ALUcont <= bits(_GEN_8, 3, 0)
