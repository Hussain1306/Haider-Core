circuit Control_type_decode :
  module Control_type_decode :
    input clock : Clock
    input reset : UInt<1>
    input io_opcode : UInt<7>
    output io_R_type : UInt<1>
    output io_Load : UInt<1>
    output io_S_type : UInt<1>
    output io_SB_type : UInt<1>
    output io_I_type : UInt<1>
    output io_JALR : UInt<1>
    output io_JAL : UInt<1>
    output io_LUI : UInt<1>
    output io_AUIPC : UInt<1>

    node _T = eq(io_opcode, UInt<6>("h33")) @[Control_type_decode.scala 23:20]
    node _T_1 = eq(io_opcode, UInt<5>("h13")) @[Control_type_decode.scala 33:26]
    node _T_2 = eq(io_opcode, UInt<6>("h23")) @[Control_type_decode.scala 43:26]
    node _T_3 = eq(io_opcode, UInt<5>("h17")) @[Control_type_decode.scala 53:26]
    node _T_4 = eq(io_opcode, UInt<7>("h63")) @[Control_type_decode.scala 63:26]
    node _T_5 = eq(io_opcode, UInt<7>("h67")) @[Control_type_decode.scala 73:26]
    node _T_6 = eq(io_opcode, UInt<6>("h37")) @[Control_type_decode.scala 83:26]
    node _T_7 = eq(io_opcode, UInt<7>("h6f")) @[Control_type_decode.scala 93:26]
    node _T_8 = eq(io_opcode, UInt<2>("h3")) @[Control_type_decode.scala 103:26]
    node _GEN_0 = mux(_T_8, UInt<1>("h0"), UInt<1>("h0")) @[Control_type_decode.scala 103:43 Control_type_decode.scala 104:19 Control_type_decode.scala 114:19]
    node _GEN_1 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Control_type_decode.scala 103:43 Control_type_decode.scala 105:17 Control_type_decode.scala 115:17]
    node _GEN_2 = mux(_T_7, UInt<1>("h0"), _GEN_0) @[Control_type_decode.scala 93:43 Control_type_decode.scala 94:19]
    node _GEN_3 = mux(_T_7, UInt<1>("h0"), _GEN_1) @[Control_type_decode.scala 93:43 Control_type_decode.scala 95:17]
    node _GEN_4 = mux(_T_7, UInt<1>("h1"), _GEN_0) @[Control_type_decode.scala 93:43 Control_type_decode.scala 100:16]
    node _GEN_5 = mux(_T_6, UInt<1>("h0"), _GEN_2) @[Control_type_decode.scala 83:43 Control_type_decode.scala 84:19]
    node _GEN_6 = mux(_T_6, UInt<1>("h0"), _GEN_3) @[Control_type_decode.scala 83:43 Control_type_decode.scala 85:17]
    node _GEN_7 = mux(_T_6, UInt<1>("h0"), _GEN_4) @[Control_type_decode.scala 83:43 Control_type_decode.scala 90:16]
    node _GEN_8 = mux(_T_6, UInt<1>("h1"), _GEN_2) @[Control_type_decode.scala 83:43 Control_type_decode.scala 91:16]
    node _GEN_9 = mux(_T_5, UInt<1>("h0"), _GEN_5) @[Control_type_decode.scala 73:43 Control_type_decode.scala 74:19]
    node _GEN_10 = mux(_T_5, UInt<1>("h0"), _GEN_6) @[Control_type_decode.scala 73:43 Control_type_decode.scala 75:17]
    node _GEN_11 = mux(_T_5, UInt<1>("h1"), _GEN_5) @[Control_type_decode.scala 73:43 Control_type_decode.scala 79:17]
    node _GEN_12 = mux(_T_5, UInt<1>("h0"), _GEN_7) @[Control_type_decode.scala 73:43 Control_type_decode.scala 80:16]
    node _GEN_13 = mux(_T_5, UInt<1>("h0"), _GEN_8) @[Control_type_decode.scala 73:43 Control_type_decode.scala 81:16]
    node _GEN_14 = mux(_T_4, UInt<1>("h0"), _GEN_9) @[Control_type_decode.scala 63:43 Control_type_decode.scala 64:19]
    node _GEN_15 = mux(_T_4, UInt<1>("h0"), _GEN_10) @[Control_type_decode.scala 63:43 Control_type_decode.scala 65:17]
    node _GEN_16 = mux(_T_4, UInt<1>("h1"), _GEN_9) @[Control_type_decode.scala 63:43 Control_type_decode.scala 67:20]
    node _GEN_17 = mux(_T_4, UInt<1>("h0"), _GEN_11) @[Control_type_decode.scala 63:43 Control_type_decode.scala 69:17]
    node _GEN_18 = mux(_T_4, UInt<1>("h0"), _GEN_12) @[Control_type_decode.scala 63:43 Control_type_decode.scala 70:16]
    node _GEN_19 = mux(_T_4, UInt<1>("h0"), _GEN_13) @[Control_type_decode.scala 63:43 Control_type_decode.scala 71:16]
    node _GEN_20 = mux(_T_3, UInt<1>("h0"), _GEN_14) @[Control_type_decode.scala 53:43 Control_type_decode.scala 54:19]
    node _GEN_21 = mux(_T_3, UInt<1>("h0"), _GEN_15) @[Control_type_decode.scala 53:43 Control_type_decode.scala 55:17]
    node _GEN_22 = mux(_T_3, UInt<1>("h0"), _GEN_16) @[Control_type_decode.scala 53:43 Control_type_decode.scala 57:20]
    node _GEN_23 = mux(_T_3, UInt<1>("h0"), _GEN_17) @[Control_type_decode.scala 53:43 Control_type_decode.scala 59:17]
    node _GEN_24 = mux(_T_3, UInt<1>("h0"), _GEN_18) @[Control_type_decode.scala 53:43 Control_type_decode.scala 60:16]
    node _GEN_25 = mux(_T_3, UInt<1>("h0"), _GEN_19) @[Control_type_decode.scala 53:43 Control_type_decode.scala 61:16]
    node _GEN_26 = mux(_T_3, UInt<1>("h1"), _GEN_14) @[Control_type_decode.scala 53:43 Control_type_decode.scala 62:18]
    node _GEN_27 = mux(_T_2, UInt<1>("h0"), _GEN_20) @[Control_type_decode.scala 43:43 Control_type_decode.scala 44:19]
    node _GEN_28 = mux(_T_2, UInt<1>("h0"), _GEN_21) @[Control_type_decode.scala 43:43 Control_type_decode.scala 45:17]
    node _GEN_29 = mux(_T_2, UInt<1>("h0"), _GEN_22) @[Control_type_decode.scala 43:43 Control_type_decode.scala 47:20]
    node _GEN_30 = mux(_T_2, UInt<1>("h1"), _GEN_20) @[Control_type_decode.scala 43:43 Control_type_decode.scala 48:19]
    node _GEN_31 = mux(_T_2, UInt<1>("h0"), _GEN_23) @[Control_type_decode.scala 43:43 Control_type_decode.scala 49:17]
    node _GEN_32 = mux(_T_2, UInt<1>("h0"), _GEN_24) @[Control_type_decode.scala 43:43 Control_type_decode.scala 50:16]
    node _GEN_33 = mux(_T_2, UInt<1>("h0"), _GEN_25) @[Control_type_decode.scala 43:43 Control_type_decode.scala 51:16]
    node _GEN_34 = mux(_T_2, UInt<1>("h0"), _GEN_26) @[Control_type_decode.scala 43:43 Control_type_decode.scala 52:18]
    node _GEN_35 = mux(_T_1, UInt<1>("h0"), _GEN_27) @[Control_type_decode.scala 33:43 Control_type_decode.scala 34:19]
    node _GEN_36 = mux(_T_1, UInt<1>("h1"), _GEN_28) @[Control_type_decode.scala 33:43 Control_type_decode.scala 35:17]
    node _GEN_37 = mux(_T_1, UInt<1>("h0"), _GEN_29) @[Control_type_decode.scala 33:43 Control_type_decode.scala 37:20]
    node _GEN_38 = mux(_T_1, UInt<1>("h0"), _GEN_30) @[Control_type_decode.scala 33:43 Control_type_decode.scala 38:19]
    node _GEN_39 = mux(_T_1, UInt<1>("h0"), _GEN_31) @[Control_type_decode.scala 33:43 Control_type_decode.scala 39:17]
    node _GEN_40 = mux(_T_1, UInt<1>("h0"), _GEN_32) @[Control_type_decode.scala 33:43 Control_type_decode.scala 40:16]
    node _GEN_41 = mux(_T_1, UInt<1>("h0"), _GEN_33) @[Control_type_decode.scala 33:43 Control_type_decode.scala 41:16]
    node _GEN_42 = mux(_T_1, UInt<1>("h0"), _GEN_34) @[Control_type_decode.scala 33:43 Control_type_decode.scala 42:18]
    node _GEN_43 = mux(_T, UInt<1>("h1"), _GEN_35) @[Control_type_decode.scala 23:37 Control_type_decode.scala 24:19]
    node _GEN_44 = mux(_T, UInt<1>("h0"), _GEN_36) @[Control_type_decode.scala 23:37 Control_type_decode.scala 25:17]
    node _GEN_45 = mux(_T, UInt<1>("h0"), _GEN_35) @[Control_type_decode.scala 23:37 Control_type_decode.scala 26:19]
    node _GEN_46 = mux(_T, UInt<1>("h0"), _GEN_37) @[Control_type_decode.scala 23:37 Control_type_decode.scala 27:20]
    node _GEN_47 = mux(_T, UInt<1>("h0"), _GEN_38) @[Control_type_decode.scala 23:37 Control_type_decode.scala 28:19]
    node _GEN_48 = mux(_T, UInt<1>("h0"), _GEN_39) @[Control_type_decode.scala 23:37 Control_type_decode.scala 29:17]
    node _GEN_49 = mux(_T, UInt<1>("h0"), _GEN_40) @[Control_type_decode.scala 23:37 Control_type_decode.scala 30:16]
    node _GEN_50 = mux(_T, UInt<1>("h0"), _GEN_41) @[Control_type_decode.scala 23:37 Control_type_decode.scala 31:16]
    node _GEN_51 = mux(_T, UInt<1>("h0"), _GEN_42) @[Control_type_decode.scala 23:37 Control_type_decode.scala 32:18]
    io_R_type <= _GEN_43
    io_Load <= _GEN_44
    io_S_type <= _GEN_47
    io_SB_type <= _GEN_46
    io_I_type <= _GEN_45
    io_JALR <= _GEN_48
    io_JAL <= _GEN_49
    io_LUI <= _GEN_50
    io_AUIPC <= _GEN_51
