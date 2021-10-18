circuit Control_control_decode :
  module Control_control_decode :
    input clock : Clock
    input reset : UInt<1>
    input io_R_type : UInt<1>
    input io_Load : UInt<1>
    input io_S_type : UInt<1>
    input io_SB_type : UInt<1>
    input io_I_type : UInt<1>
    input io_JALR : UInt<1>
    input io_JAL : UInt<1>
    input io_LUI : UInt<1>
    input io_AUIPC : UInt<1>
    output io_RegWrite : UInt<1>
    output io_MemWrite : UInt<1>
    output io_branch : UInt<1>
    output io_MemtoReg : UInt<1>
    output io_operand_A_sel : UInt<2>
    output io_operand_B_sel : UInt<1>
    output io_ALUoperation : UInt<3>
    output io_extend_sel : UInt<2>
    output io_Next_pc : UInt<2>

    node _T = eq(io_R_type, UInt<1>("h1")) @[Control_control_decode.scala 33:32]
    node _T_1 = eq(io_Load, UInt<1>("h1")) @[Control_control_decode.scala 43:36]
    node _T_2 = eq(io_S_type, UInt<1>("h1")) @[Control_control_decode.scala 53:38]
    node _T_3 = eq(io_SB_type, UInt<1>("h1")) @[Control_control_decode.scala 63:39]
    node _T_4 = eq(io_I_type, UInt<1>("h1")) @[Control_control_decode.scala 73:38]
    node _T_5 = eq(io_JALR, UInt<1>("h1")) @[Control_control_decode.scala 83:36]
    node _T_6 = eq(io_JAL, UInt<1>("h1")) @[Control_control_decode.scala 93:35]
    node _T_7 = eq(io_LUI, UInt<1>("h1")) @[Control_control_decode.scala 103:35]
    node _T_8 = eq(io_AUIPC, UInt<1>("h1")) @[Control_control_decode.scala 113:37]
    node _GEN_0 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Control_control_decode.scala 113:45 Control_control_decode.scala 114:37 Control_control_decode.scala 126:37]
    node _GEN_1 = mux(_T_8, UInt<1>("h0"), UInt<1>("h0")) @[Control_control_decode.scala 113:45 Control_control_decode.scala 115:37 Control_control_decode.scala 124:37]
    node _GEN_2 = mux(_T_8, UInt<2>("h2"), UInt<1>("h0")) @[Control_control_decode.scala 113:45 Control_control_decode.scala 118:42 Control_control_decode.scala 129:42]
    node _GEN_3 = mux(_T_8, UInt<3>("h6"), UInt<1>("h0")) @[Control_control_decode.scala 113:45 Control_control_decode.scala 120:41 Control_control_decode.scala 128:41]
    node _GEN_4 = mux(_T_7, UInt<1>("h1"), _GEN_0) @[Control_control_decode.scala 103:43 Control_control_decode.scala 104:37]
    node _GEN_5 = mux(_T_7, UInt<1>("h0"), _GEN_1) @[Control_control_decode.scala 103:43 Control_control_decode.scala 105:37]
    node _GEN_6 = mux(_T_7, UInt<2>("h3"), _GEN_2) @[Control_control_decode.scala 103:43 Control_control_decode.scala 108:42]
    node _GEN_7 = mux(_T_7, UInt<1>("h1"), _GEN_1) @[Control_control_decode.scala 103:43 Control_control_decode.scala 109:42]
    node _GEN_8 = mux(_T_7, UInt<3>("h6"), _GEN_3) @[Control_control_decode.scala 103:43 Control_control_decode.scala 110:41]
    node _GEN_9 = mux(_T_7, UInt<1>("h1"), _GEN_2) @[Control_control_decode.scala 103:43 Control_control_decode.scala 111:39]
    node _GEN_10 = mux(_T_6, UInt<1>("h1"), _GEN_4) @[Control_control_decode.scala 93:43 Control_control_decode.scala 94:37]
    node _GEN_11 = mux(_T_6, UInt<1>("h0"), _GEN_5) @[Control_control_decode.scala 93:43 Control_control_decode.scala 95:37]
    node _GEN_12 = mux(_T_6, UInt<2>("h2"), _GEN_6) @[Control_control_decode.scala 93:43 Control_control_decode.scala 98:42]
    node _GEN_13 = mux(_T_6, UInt<1>("h0"), _GEN_7) @[Control_control_decode.scala 93:43 Control_control_decode.scala 99:42]
    node _GEN_14 = mux(_T_6, UInt<2>("h3"), _GEN_8) @[Control_control_decode.scala 93:43 Control_control_decode.scala 100:41]
    node _GEN_15 = mux(_T_6, UInt<1>("h0"), _GEN_9) @[Control_control_decode.scala 93:43 Control_control_decode.scala 101:39]
    node _GEN_16 = mux(_T_6, UInt<2>("h2"), _GEN_5) @[Control_control_decode.scala 93:43 Control_control_decode.scala 102:36]
    node _GEN_17 = mux(_T_5, UInt<1>("h1"), _GEN_10) @[Control_control_decode.scala 83:44 Control_control_decode.scala 84:37]
    node _GEN_18 = mux(_T_5, UInt<1>("h0"), _GEN_11) @[Control_control_decode.scala 83:44 Control_control_decode.scala 85:37]
    node _GEN_19 = mux(_T_5, UInt<2>("h2"), _GEN_12) @[Control_control_decode.scala 83:44 Control_control_decode.scala 88:42]
    node _GEN_20 = mux(_T_5, UInt<1>("h0"), _GEN_13) @[Control_control_decode.scala 83:44 Control_control_decode.scala 89:42]
    node _GEN_21 = mux(_T_5, UInt<2>("h3"), _GEN_14) @[Control_control_decode.scala 83:44 Control_control_decode.scala 90:41]
    node _GEN_22 = mux(_T_5, UInt<1>("h0"), _GEN_15) @[Control_control_decode.scala 83:44 Control_control_decode.scala 91:39]
    node _GEN_23 = mux(_T_5, UInt<2>("h3"), _GEN_16) @[Control_control_decode.scala 83:44 Control_control_decode.scala 92:36]
    node _GEN_24 = mux(_T_4, UInt<1>("h1"), _GEN_17) @[Control_control_decode.scala 73:46 Control_control_decode.scala 74:37]
    node _GEN_25 = mux(_T_4, UInt<1>("h0"), _GEN_18) @[Control_control_decode.scala 73:46 Control_control_decode.scala 75:37]
    node _GEN_26 = mux(_T_4, UInt<1>("h1"), _GEN_18) @[Control_control_decode.scala 73:46 Control_control_decode.scala 77:37]
    node _GEN_27 = mux(_T_4, UInt<1>("h0"), _GEN_19) @[Control_control_decode.scala 73:46 Control_control_decode.scala 78:42]
    node _GEN_28 = mux(_T_4, UInt<1>("h1"), _GEN_20) @[Control_control_decode.scala 73:46 Control_control_decode.scala 79:42]
    node _GEN_29 = mux(_T_4, UInt<1>("h1"), _GEN_21) @[Control_control_decode.scala 73:46 Control_control_decode.scala 80:41]
    node _GEN_30 = mux(_T_4, UInt<1>("h0"), _GEN_22) @[Control_control_decode.scala 73:46 Control_control_decode.scala 81:39]
    node _GEN_31 = mux(_T_4, UInt<1>("h0"), _GEN_23) @[Control_control_decode.scala 73:46 Control_control_decode.scala 82:36]
    node _GEN_32 = mux(_T_3, UInt<1>("h0"), _GEN_24) @[Control_control_decode.scala 63:47 Control_control_decode.scala 64:37]
    node _GEN_33 = mux(_T_3, UInt<1>("h0"), _GEN_25) @[Control_control_decode.scala 63:47 Control_control_decode.scala 65:37]
    node _GEN_34 = mux(_T_3, UInt<1>("h1"), _GEN_25) @[Control_control_decode.scala 63:47 Control_control_decode.scala 66:35]
    node _GEN_35 = mux(_T_3, UInt<1>("h0"), _GEN_26) @[Control_control_decode.scala 63:47 Control_control_decode.scala 67:37]
    node _GEN_36 = mux(_T_3, UInt<1>("h0"), _GEN_27) @[Control_control_decode.scala 63:47 Control_control_decode.scala 68:42]
    node _GEN_37 = mux(_T_3, UInt<1>("h0"), _GEN_28) @[Control_control_decode.scala 63:47 Control_control_decode.scala 69:42]
    node _GEN_38 = mux(_T_3, UInt<2>("h2"), _GEN_29) @[Control_control_decode.scala 63:47 Control_control_decode.scala 70:41]
    node _GEN_39 = mux(_T_3, UInt<1>("h0"), _GEN_30) @[Control_control_decode.scala 63:47 Control_control_decode.scala 71:39]
    node _GEN_40 = mux(_T_3, UInt<1>("h1"), _GEN_31) @[Control_control_decode.scala 63:47 Control_control_decode.scala 72:36]
    node _GEN_41 = mux(_T_2, UInt<1>("h0"), _GEN_32) @[Control_control_decode.scala 53:46 Control_control_decode.scala 54:37]
    node _GEN_42 = mux(_T_2, UInt<1>("h1"), _GEN_33) @[Control_control_decode.scala 53:46 Control_control_decode.scala 55:37]
    node _GEN_43 = mux(_T_2, UInt<1>("h0"), _GEN_34) @[Control_control_decode.scala 53:46 Control_control_decode.scala 56:35]
    node _GEN_44 = mux(_T_2, UInt<1>("h0"), _GEN_35) @[Control_control_decode.scala 53:46 Control_control_decode.scala 57:37]
    node _GEN_45 = mux(_T_2, UInt<1>("h0"), _GEN_36) @[Control_control_decode.scala 53:46 Control_control_decode.scala 58:42]
    node _GEN_46 = mux(_T_2, UInt<1>("h1"), _GEN_37) @[Control_control_decode.scala 53:46 Control_control_decode.scala 59:42]
    node _GEN_47 = mux(_T_2, UInt<3>("h5"), _GEN_38) @[Control_control_decode.scala 53:46 Control_control_decode.scala 60:41]
    node _GEN_48 = mux(_T_2, UInt<2>("h2"), _GEN_39) @[Control_control_decode.scala 53:46 Control_control_decode.scala 61:39]
    node _GEN_49 = mux(_T_2, UInt<1>("h0"), _GEN_40) @[Control_control_decode.scala 53:46 Control_control_decode.scala 62:36]
    node _GEN_50 = mux(_T_1, UInt<1>("h1"), _GEN_41) @[Control_control_decode.scala 43:44 Control_control_decode.scala 44:37]
    node _GEN_51 = mux(_T_1, UInt<1>("h0"), _GEN_42) @[Control_control_decode.scala 43:44 Control_control_decode.scala 45:37]
    node _GEN_52 = mux(_T_1, UInt<1>("h0"), _GEN_43) @[Control_control_decode.scala 43:44 Control_control_decode.scala 46:35]
    node _GEN_53 = mux(_T_1, UInt<1>("h0"), _GEN_44) @[Control_control_decode.scala 43:44 Control_control_decode.scala 47:37]
    node _GEN_54 = mux(_T_1, UInt<1>("h0"), _GEN_45) @[Control_control_decode.scala 43:44 Control_control_decode.scala 48:42]
    node _GEN_55 = mux(_T_1, UInt<1>("h1"), _GEN_46) @[Control_control_decode.scala 43:44 Control_control_decode.scala 49:42]
    node _GEN_56 = mux(_T_1, UInt<3>("h4"), _GEN_47) @[Control_control_decode.scala 43:44 Control_control_decode.scala 50:41]
    node _GEN_57 = mux(_T_1, UInt<1>("h0"), _GEN_48) @[Control_control_decode.scala 43:44 Control_control_decode.scala 51:39]
    node _GEN_58 = mux(_T_1, UInt<1>("h0"), _GEN_49) @[Control_control_decode.scala 43:44 Control_control_decode.scala 52:36]
    node _GEN_59 = mux(_T, UInt<1>("h1"), _GEN_50) @[Control_control_decode.scala 33:40 Control_control_decode.scala 34:37]
    node _GEN_60 = mux(_T, UInt<1>("h0"), _GEN_51) @[Control_control_decode.scala 33:40 Control_control_decode.scala 35:37]
    node _GEN_61 = mux(_T, UInt<1>("h0"), _GEN_52) @[Control_control_decode.scala 33:40 Control_control_decode.scala 36:35]
    node _GEN_62 = mux(_T, UInt<1>("h1"), _GEN_53) @[Control_control_decode.scala 33:40 Control_control_decode.scala 37:37]
    node _GEN_63 = mux(_T, UInt<1>("h0"), _GEN_54) @[Control_control_decode.scala 33:40 Control_control_decode.scala 38:42]
    node _GEN_64 = mux(_T, UInt<1>("h0"), _GEN_55) @[Control_control_decode.scala 33:40 Control_control_decode.scala 39:42]
    node _GEN_65 = mux(_T, UInt<1>("h0"), _GEN_56) @[Control_control_decode.scala 33:40 Control_control_decode.scala 40:41]
    node _GEN_66 = mux(_T, UInt<1>("h0"), _GEN_57) @[Control_control_decode.scala 33:40 Control_control_decode.scala 41:39]
    node _GEN_67 = mux(_T, UInt<1>("h0"), _GEN_58) @[Control_control_decode.scala 33:40 Control_control_decode.scala 42:36]
    io_RegWrite <= _GEN_59
    io_MemWrite <= _GEN_60
    io_branch <= _GEN_61
    io_MemtoReg <= _GEN_62
    io_operand_A_sel <= _GEN_63
    io_operand_B_sel <= _GEN_64
    io_ALUoperation <= _GEN_65
    io_extend_sel <= _GEN_66
    io_Next_pc <= _GEN_67
