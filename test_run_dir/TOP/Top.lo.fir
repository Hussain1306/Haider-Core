circuit Top :
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
    node _GEN_36 = mux(_T_1, UInt<1>("h0"), _GEN_28) @[Control_type_decode.scala 33:43 Control_type_decode.scala 35:17]
    node _GEN_37 = mux(_T_1, UInt<1>("h1"), _GEN_27) @[Control_type_decode.scala 33:43 Control_type_decode.scala 36:19]
    node _GEN_38 = mux(_T_1, UInt<1>("h0"), _GEN_29) @[Control_type_decode.scala 33:43 Control_type_decode.scala 37:20]
    node _GEN_39 = mux(_T_1, UInt<1>("h0"), _GEN_30) @[Control_type_decode.scala 33:43 Control_type_decode.scala 38:19]
    node _GEN_40 = mux(_T_1, UInt<1>("h0"), _GEN_31) @[Control_type_decode.scala 33:43 Control_type_decode.scala 39:17]
    node _GEN_41 = mux(_T_1, UInt<1>("h0"), _GEN_32) @[Control_type_decode.scala 33:43 Control_type_decode.scala 40:16]
    node _GEN_42 = mux(_T_1, UInt<1>("h0"), _GEN_33) @[Control_type_decode.scala 33:43 Control_type_decode.scala 41:16]
    node _GEN_43 = mux(_T_1, UInt<1>("h0"), _GEN_34) @[Control_type_decode.scala 33:43 Control_type_decode.scala 42:18]
    node _GEN_44 = mux(_T, UInt<1>("h1"), _GEN_35) @[Control_type_decode.scala 23:37 Control_type_decode.scala 24:19]
    node _GEN_45 = mux(_T, UInt<1>("h0"), _GEN_36) @[Control_type_decode.scala 23:37 Control_type_decode.scala 25:17]
    node _GEN_46 = mux(_T, UInt<1>("h0"), _GEN_37) @[Control_type_decode.scala 23:37 Control_type_decode.scala 26:19]
    node _GEN_47 = mux(_T, UInt<1>("h0"), _GEN_38) @[Control_type_decode.scala 23:37 Control_type_decode.scala 27:20]
    node _GEN_48 = mux(_T, UInt<1>("h0"), _GEN_39) @[Control_type_decode.scala 23:37 Control_type_decode.scala 28:19]
    node _GEN_49 = mux(_T, UInt<1>("h0"), _GEN_40) @[Control_type_decode.scala 23:37 Control_type_decode.scala 29:17]
    node _GEN_50 = mux(_T, UInt<1>("h0"), _GEN_41) @[Control_type_decode.scala 23:37 Control_type_decode.scala 30:16]
    node _GEN_51 = mux(_T, UInt<1>("h0"), _GEN_42) @[Control_type_decode.scala 23:37 Control_type_decode.scala 31:16]
    node _GEN_52 = mux(_T, UInt<1>("h0"), _GEN_43) @[Control_type_decode.scala 23:37 Control_type_decode.scala 32:18]
    io_R_type <= _GEN_44
    io_Load <= _GEN_45
    io_S_type <= _GEN_48
    io_SB_type <= _GEN_47
    io_I_type <= _GEN_46
    io_JALR <= _GEN_49
    io_JAL <= _GEN_50
    io_LUI <= _GEN_51
    io_AUIPC <= _GEN_52

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
    output io_MemRead : UInt<1>
    output io_MemtoReg : UInt<1>
    output io_operand_A_sel : UInt<2>
    output io_operand_B_sel : UInt<1>
    output io_ALUoperation : UInt<3>
    output io_extend_sel : UInt<2>
    output io_Next_pc : UInt<2>

    node _T = eq(io_R_type, UInt<1>("h1")) @[Control_control_decode.scala 34:32]
    node _T_1 = eq(io_Load, UInt<1>("h1")) @[Control_control_decode.scala 45:36]
    node _T_2 = eq(io_S_type, UInt<1>("h1")) @[Control_control_decode.scala 56:38]
    node _T_3 = eq(io_SB_type, UInt<1>("h1")) @[Control_control_decode.scala 67:39]
    node _T_4 = eq(io_I_type, UInt<1>("h1")) @[Control_control_decode.scala 78:38]
    node _T_5 = eq(io_JALR, UInt<1>("h1")) @[Control_control_decode.scala 89:36]
    node _T_6 = eq(io_JAL, UInt<1>("h1")) @[Control_control_decode.scala 100:35]
    node _T_7 = eq(io_LUI, UInt<1>("h1")) @[Control_control_decode.scala 111:35]
    node _T_8 = eq(io_AUIPC, UInt<1>("h1")) @[Control_control_decode.scala 122:37]
    node _GEN_0 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Control_control_decode.scala 122:45 Control_control_decode.scala 123:37 Control_control_decode.scala 137:37]
    node _GEN_1 = mux(_T_8, UInt<1>("h0"), UInt<1>("h0")) @[Control_control_decode.scala 122:45 Control_control_decode.scala 124:36 Control_control_decode.scala 135:36]
    node _GEN_2 = mux(_T_8, UInt<2>("h2"), UInt<1>("h0")) @[Control_control_decode.scala 122:45 Control_control_decode.scala 128:42 Control_control_decode.scala 140:42]
    node _GEN_3 = mux(_T_8, UInt<3>("h6"), UInt<1>("h0")) @[Control_control_decode.scala 122:45 Control_control_decode.scala 130:41 Control_control_decode.scala 139:41]
    node _GEN_4 = mux(_T_7, UInt<1>("h1"), _GEN_0) @[Control_control_decode.scala 111:43 Control_control_decode.scala 112:37]
    node _GEN_5 = mux(_T_7, UInt<1>("h0"), _GEN_1) @[Control_control_decode.scala 111:43 Control_control_decode.scala 113:36]
    node _GEN_6 = mux(_T_7, UInt<2>("h3"), _GEN_2) @[Control_control_decode.scala 111:43 Control_control_decode.scala 117:42]
    node _GEN_7 = mux(_T_7, UInt<3>("h6"), _GEN_3) @[Control_control_decode.scala 111:43 Control_control_decode.scala 119:41]
    node _GEN_8 = mux(_T_7, UInt<1>("h1"), _GEN_2) @[Control_control_decode.scala 111:43 Control_control_decode.scala 120:39]
    node _GEN_9 = mux(_T_6, UInt<1>("h1"), _GEN_4) @[Control_control_decode.scala 100:43 Control_control_decode.scala 101:37]
    node _GEN_10 = mux(_T_6, UInt<1>("h0"), _GEN_5) @[Control_control_decode.scala 100:43 Control_control_decode.scala 102:36]
    node _GEN_11 = mux(_T_6, UInt<2>("h2"), _GEN_6) @[Control_control_decode.scala 100:43 Control_control_decode.scala 106:42]
    node _GEN_12 = mux(_T_6, UInt<2>("h3"), _GEN_7) @[Control_control_decode.scala 100:43 Control_control_decode.scala 108:41]
    node _GEN_13 = mux(_T_6, UInt<1>("h0"), _GEN_8) @[Control_control_decode.scala 100:43 Control_control_decode.scala 109:39]
    node _GEN_14 = mux(_T_6, UInt<2>("h2"), _GEN_5) @[Control_control_decode.scala 100:43 Control_control_decode.scala 110:36]
    node _GEN_15 = mux(_T_5, UInt<1>("h1"), _GEN_9) @[Control_control_decode.scala 89:44 Control_control_decode.scala 90:37]
    node _GEN_16 = mux(_T_5, UInt<1>("h0"), _GEN_10) @[Control_control_decode.scala 89:44 Control_control_decode.scala 91:36]
    node _GEN_17 = mux(_T_5, UInt<2>("h2"), _GEN_11) @[Control_control_decode.scala 89:44 Control_control_decode.scala 95:42]
    node _GEN_18 = mux(_T_5, UInt<2>("h3"), _GEN_12) @[Control_control_decode.scala 89:44 Control_control_decode.scala 97:41]
    node _GEN_19 = mux(_T_5, UInt<1>("h0"), _GEN_13) @[Control_control_decode.scala 89:44 Control_control_decode.scala 98:39]
    node _GEN_20 = mux(_T_5, UInt<2>("h3"), _GEN_14) @[Control_control_decode.scala 89:44 Control_control_decode.scala 99:36]
    node _GEN_21 = mux(_T_4, UInt<1>("h1"), _GEN_15) @[Control_control_decode.scala 78:46 Control_control_decode.scala 79:37]
    node _GEN_22 = mux(_T_4, UInt<1>("h0"), _GEN_16) @[Control_control_decode.scala 78:46 Control_control_decode.scala 80:36]
    node _GEN_23 = mux(_T_4, UInt<1>("h1"), _GEN_16) @[Control_control_decode.scala 78:46 Control_control_decode.scala 83:37]
    node _GEN_24 = mux(_T_4, UInt<1>("h0"), _GEN_17) @[Control_control_decode.scala 78:46 Control_control_decode.scala 84:42]
    node _GEN_25 = mux(_T_4, UInt<1>("h1"), _GEN_18) @[Control_control_decode.scala 78:46 Control_control_decode.scala 86:41]
    node _GEN_26 = mux(_T_4, UInt<1>("h0"), _GEN_19) @[Control_control_decode.scala 78:46 Control_control_decode.scala 87:39]
    node _GEN_27 = mux(_T_4, UInt<1>("h0"), _GEN_20) @[Control_control_decode.scala 78:46 Control_control_decode.scala 88:36]
    node _GEN_28 = mux(_T_3, UInt<1>("h0"), _GEN_21) @[Control_control_decode.scala 67:47 Control_control_decode.scala 68:37]
    node _GEN_29 = mux(_T_3, UInt<1>("h0"), _GEN_22) @[Control_control_decode.scala 67:47 Control_control_decode.scala 69:36]
    node _GEN_30 = mux(_T_3, UInt<1>("h1"), _GEN_22) @[Control_control_decode.scala 67:47 Control_control_decode.scala 71:35]
    node _GEN_31 = mux(_T_3, UInt<1>("h0"), _GEN_23) @[Control_control_decode.scala 67:47 Control_control_decode.scala 72:37]
    node _GEN_32 = mux(_T_3, UInt<1>("h0"), _GEN_24) @[Control_control_decode.scala 67:47 Control_control_decode.scala 73:42]
    node _GEN_33 = mux(_T_3, UInt<1>("h1"), _GEN_23) @[Control_control_decode.scala 67:47 Control_control_decode.scala 74:42]
    node _GEN_34 = mux(_T_3, UInt<1>("h0"), _GEN_25) @[Control_control_decode.scala 67:47 Control_control_decode.scala 75:41]
    node _GEN_35 = mux(_T_3, UInt<1>("h0"), _GEN_26) @[Control_control_decode.scala 67:47 Control_control_decode.scala 76:39]
    node _GEN_36 = mux(_T_3, UInt<1>("h1"), _GEN_27) @[Control_control_decode.scala 67:47 Control_control_decode.scala 77:36]
    node _GEN_37 = mux(_T_2, UInt<1>("h0"), _GEN_28) @[Control_control_decode.scala 56:46 Control_control_decode.scala 57:37]
    node _GEN_38 = mux(_T_2, UInt<1>("h0"), _GEN_29) @[Control_control_decode.scala 56:46 Control_control_decode.scala 58:36]
    node _GEN_39 = mux(_T_2, UInt<1>("h1"), _GEN_29) @[Control_control_decode.scala 56:46 Control_control_decode.scala 59:37]
    node _GEN_40 = mux(_T_2, UInt<1>("h0"), _GEN_30) @[Control_control_decode.scala 56:46 Control_control_decode.scala 60:35]
    node _GEN_41 = mux(_T_2, UInt<1>("h0"), _GEN_31) @[Control_control_decode.scala 56:46 Control_control_decode.scala 61:37]
    node _GEN_42 = mux(_T_2, UInt<1>("h0"), _GEN_32) @[Control_control_decode.scala 56:46 Control_control_decode.scala 62:42]
    node _GEN_43 = mux(_T_2, UInt<1>("h1"), _GEN_33) @[Control_control_decode.scala 56:46 Control_control_decode.scala 63:42]
    node _GEN_44 = mux(_T_2, UInt<3>("h5"), _GEN_34) @[Control_control_decode.scala 56:46 Control_control_decode.scala 64:41]
    node _GEN_45 = mux(_T_2, UInt<2>("h2"), _GEN_35) @[Control_control_decode.scala 56:46 Control_control_decode.scala 65:39]
    node _GEN_46 = mux(_T_2, UInt<1>("h0"), _GEN_36) @[Control_control_decode.scala 56:46 Control_control_decode.scala 66:36]
    node _GEN_47 = mux(_T_1, UInt<1>("h1"), _GEN_37) @[Control_control_decode.scala 45:44 Control_control_decode.scala 46:37]
    node _GEN_48 = mux(_T_1, UInt<1>("h0"), _GEN_39) @[Control_control_decode.scala 45:44 Control_control_decode.scala 47:37]
    node _GEN_49 = mux(_T_1, UInt<1>("h1"), _GEN_38) @[Control_control_decode.scala 45:44 Control_control_decode.scala 48:36]
    node _GEN_50 = mux(_T_1, UInt<1>("h0"), _GEN_40) @[Control_control_decode.scala 45:44 Control_control_decode.scala 49:35]
    node _GEN_51 = mux(_T_1, UInt<1>("h0"), _GEN_41) @[Control_control_decode.scala 45:44 Control_control_decode.scala 50:37]
    node _GEN_52 = mux(_T_1, UInt<1>("h0"), _GEN_42) @[Control_control_decode.scala 45:44 Control_control_decode.scala 51:42]
    node _GEN_53 = mux(_T_1, UInt<1>("h1"), _GEN_43) @[Control_control_decode.scala 45:44 Control_control_decode.scala 52:42]
    node _GEN_54 = mux(_T_1, UInt<3>("h4"), _GEN_44) @[Control_control_decode.scala 45:44 Control_control_decode.scala 53:41]
    node _GEN_55 = mux(_T_1, UInt<1>("h0"), _GEN_45) @[Control_control_decode.scala 45:44 Control_control_decode.scala 54:39]
    node _GEN_56 = mux(_T_1, UInt<1>("h0"), _GEN_46) @[Control_control_decode.scala 45:44 Control_control_decode.scala 55:36]
    node _GEN_57 = mux(_T, UInt<1>("h1"), _GEN_47) @[Control_control_decode.scala 34:40 Control_control_decode.scala 35:37]
    node _GEN_58 = mux(_T, UInt<1>("h0"), _GEN_49) @[Control_control_decode.scala 34:40 Control_control_decode.scala 36:36]
    node _GEN_59 = mux(_T, UInt<1>("h0"), _GEN_48) @[Control_control_decode.scala 34:40 Control_control_decode.scala 37:37]
    node _GEN_60 = mux(_T, UInt<1>("h0"), _GEN_50) @[Control_control_decode.scala 34:40 Control_control_decode.scala 38:35]
    node _GEN_61 = mux(_T, UInt<1>("h1"), _GEN_51) @[Control_control_decode.scala 34:40 Control_control_decode.scala 39:37]
    node _GEN_62 = mux(_T, UInt<1>("h0"), _GEN_52) @[Control_control_decode.scala 34:40 Control_control_decode.scala 40:42]
    node _GEN_63 = mux(_T, UInt<1>("h0"), _GEN_53) @[Control_control_decode.scala 34:40 Control_control_decode.scala 41:42]
    node _GEN_64 = mux(_T, UInt<1>("h0"), _GEN_54) @[Control_control_decode.scala 34:40 Control_control_decode.scala 42:41]
    node _GEN_65 = mux(_T, UInt<1>("h0"), _GEN_55) @[Control_control_decode.scala 34:40 Control_control_decode.scala 43:39]
    node _GEN_66 = mux(_T, UInt<1>("h0"), _GEN_56) @[Control_control_decode.scala 34:40 Control_control_decode.scala 44:36]
    io_RegWrite <= _GEN_57
    io_MemWrite <= _GEN_59
    io_branch <= _GEN_60
    io_MemRead <= _GEN_58
    io_MemtoReg <= _GEN_61
    io_operand_A_sel <= _GEN_62
    io_operand_B_sel <= _GEN_63
    io_ALUoperation <= _GEN_64
    io_extend_sel <= _GEN_65
    io_Next_pc <= _GEN_66

  module Control :
    input clock : Clock
    input reset : UInt<1>
    input io_opcode : UInt<7>
    output io_MemWrite : UInt<1>
    output io_branch : UInt<1>
    output io_RegWrite : UInt<1>
    output io_MemRead : UInt<1>
    output io_MemtoReg : UInt<1>
    output io_ALUoperation : UInt<3>
    output io_operand_A_sel : UInt<2>
    output io_operand_B_sel : UInt<1>
    output io_extend_sel : UInt<2>
    output io_Next_pc : UInt<2>

    inst typ_dec of Control_type_decode @[Control.scala 28:37]
    inst con_dec of Control_control_decode @[Control.scala 29:37]
    io_MemWrite <= con_dec.io_MemWrite @[Control.scala 45:29]
    io_branch <= con_dec.io_branch @[Control.scala 46:27]
    io_RegWrite <= con_dec.io_RegWrite @[Control.scala 47:29]
    io_MemRead <= con_dec.io_MemRead @[Control.scala 48:27]
    io_MemtoReg <= con_dec.io_MemtoReg @[Control.scala 49:29]
    io_ALUoperation <= con_dec.io_ALUoperation @[Control.scala 50:33]
    io_operand_A_sel <= con_dec.io_operand_A_sel @[Control.scala 51:34]
    io_operand_B_sel <= con_dec.io_operand_B_sel @[Control.scala 52:34]
    io_extend_sel <= con_dec.io_extend_sel @[Control.scala 53:31]
    io_Next_pc <= con_dec.io_Next_pc @[Control.scala 54:28]
    typ_dec.clock <= clock
    typ_dec.reset <= reset
    typ_dec.io_opcode <= io_opcode @[Control.scala 32:35]
    con_dec.clock <= clock
    con_dec.reset <= reset
    con_dec.io_R_type <= typ_dec.io_R_type @[Control.scala 35:35]
    con_dec.io_Load <= typ_dec.io_Load @[Control.scala 36:33]
    con_dec.io_S_type <= typ_dec.io_S_type @[Control.scala 37:35]
    con_dec.io_SB_type <= typ_dec.io_SB_type @[Control.scala 38:36]
    con_dec.io_I_type <= typ_dec.io_I_type @[Control.scala 39:35]
    con_dec.io_JALR <= typ_dec.io_JALR @[Control.scala 40:33]
    con_dec.io_JAL <= typ_dec.io_JAL @[Control.scala 41:32]
    con_dec.io_LUI <= typ_dec.io_LUI @[Control.scala 42:32]
    con_dec.io_AUIPC <= typ_dec.io_AUIPC @[Control.scala 43:26]

  module Reg_File :
    input clock : Clock
    input reset : UInt<1>
    input io_Reg_en : UInt<1>
    input io_rs1 : UInt<5>
    input io_rs2 : UInt<5>
    input io_rd : UInt<5>
    output io_ws1 : SInt<32>
    output io_ws2 : SInt<32>
    input io_wd : SInt<32>

    reg reg_file_0 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_0) @[Reg_File.scala 21:27]
    reg reg_file_1 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_1) @[Reg_File.scala 21:27]
    reg reg_file_2 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_2) @[Reg_File.scala 21:27]
    reg reg_file_3 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_3) @[Reg_File.scala 21:27]
    reg reg_file_4 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_4) @[Reg_File.scala 21:27]
    reg reg_file_5 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_5) @[Reg_File.scala 21:27]
    reg reg_file_6 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_6) @[Reg_File.scala 21:27]
    reg reg_file_7 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_7) @[Reg_File.scala 21:27]
    reg reg_file_8 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_8) @[Reg_File.scala 21:27]
    reg reg_file_9 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_9) @[Reg_File.scala 21:27]
    reg reg_file_10 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_10) @[Reg_File.scala 21:27]
    reg reg_file_11 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_11) @[Reg_File.scala 21:27]
    reg reg_file_12 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_12) @[Reg_File.scala 21:27]
    reg reg_file_13 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_13) @[Reg_File.scala 21:27]
    reg reg_file_14 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_14) @[Reg_File.scala 21:27]
    reg reg_file_15 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_15) @[Reg_File.scala 21:27]
    reg reg_file_16 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_16) @[Reg_File.scala 21:27]
    reg reg_file_17 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_17) @[Reg_File.scala 21:27]
    reg reg_file_18 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_18) @[Reg_File.scala 21:27]
    reg reg_file_19 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_19) @[Reg_File.scala 21:27]
    reg reg_file_20 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_20) @[Reg_File.scala 21:27]
    reg reg_file_21 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_21) @[Reg_File.scala 21:27]
    reg reg_file_22 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_22) @[Reg_File.scala 21:27]
    reg reg_file_23 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_23) @[Reg_File.scala 21:27]
    reg reg_file_24 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_24) @[Reg_File.scala 21:27]
    reg reg_file_25 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_25) @[Reg_File.scala 21:27]
    reg reg_file_26 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_26) @[Reg_File.scala 21:27]
    reg reg_file_27 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_27) @[Reg_File.scala 21:27]
    reg reg_file_28 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_28) @[Reg_File.scala 21:27]
    reg reg_file_29 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_29) @[Reg_File.scala 21:27]
    reg reg_file_30 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_30) @[Reg_File.scala 21:27]
    reg reg_file_31 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), reg_file_31) @[Reg_File.scala 21:27]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_rs1), reg_file_0) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_rs1), reg_file_1, _GEN_0) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_rs1), reg_file_2, _GEN_1) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_rs1), reg_file_3, _GEN_2) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_rs1), reg_file_4, _GEN_3) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_rs1), reg_file_5, _GEN_4) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_rs1), reg_file_6, _GEN_5) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_rs1), reg_file_7, _GEN_6) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_8 = mux(eq(UInt<4>("h8"), io_rs1), reg_file_8, _GEN_7) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_9 = mux(eq(UInt<4>("h9"), io_rs1), reg_file_9, _GEN_8) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_10 = mux(eq(UInt<4>("ha"), io_rs1), reg_file_10, _GEN_9) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_11 = mux(eq(UInt<4>("hb"), io_rs1), reg_file_11, _GEN_10) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_12 = mux(eq(UInt<4>("hc"), io_rs1), reg_file_12, _GEN_11) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_13 = mux(eq(UInt<4>("hd"), io_rs1), reg_file_13, _GEN_12) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_14 = mux(eq(UInt<4>("he"), io_rs1), reg_file_14, _GEN_13) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_15 = mux(eq(UInt<4>("hf"), io_rs1), reg_file_15, _GEN_14) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_16 = mux(eq(UInt<5>("h10"), io_rs1), reg_file_16, _GEN_15) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_17 = mux(eq(UInt<5>("h11"), io_rs1), reg_file_17, _GEN_16) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_18 = mux(eq(UInt<5>("h12"), io_rs1), reg_file_18, _GEN_17) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_19 = mux(eq(UInt<5>("h13"), io_rs1), reg_file_19, _GEN_18) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_20 = mux(eq(UInt<5>("h14"), io_rs1), reg_file_20, _GEN_19) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_21 = mux(eq(UInt<5>("h15"), io_rs1), reg_file_21, _GEN_20) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_22 = mux(eq(UInt<5>("h16"), io_rs1), reg_file_22, _GEN_21) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_23 = mux(eq(UInt<5>("h17"), io_rs1), reg_file_23, _GEN_22) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_24 = mux(eq(UInt<5>("h18"), io_rs1), reg_file_24, _GEN_23) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_25 = mux(eq(UInt<5>("h19"), io_rs1), reg_file_25, _GEN_24) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_26 = mux(eq(UInt<5>("h1a"), io_rs1), reg_file_26, _GEN_25) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_27 = mux(eq(UInt<5>("h1b"), io_rs1), reg_file_27, _GEN_26) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_28 = mux(eq(UInt<5>("h1c"), io_rs1), reg_file_28, _GEN_27) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_29 = mux(eq(UInt<5>("h1d"), io_rs1), reg_file_29, _GEN_28) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_30 = mux(eq(UInt<5>("h1e"), io_rs1), reg_file_30, _GEN_29) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_31 = mux(eq(UInt<5>("h1f"), io_rs1), reg_file_31, _GEN_30) @[Reg_File.scala 22:16 Reg_File.scala 22:16]
    node _GEN_32 = validif(eq(UInt<1>("h0"), io_rs2), reg_file_0) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_33 = mux(eq(UInt<1>("h1"), io_rs2), reg_file_1, _GEN_32) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_34 = mux(eq(UInt<2>("h2"), io_rs2), reg_file_2, _GEN_33) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_35 = mux(eq(UInt<2>("h3"), io_rs2), reg_file_3, _GEN_34) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_36 = mux(eq(UInt<3>("h4"), io_rs2), reg_file_4, _GEN_35) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_37 = mux(eq(UInt<3>("h5"), io_rs2), reg_file_5, _GEN_36) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_38 = mux(eq(UInt<3>("h6"), io_rs2), reg_file_6, _GEN_37) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_39 = mux(eq(UInt<3>("h7"), io_rs2), reg_file_7, _GEN_38) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_40 = mux(eq(UInt<4>("h8"), io_rs2), reg_file_8, _GEN_39) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_41 = mux(eq(UInt<4>("h9"), io_rs2), reg_file_9, _GEN_40) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_42 = mux(eq(UInt<4>("ha"), io_rs2), reg_file_10, _GEN_41) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_43 = mux(eq(UInt<4>("hb"), io_rs2), reg_file_11, _GEN_42) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_44 = mux(eq(UInt<4>("hc"), io_rs2), reg_file_12, _GEN_43) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_45 = mux(eq(UInt<4>("hd"), io_rs2), reg_file_13, _GEN_44) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_46 = mux(eq(UInt<4>("he"), io_rs2), reg_file_14, _GEN_45) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_47 = mux(eq(UInt<4>("hf"), io_rs2), reg_file_15, _GEN_46) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_48 = mux(eq(UInt<5>("h10"), io_rs2), reg_file_16, _GEN_47) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_49 = mux(eq(UInt<5>("h11"), io_rs2), reg_file_17, _GEN_48) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_50 = mux(eq(UInt<5>("h12"), io_rs2), reg_file_18, _GEN_49) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_51 = mux(eq(UInt<5>("h13"), io_rs2), reg_file_19, _GEN_50) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_52 = mux(eq(UInt<5>("h14"), io_rs2), reg_file_20, _GEN_51) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_53 = mux(eq(UInt<5>("h15"), io_rs2), reg_file_21, _GEN_52) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_54 = mux(eq(UInt<5>("h16"), io_rs2), reg_file_22, _GEN_53) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_55 = mux(eq(UInt<5>("h17"), io_rs2), reg_file_23, _GEN_54) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_56 = mux(eq(UInt<5>("h18"), io_rs2), reg_file_24, _GEN_55) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_57 = mux(eq(UInt<5>("h19"), io_rs2), reg_file_25, _GEN_56) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_58 = mux(eq(UInt<5>("h1a"), io_rs2), reg_file_26, _GEN_57) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_59 = mux(eq(UInt<5>("h1b"), io_rs2), reg_file_27, _GEN_58) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_60 = mux(eq(UInt<5>("h1c"), io_rs2), reg_file_28, _GEN_59) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_61 = mux(eq(UInt<5>("h1d"), io_rs2), reg_file_29, _GEN_60) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_62 = mux(eq(UInt<5>("h1e"), io_rs2), reg_file_30, _GEN_61) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _GEN_63 = mux(eq(UInt<5>("h1f"), io_rs2), reg_file_31, _GEN_62) @[Reg_File.scala 23:16 Reg_File.scala 23:16]
    node _T = eq(io_Reg_en, UInt<1>("h1")) @[Reg_File.scala 24:24]
    node _T_1 = eq(io_rd, UInt<1>("h0")) @[Reg_File.scala 25:28]
    node _reg_file_io_rd = pad(asSInt(UInt<1>("h0")), 32) @[Reg_File.scala 26:41 Reg_File.scala 26:41]
    node _GEN_64 = mux(eq(UInt<1>("h0"), io_rd), _reg_file_io_rd, reg_file_0) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_65 = mux(eq(UInt<1>("h1"), io_rd), _reg_file_io_rd, reg_file_1) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_66 = mux(eq(UInt<2>("h2"), io_rd), _reg_file_io_rd, reg_file_2) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_67 = mux(eq(UInt<2>("h3"), io_rd), _reg_file_io_rd, reg_file_3) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_68 = mux(eq(UInt<3>("h4"), io_rd), _reg_file_io_rd, reg_file_4) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_69 = mux(eq(UInt<3>("h5"), io_rd), _reg_file_io_rd, reg_file_5) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_70 = mux(eq(UInt<3>("h6"), io_rd), _reg_file_io_rd, reg_file_6) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_71 = mux(eq(UInt<3>("h7"), io_rd), _reg_file_io_rd, reg_file_7) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_72 = mux(eq(UInt<4>("h8"), io_rd), _reg_file_io_rd, reg_file_8) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_73 = mux(eq(UInt<4>("h9"), io_rd), _reg_file_io_rd, reg_file_9) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_74 = mux(eq(UInt<4>("ha"), io_rd), _reg_file_io_rd, reg_file_10) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_75 = mux(eq(UInt<4>("hb"), io_rd), _reg_file_io_rd, reg_file_11) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_76 = mux(eq(UInt<4>("hc"), io_rd), _reg_file_io_rd, reg_file_12) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_77 = mux(eq(UInt<4>("hd"), io_rd), _reg_file_io_rd, reg_file_13) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_78 = mux(eq(UInt<4>("he"), io_rd), _reg_file_io_rd, reg_file_14) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_79 = mux(eq(UInt<4>("hf"), io_rd), _reg_file_io_rd, reg_file_15) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_80 = mux(eq(UInt<5>("h10"), io_rd), _reg_file_io_rd, reg_file_16) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_81 = mux(eq(UInt<5>("h11"), io_rd), _reg_file_io_rd, reg_file_17) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_82 = mux(eq(UInt<5>("h12"), io_rd), _reg_file_io_rd, reg_file_18) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_83 = mux(eq(UInt<5>("h13"), io_rd), _reg_file_io_rd, reg_file_19) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_84 = mux(eq(UInt<5>("h14"), io_rd), _reg_file_io_rd, reg_file_20) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_85 = mux(eq(UInt<5>("h15"), io_rd), _reg_file_io_rd, reg_file_21) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_86 = mux(eq(UInt<5>("h16"), io_rd), _reg_file_io_rd, reg_file_22) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_87 = mux(eq(UInt<5>("h17"), io_rd), _reg_file_io_rd, reg_file_23) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_88 = mux(eq(UInt<5>("h18"), io_rd), _reg_file_io_rd, reg_file_24) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_89 = mux(eq(UInt<5>("h19"), io_rd), _reg_file_io_rd, reg_file_25) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_90 = mux(eq(UInt<5>("h1a"), io_rd), _reg_file_io_rd, reg_file_26) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_91 = mux(eq(UInt<5>("h1b"), io_rd), _reg_file_io_rd, reg_file_27) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_92 = mux(eq(UInt<5>("h1c"), io_rd), _reg_file_io_rd, reg_file_28) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_93 = mux(eq(UInt<5>("h1d"), io_rd), _reg_file_io_rd, reg_file_29) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_94 = mux(eq(UInt<5>("h1e"), io_rd), _reg_file_io_rd, reg_file_30) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _GEN_95 = mux(eq(UInt<5>("h1f"), io_rd), _reg_file_io_rd, reg_file_31) @[Reg_File.scala 26:41 Reg_File.scala 26:41 Reg_File.scala 21:27]
    node _reg_file_io_rd_0 = io_wd @[Reg_File.scala 28:41 Reg_File.scala 28:41]
    node _GEN_96 = mux(eq(UInt<1>("h0"), io_rd), _reg_file_io_rd_0, reg_file_0) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_97 = mux(eq(UInt<1>("h1"), io_rd), _reg_file_io_rd_0, reg_file_1) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_98 = mux(eq(UInt<2>("h2"), io_rd), _reg_file_io_rd_0, reg_file_2) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_99 = mux(eq(UInt<2>("h3"), io_rd), _reg_file_io_rd_0, reg_file_3) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_100 = mux(eq(UInt<3>("h4"), io_rd), _reg_file_io_rd_0, reg_file_4) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_101 = mux(eq(UInt<3>("h5"), io_rd), _reg_file_io_rd_0, reg_file_5) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_102 = mux(eq(UInt<3>("h6"), io_rd), _reg_file_io_rd_0, reg_file_6) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_103 = mux(eq(UInt<3>("h7"), io_rd), _reg_file_io_rd_0, reg_file_7) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_104 = mux(eq(UInt<4>("h8"), io_rd), _reg_file_io_rd_0, reg_file_8) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_105 = mux(eq(UInt<4>("h9"), io_rd), _reg_file_io_rd_0, reg_file_9) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_106 = mux(eq(UInt<4>("ha"), io_rd), _reg_file_io_rd_0, reg_file_10) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_107 = mux(eq(UInt<4>("hb"), io_rd), _reg_file_io_rd_0, reg_file_11) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_108 = mux(eq(UInt<4>("hc"), io_rd), _reg_file_io_rd_0, reg_file_12) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_109 = mux(eq(UInt<4>("hd"), io_rd), _reg_file_io_rd_0, reg_file_13) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_110 = mux(eq(UInt<4>("he"), io_rd), _reg_file_io_rd_0, reg_file_14) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_111 = mux(eq(UInt<4>("hf"), io_rd), _reg_file_io_rd_0, reg_file_15) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_112 = mux(eq(UInt<5>("h10"), io_rd), _reg_file_io_rd_0, reg_file_16) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_113 = mux(eq(UInt<5>("h11"), io_rd), _reg_file_io_rd_0, reg_file_17) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_114 = mux(eq(UInt<5>("h12"), io_rd), _reg_file_io_rd_0, reg_file_18) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_115 = mux(eq(UInt<5>("h13"), io_rd), _reg_file_io_rd_0, reg_file_19) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_116 = mux(eq(UInt<5>("h14"), io_rd), _reg_file_io_rd_0, reg_file_20) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_117 = mux(eq(UInt<5>("h15"), io_rd), _reg_file_io_rd_0, reg_file_21) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_118 = mux(eq(UInt<5>("h16"), io_rd), _reg_file_io_rd_0, reg_file_22) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_119 = mux(eq(UInt<5>("h17"), io_rd), _reg_file_io_rd_0, reg_file_23) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_120 = mux(eq(UInt<5>("h18"), io_rd), _reg_file_io_rd_0, reg_file_24) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_121 = mux(eq(UInt<5>("h19"), io_rd), _reg_file_io_rd_0, reg_file_25) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_122 = mux(eq(UInt<5>("h1a"), io_rd), _reg_file_io_rd_0, reg_file_26) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_123 = mux(eq(UInt<5>("h1b"), io_rd), _reg_file_io_rd_0, reg_file_27) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_124 = mux(eq(UInt<5>("h1c"), io_rd), _reg_file_io_rd_0, reg_file_28) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_125 = mux(eq(UInt<5>("h1d"), io_rd), _reg_file_io_rd_0, reg_file_29) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_126 = mux(eq(UInt<5>("h1e"), io_rd), _reg_file_io_rd_0, reg_file_30) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_127 = mux(eq(UInt<5>("h1f"), io_rd), _reg_file_io_rd_0, reg_file_31) @[Reg_File.scala 28:41 Reg_File.scala 28:41 Reg_File.scala 21:27]
    node _GEN_128 = mux(_T_1, _GEN_64, _GEN_96) @[Reg_File.scala 25:43]
    node _GEN_129 = mux(_T_1, _GEN_65, _GEN_97) @[Reg_File.scala 25:43]
    node _GEN_130 = mux(_T_1, _GEN_66, _GEN_98) @[Reg_File.scala 25:43]
    node _GEN_131 = mux(_T_1, _GEN_67, _GEN_99) @[Reg_File.scala 25:43]
    node _GEN_132 = mux(_T_1, _GEN_68, _GEN_100) @[Reg_File.scala 25:43]
    node _GEN_133 = mux(_T_1, _GEN_69, _GEN_101) @[Reg_File.scala 25:43]
    node _GEN_134 = mux(_T_1, _GEN_70, _GEN_102) @[Reg_File.scala 25:43]
    node _GEN_135 = mux(_T_1, _GEN_71, _GEN_103) @[Reg_File.scala 25:43]
    node _GEN_136 = mux(_T_1, _GEN_72, _GEN_104) @[Reg_File.scala 25:43]
    node _GEN_137 = mux(_T_1, _GEN_73, _GEN_105) @[Reg_File.scala 25:43]
    node _GEN_138 = mux(_T_1, _GEN_74, _GEN_106) @[Reg_File.scala 25:43]
    node _GEN_139 = mux(_T_1, _GEN_75, _GEN_107) @[Reg_File.scala 25:43]
    node _GEN_140 = mux(_T_1, _GEN_76, _GEN_108) @[Reg_File.scala 25:43]
    node _GEN_141 = mux(_T_1, _GEN_77, _GEN_109) @[Reg_File.scala 25:43]
    node _GEN_142 = mux(_T_1, _GEN_78, _GEN_110) @[Reg_File.scala 25:43]
    node _GEN_143 = mux(_T_1, _GEN_79, _GEN_111) @[Reg_File.scala 25:43]
    node _GEN_144 = mux(_T_1, _GEN_80, _GEN_112) @[Reg_File.scala 25:43]
    node _GEN_145 = mux(_T_1, _GEN_81, _GEN_113) @[Reg_File.scala 25:43]
    node _GEN_146 = mux(_T_1, _GEN_82, _GEN_114) @[Reg_File.scala 25:43]
    node _GEN_147 = mux(_T_1, _GEN_83, _GEN_115) @[Reg_File.scala 25:43]
    node _GEN_148 = mux(_T_1, _GEN_84, _GEN_116) @[Reg_File.scala 25:43]
    node _GEN_149 = mux(_T_1, _GEN_85, _GEN_117) @[Reg_File.scala 25:43]
    node _GEN_150 = mux(_T_1, _GEN_86, _GEN_118) @[Reg_File.scala 25:43]
    node _GEN_151 = mux(_T_1, _GEN_87, _GEN_119) @[Reg_File.scala 25:43]
    node _GEN_152 = mux(_T_1, _GEN_88, _GEN_120) @[Reg_File.scala 25:43]
    node _GEN_153 = mux(_T_1, _GEN_89, _GEN_121) @[Reg_File.scala 25:43]
    node _GEN_154 = mux(_T_1, _GEN_90, _GEN_122) @[Reg_File.scala 25:43]
    node _GEN_155 = mux(_T_1, _GEN_91, _GEN_123) @[Reg_File.scala 25:43]
    node _GEN_156 = mux(_T_1, _GEN_92, _GEN_124) @[Reg_File.scala 25:43]
    node _GEN_157 = mux(_T_1, _GEN_93, _GEN_125) @[Reg_File.scala 25:43]
    node _GEN_158 = mux(_T_1, _GEN_94, _GEN_126) @[Reg_File.scala 25:43]
    node _GEN_159 = mux(_T_1, _GEN_95, _GEN_127) @[Reg_File.scala 25:43]
    node _GEN_160 = mux(_T, _GEN_128, reg_file_0) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_161 = mux(_T, _GEN_129, reg_file_1) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_162 = mux(_T, _GEN_130, reg_file_2) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_163 = mux(_T, _GEN_131, reg_file_3) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_164 = mux(_T, _GEN_132, reg_file_4) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_165 = mux(_T, _GEN_133, reg_file_5) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_166 = mux(_T, _GEN_134, reg_file_6) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_167 = mux(_T, _GEN_135, reg_file_7) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_168 = mux(_T, _GEN_136, reg_file_8) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_169 = mux(_T, _GEN_137, reg_file_9) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_170 = mux(_T, _GEN_138, reg_file_10) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_171 = mux(_T, _GEN_139, reg_file_11) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_172 = mux(_T, _GEN_140, reg_file_12) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_173 = mux(_T, _GEN_141, reg_file_13) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_174 = mux(_T, _GEN_142, reg_file_14) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_175 = mux(_T, _GEN_143, reg_file_15) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_176 = mux(_T, _GEN_144, reg_file_16) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_177 = mux(_T, _GEN_145, reg_file_17) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_178 = mux(_T, _GEN_146, reg_file_18) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_179 = mux(_T, _GEN_147, reg_file_19) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_180 = mux(_T, _GEN_148, reg_file_20) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_181 = mux(_T, _GEN_149, reg_file_21) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_182 = mux(_T, _GEN_150, reg_file_22) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_183 = mux(_T, _GEN_151, reg_file_23) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_184 = mux(_T, _GEN_152, reg_file_24) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_185 = mux(_T, _GEN_153, reg_file_25) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_186 = mux(_T, _GEN_154, reg_file_26) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_187 = mux(_T, _GEN_155, reg_file_27) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_188 = mux(_T, _GEN_156, reg_file_28) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_189 = mux(_T, _GEN_157, reg_file_29) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_190 = mux(_T, _GEN_158, reg_file_30) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _GEN_191 = mux(_T, _GEN_159, reg_file_31) @[Reg_File.scala 24:32 Reg_File.scala 21:27]
    node _reg_file_io_rs1 = _GEN_31 @[Reg_File.scala 22:16]
    node _reg_file_io_rs2 = _GEN_63 @[Reg_File.scala 23:16]
    io_ws1 <= _reg_file_io_rs1 @[Reg_File.scala 22:16]
    io_ws2 <= _reg_file_io_rs2 @[Reg_File.scala 23:16]
    reg_file_0 <= _GEN_160
    reg_file_1 <= _GEN_161
    reg_file_2 <= _GEN_162
    reg_file_3 <= _GEN_163
    reg_file_4 <= _GEN_164
    reg_file_5 <= _GEN_165
    reg_file_6 <= _GEN_166
    reg_file_7 <= _GEN_167
    reg_file_8 <= _GEN_168
    reg_file_9 <= _GEN_169
    reg_file_10 <= _GEN_170
    reg_file_11 <= _GEN_171
    reg_file_12 <= _GEN_172
    reg_file_13 <= _GEN_173
    reg_file_14 <= _GEN_174
    reg_file_15 <= _GEN_175
    reg_file_16 <= _GEN_176
    reg_file_17 <= _GEN_177
    reg_file_18 <= _GEN_178
    reg_file_19 <= _GEN_179
    reg_file_20 <= _GEN_180
    reg_file_21 <= _GEN_181
    reg_file_22 <= _GEN_182
    reg_file_23 <= _GEN_183
    reg_file_24 <= _GEN_184
    reg_file_25 <= _GEN_185
    reg_file_26 <= _GEN_186
    reg_file_27 <= _GEN_187
    reg_file_28 <= _GEN_188
    reg_file_29 <= _GEN_189
    reg_file_30 <= _GEN_190
    reg_file_31 <= _GEN_191

  module Immediate_Gen :
    input clock : Clock
    input reset : UInt<1>
    input io_instr : UInt<32>
    output io_immd_se : SInt<32>
    input io_pc : UInt<32>

    node _T = bits(io_instr, 6, 0) @[Immediate_Gen.scala 17:22]
    node _T_1 = eq(_T, UInt<6>("h23")) @[Immediate_Gen.scala 17:27]
    node _io_immd_se_T = bits(io_instr, 31, 31) @[Immediate_Gen.scala 18:52]
    node _io_immd_se_T_1 = bits(_io_immd_se_T, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi_hi = mux(_io_immd_se_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_hi_lo = bits(io_instr, 31, 25) @[Immediate_Gen.scala 18:66]
    node io_immd_se_lo = bits(io_instr, 11, 7) @[Immediate_Gen.scala 18:82]
    node io_immd_se_hi = cat(io_immd_se_hi_hi, io_immd_se_hi_lo) @[Cat.scala 30:58]
    node _io_immd_se_T_2 = cat(io_immd_se_hi, io_immd_se_lo) @[Cat.scala 30:58]
    node _io_immd_se_T_3 = asSInt(_io_immd_se_T_2) @[Immediate_Gen.scala 18:91]
    node _T_2 = bits(io_instr, 6, 0) @[Immediate_Gen.scala 21:23]
    node _T_3 = eq(_T_2, UInt<5>("h17")) @[Immediate_Gen.scala 21:28]
    node io_immd_se_hi_hi_hi = bits(io_instr, 31, 31) @[Immediate_Gen.scala 22:44]
    node io_immd_se_hi_hi_lo = bits(io_instr, 30, 25) @[Immediate_Gen.scala 22:57]
    node io_immd_se_hi_lo_1 = bits(io_instr, 24, 21) @[Immediate_Gen.scala 22:73]
    node io_immd_se_lo_hi = bits(io_instr, 20, 20) @[Immediate_Gen.scala 22:89]
    node io_immd_se_lo_lo = bits(io_instr, 19, 12) @[Immediate_Gen.scala 22:102]
    node io_immd_se_lo_1 = cat(io_immd_se_lo_hi, io_immd_se_lo_lo) @[Cat.scala 30:58]
    node io_immd_se_hi_hi_1 = cat(io_immd_se_hi_hi_hi, io_immd_se_hi_hi_lo) @[Cat.scala 30:58]
    node io_immd_se_hi_1 = cat(io_immd_se_hi_hi_1, io_immd_se_hi_lo_1) @[Cat.scala 30:58]
    node _io_immd_se_T_4 = cat(io_immd_se_hi_1, io_immd_se_lo_1) @[Cat.scala 30:58]
    node _io_immd_se_T_5 = dshl(_io_immd_se_T_4, UInt<4>("hc")) @[Immediate_Gen.scala 22:111]
    node _io_immd_se_T_6 = asSInt(_io_immd_se_T_5) @[Immediate_Gen.scala 22:120]
    node _T_4 = bits(io_instr, 6, 0) @[Immediate_Gen.scala 25:23]
    node _T_5 = eq(_T_4, UInt<5>("h13")) @[Immediate_Gen.scala 25:28]
    node _T_6 = bits(io_instr, 6, 0) @[Immediate_Gen.scala 25:54]
    node _T_7 = eq(_T_6, UInt<2>("h3")) @[Immediate_Gen.scala 25:59]
    node _T_8 = or(_T_5, _T_7) @[Immediate_Gen.scala 25:44]
    node _io_immd_se_T_7 = bits(io_instr, 31, 31) @[Immediate_Gen.scala 26:52]
    node _io_immd_se_T_8 = bits(_io_immd_se_T_7, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi_2 = mux(_io_immd_se_T_8, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_lo_2 = bits(io_instr, 31, 20) @[Immediate_Gen.scala 26:66]
    node _io_immd_se_T_9 = cat(io_immd_se_hi_2, io_immd_se_lo_2) @[Cat.scala 30:58]
    node _io_immd_se_T_10 = asSInt(_io_immd_se_T_9) @[Immediate_Gen.scala 26:76]
    node _T_9 = bits(io_instr, 6, 0) @[Immediate_Gen.scala 29:23]
    node _T_10 = eq(_T_9, UInt<7>("h63")) @[Immediate_Gen.scala 29:28]
    node _io_immd_se_T_11 = bits(io_instr, 31, 31) @[Immediate_Gen.scala 30:52]
    node _io_immd_se_T_12 = bits(_io_immd_se_T_11, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi_hi_hi_1 = mux(_io_immd_se_T_12, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_hi_hi_lo_1 = bits(io_instr, 31, 31) @[Immediate_Gen.scala 30:66]
    node io_immd_se_hi_lo_2 = bits(io_instr, 7, 7) @[Immediate_Gen.scala 30:79]
    node io_immd_se_lo_hi_hi = bits(io_instr, 30, 25) @[Immediate_Gen.scala 30:91]
    node io_immd_se_lo_hi_lo = bits(io_instr, 11, 8) @[Immediate_Gen.scala 30:107]
    node io_immd_se_lo_hi_1 = cat(io_immd_se_lo_hi_hi, io_immd_se_lo_hi_lo) @[Cat.scala 30:58]
    node io_immd_se_lo_3 = cat(io_immd_se_lo_hi_1, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_immd_se_hi_hi_2 = cat(io_immd_se_hi_hi_hi_1, io_immd_se_hi_hi_lo_1) @[Cat.scala 30:58]
    node io_immd_se_hi_3 = cat(io_immd_se_hi_hi_2, io_immd_se_hi_lo_2) @[Cat.scala 30:58]
    node _io_immd_se_T_13 = cat(io_immd_se_hi_3, io_immd_se_lo_3) @[Cat.scala 30:58]
    node _io_immd_se_T_14 = add(_io_immd_se_T_13, io_pc) @[Immediate_Gen.scala 30:119]
    node _io_immd_se_T_15 = tail(_io_immd_se_T_14, 1) @[Immediate_Gen.scala 30:119]
    node _io_immd_se_T_16 = asSInt(_io_immd_se_T_15) @[Immediate_Gen.scala 30:134]
    node _T_11 = bits(io_instr, 6, 0) @[Immediate_Gen.scala 33:23]
    node _T_12 = eq(_T_11, UInt<7>("h6f")) @[Immediate_Gen.scala 33:28]
    node uj_imm21_hi_hi_hi = bits(io_instr, 31, 31) @[Immediate_Gen.scala 34:45]
    node uj_imm21_hi_hi_lo = bits(io_instr, 19, 12) @[Immediate_Gen.scala 34:58]
    node uj_imm21_hi_lo = bits(io_instr, 20, 20) @[Immediate_Gen.scala 34:74]
    node uj_imm21_lo_hi = bits(io_instr, 30, 21) @[Immediate_Gen.scala 34:87]
    node uj_imm21_lo = cat(uj_imm21_lo_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node uj_imm21_hi_hi = cat(uj_imm21_hi_hi_hi, uj_imm21_hi_hi_lo) @[Cat.scala 30:58]
    node uj_imm21_hi = cat(uj_imm21_hi_hi, uj_imm21_hi_lo) @[Cat.scala 30:58]
    node io_immd_se_lo_4 = cat(uj_imm21_hi, uj_imm21_lo) @[Cat.scala 30:58]
    node _io_immd_se_T_17 = bits(io_immd_se_lo_4, 20, 20) @[Immediate_Gen.scala 35:49]
    node _io_immd_se_T_18 = bits(_io_immd_se_T_17, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi_4 = mux(_io_immd_se_T_18, UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node _io_immd_se_T_19 = cat(io_immd_se_hi_4, io_immd_se_lo_4) @[Cat.scala 30:58]
    node _io_immd_se_T_20 = add(_io_immd_se_T_19, io_pc) @[Immediate_Gen.scala 35:66]
    node _io_immd_se_T_21 = tail(_io_immd_se_T_20, 1) @[Immediate_Gen.scala 35:66]
    node _io_immd_se_T_22 = asSInt(_io_immd_se_T_21) @[Immediate_Gen.scala 35:75]
    node _GEN_0 = mux(_T_12, _io_immd_se_T_22, asSInt(UInt<1>("h0"))) @[Immediate_Gen.scala 33:44 Immediate_Gen.scala 35:24 Immediate_Gen.scala 15:20]
    node _GEN_1 = mux(_T_10, _io_immd_se_T_16, _GEN_0) @[Immediate_Gen.scala 29:44 Immediate_Gen.scala 30:28]
    node _GEN_2 = mux(_T_8, _io_immd_se_T_10, _GEN_1) @[Immediate_Gen.scala 25:76 Immediate_Gen.scala 26:28]
    node _GEN_3 = mux(_T_3, _io_immd_se_T_6, _GEN_2) @[Immediate_Gen.scala 21:44 Immediate_Gen.scala 22:28]
    node _GEN_4 = mux(_T_1, _io_immd_se_T_3, _GEN_3) @[Immediate_Gen.scala 17:43 Immediate_Gen.scala 18:28]
    io_immd_se <= asSInt(bits(_GEN_4, 31, 0))

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_alu_op : UInt<5>
    input io_arg_x : SInt<32>
    input io_arg_y : SInt<32>
    output io_alu_out : SInt<32>

    node _T = eq(io_alu_op, UInt<1>("h0")) @[ALU.scala 17:22]
    node _io_alu_out_T = add(io_arg_x, io_arg_y) @[ALU.scala 18:32]
    node _io_alu_out_T_1 = tail(_io_alu_out_T, 1) @[ALU.scala 18:32]
    node _io_alu_out_T_2 = asSInt(_io_alu_out_T_1) @[ALU.scala 18:32]
    node _T_1 = eq(io_alu_op, UInt<1>("h1")) @[ALU.scala 20:27]
    node _io_alu_out_T_3 = sub(io_arg_x, io_arg_y) @[ALU.scala 21:32]
    node _io_alu_out_T_4 = tail(_io_alu_out_T_3, 1) @[ALU.scala 21:32]
    node _io_alu_out_T_5 = asSInt(_io_alu_out_T_4) @[ALU.scala 21:32]
    node _T_2 = eq(io_alu_op, UInt<2>("h2")) @[ALU.scala 23:27]
    node _io_alu_out_T_6 = and(io_arg_x, io_arg_y) @[ALU.scala 24:32]
    node _io_alu_out_T_7 = asSInt(_io_alu_out_T_6) @[ALU.scala 24:32]
    node _T_3 = eq(io_alu_op, UInt<2>("h3")) @[ALU.scala 26:27]
    node _io_alu_out_T_8 = or(io_arg_x, io_arg_y) @[ALU.scala 27:33]
    node _io_alu_out_T_9 = asSInt(_io_alu_out_T_8) @[ALU.scala 27:33]
    node _T_4 = eq(io_alu_op, UInt<3>("h4")) @[ALU.scala 29:27]
    node _io_alu_out_T_10 = xor(io_arg_x, io_arg_y) @[ALU.scala 30:33]
    node _io_alu_out_T_11 = asSInt(_io_alu_out_T_10) @[ALU.scala 30:33]
    node _T_5 = eq(io_alu_op, UInt<3>("h5")) @[ALU.scala 32:27]
    node _io_alu_out_T_12 = bits(io_arg_y, 4, 0) @[ALU.scala 33:43]
    node _io_alu_out_T_13 = dshr(io_arg_x, _io_alu_out_T_12) @[ALU.scala 33:32]
    node _T_6 = eq(io_alu_op, UInt<3>("h6")) @[ALU.scala 35:27]
    node _io_alu_out_T_14 = bits(io_arg_y, 4, 0) @[ALU.scala 36:43]
    node _io_alu_out_T_15 = dshr(io_arg_x, _io_alu_out_T_14) @[ALU.scala 36:32]
    node _T_7 = eq(io_alu_op, UInt<3>("h7")) @[ALU.scala 38:27]
    node _io_alu_out_T_16 = bits(io_arg_y, 4, 0) @[ALU.scala 39:43]
    node _io_alu_out_T_17 = dshl(io_arg_x, _io_alu_out_T_16) @[ALU.scala 39:32]
    node _T_8 = eq(io_alu_op, UInt<4>("ha")) @[ALU.scala 48:27]
    node _T_9 = eq(io_alu_op, UInt<4>("hb")) @[ALU.scala 51:27]
    node _GEN_0 = mux(_T_9, io_arg_y, asSInt(UInt<1>("h0"))) @[ALU.scala 51:37 ALU.scala 52:20 ALU.scala 58:24]
    node _GEN_1 = mux(_T_8, io_arg_x, _GEN_0) @[ALU.scala 48:36 ALU.scala 49:20]
    node _GEN_2 = mux(_T_7, _io_alu_out_T_17, _GEN_1) @[ALU.scala 38:35 ALU.scala 39:20]
    node _GEN_3 = mux(_T_6, _io_alu_out_T_15, _GEN_2) @[ALU.scala 35:35 ALU.scala 36:20]
    node _GEN_4 = mux(_T_5, _io_alu_out_T_13, _GEN_3) @[ALU.scala 32:35 ALU.scala 33:20]
    node _GEN_5 = mux(_T_4, _io_alu_out_T_11, _GEN_4) @[ALU.scala 29:35 ALU.scala 30:21]
    node _GEN_6 = mux(_T_3, _io_alu_out_T_9, _GEN_5) @[ALU.scala 26:35 ALU.scala 27:21]
    node _GEN_7 = mux(_T_2, _io_alu_out_T_7, _GEN_6) @[ALU.scala 23:35 ALU.scala 24:20]
    node _GEN_8 = mux(_T_1, _io_alu_out_T_5, _GEN_7) @[ALU.scala 20:35 ALU.scala 21:20]
    node _GEN_9 = mux(_T, _io_alu_out_T_2, _GEN_8) @[ALU.scala 17:30 ALU.scala 18:20]
    io_alu_out <= asSInt(bits(_GEN_9, 31, 0))

  module Ins_Mem :
    input clock : Clock
    input reset : UInt<1>
    input io_rAdder : UInt<12>
    output io_wData : UInt<32>

    mem ins_mem : @[Ins_Mem.scala 16:26]
      data-type => UInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_wData_MPORT
      read-under-write => undefined
    node _io_wData_T = bits(io_rAdder, 9, 0) @[Ins_Mem.scala 17:28]
    io_wData <= ins_mem.io_wData_MPORT.data @[Ins_Mem.scala 17:18]
    ins_mem.io_wData_MPORT.addr <= _io_wData_T @[Ins_Mem.scala 17:28]
    ins_mem.io_wData_MPORT.en <= UInt<1>("h1") @[Ins_Mem.scala 17:28]
    ins_mem.io_wData_MPORT.clk <= clock @[Ins_Mem.scala 17:28]

  module JALR :
    input clock : Clock
    input reset : UInt<1>
    input io_a : SInt<32>
    input io_b : SInt<32>
    output io_out : SInt<32>

    node _io_out_T = add(io_a, io_b) @[JALR.scala 17:25]
    node _io_out_T_1 = tail(_io_out_T, 1) @[JALR.scala 17:25]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[JALR.scala 17:25]
    node _io_out_T_3 = and(_io_out_T_2, asSInt(UInt<37>("h842b560d0"))) @[JALR.scala 17:33]
    node _io_out_T_4 = asSInt(_io_out_T_3) @[JALR.scala 17:33]
    io_out <= asSInt(bits(_io_out_T_4, 31, 0)) @[JALR.scala 17:16]

  module Data_Mem :
    input clock : Clock
    input reset : UInt<1>
    input io_addr : UInt<12>
    input io_data_in : SInt<32>
    output io_data_out : SInt<32>
    input io_store : UInt<1>
    input io_load : UInt<1>

    mem data_Mem : @[Data_Mem.scala 19:27]
      data-type => SInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_data_out_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = eq(io_load, UInt<1>("h1")) @[Data_Mem.scala 22:22]
    node _io_data_out_T = bits(io_addr, 9, 0) @[Data_Mem.scala 23:45]
    node _T_1 = eq(io_store, UInt<1>("h1")) @[Data_Mem.scala 24:29]
    node _T_2 = bits(io_addr, 9, 0)
    node _GEN_0 = validif(_T_1, _T_2) @[Data_Mem.scala 24:37]
    node _GEN_1 = validif(_T_1, clock) @[Data_Mem.scala 24:37]
    node _GEN_2 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[Data_Mem.scala 24:37 Data_Mem.scala 19:27]
    node _GEN_3 = validif(_T_1, UInt<1>("h1")) @[Data_Mem.scala 24:37]
    node _GEN_4 = validif(_T_1, io_data_in) @[Data_Mem.scala 24:37]
    node _GEN_5 = validif(_T_1, asSInt(UInt<1>("h0"))) @[Data_Mem.scala 24:37 Data_Mem.scala 20:21]
    node _GEN_6 = validif(_T, _io_data_out_T) @[Data_Mem.scala 22:30 Data_Mem.scala 23:45]
    node _GEN_7 = validif(_T, clock) @[Data_Mem.scala 22:30 Data_Mem.scala 23:45]
    node _GEN_8 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[Data_Mem.scala 22:30 Data_Mem.scala 23:45 Data_Mem.scala 19:27]
    node _GEN_9 = mux(_T, data_Mem.io_data_out_MPORT.data, _GEN_5) @[Data_Mem.scala 22:30 Data_Mem.scala 23:29]
    node _GEN_10 = validif(eq(_T, UInt<1>("h0")), _GEN_0) @[Data_Mem.scala 22:30]
    node _GEN_11 = validif(eq(_T, UInt<1>("h0")), _GEN_1) @[Data_Mem.scala 22:30]
    node _GEN_12 = mux(_T, UInt<1>("h0"), _GEN_2) @[Data_Mem.scala 22:30 Data_Mem.scala 19:27]
    node _GEN_13 = validif(eq(_T, UInt<1>("h0")), _GEN_3) @[Data_Mem.scala 22:30]
    node _GEN_14 = validif(eq(_T, UInt<1>("h0")), _GEN_4) @[Data_Mem.scala 22:30]
    io_data_out <= _GEN_9
    data_Mem.io_data_out_MPORT.addr <= _GEN_6
    data_Mem.io_data_out_MPORT.en <= _GEN_8
    data_Mem.io_data_out_MPORT.clk <= _GEN_7
    data_Mem.MPORT.addr <= _GEN_10
    data_Mem.MPORT.en <= _GEN_12
    data_Mem.MPORT.clk <= _GEN_11
    data_Mem.MPORT.data <= _GEN_14
    data_Mem.MPORT.mask <= _GEN_13

  module Branch :
    input clock : Clock
    input reset : UInt<1>
    input io_func3 : UInt<3>
    input io_branch : UInt<1>
    input io_arg_x : UInt<32>
    input io_arg_y : UInt<32>
    output io_br_taken : UInt<1>

    node _Equalto_T = asSInt(io_arg_x) @[Branch.scala 28:33]
    node _Equalto_T_1 = asSInt(io_arg_y) @[Branch.scala 28:53]
    node _Equalto_T_2 = eq(_Equalto_T, _Equalto_T_1) @[Branch.scala 28:40]
    node Equalto = mux(_Equalto_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 28:22]
    node _Greterthan_T = asSInt(io_arg_x) @[Branch.scala 29:36]
    node _Greterthan_T_1 = asSInt(io_arg_y) @[Branch.scala 29:54]
    node _Greterthan_T_2 = gt(_Greterthan_T, _Greterthan_T_1) @[Branch.scala 29:43]
    node Greterthan = mux(_Greterthan_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 29:25]
    node _Lessthan_T = asSInt(io_arg_x) @[Branch.scala 30:34]
    node _Lessthan_T_1 = asSInt(io_arg_y) @[Branch.scala 30:52]
    node _Lessthan_T_2 = lt(_Lessthan_T, _Lessthan_T_1) @[Branch.scala 30:41]
    node Lessthan = mux(_Lessthan_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 30:23]
    node _Equalto_U_T = eq(io_arg_x, io_arg_y) @[Branch.scala 32:35]
    node Equalto_U = mux(_Equalto_U_T, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 32:24]
    node _Greterthan_U_T = gt(io_arg_x, io_arg_y) @[Branch.scala 33:38]
    node Greterthan_U = mux(_Greterthan_U_T, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 33:27]
    node _Lessthan_U_T = lt(io_arg_x, io_arg_y) @[Branch.scala 34:36]
    node Lessthan_U = mux(_Lessthan_U_T, UInt<1>("h1"), UInt<1>("h0")) @[Branch.scala 34:25]
    node _out_T = eq(io_branch, UInt<1>("h1")) @[Branch.scala 36:30]
    node _out_T_1 = eq(io_func3, UInt<3>("h0")) @[Branch.scala 36:54]
    node _out_T_2 = eq(io_func3, UInt<3>("h1")) @[Branch.scala 36:87]
    node _out_T_3 = not(Equalto) @[Branch.scala 36:97]
    node _out_T_4 = eq(io_func3, UInt<3>("h4")) @[Branch.scala 36:121]
    node _out_T_5 = eq(io_func3, UInt<3>("h5")) @[Branch.scala 36:155]
    node _out_T_6 = or(Greterthan, Equalto) @[Branch.scala 36:177]
    node _out_T_7 = eq(io_func3, UInt<3>("h6")) @[Branch.scala 36:203]
    node _out_T_8 = eq(io_func3, UInt<3>("h7")) @[Branch.scala 36:240]
    node _out_T_9 = or(Greterthan_U, Equalto_U) @[Branch.scala 36:265]
    node _out_T_10 = mux(_out_T_8, _out_T_9, UInt<1>("h0")) @[Branch.scala 36:229]
    node _out_T_11 = mux(_out_T_7, Lessthan_U, _out_T_10) @[Branch.scala 36:192]
    node _out_T_12 = mux(_out_T_5, _out_T_6, _out_T_11) @[Branch.scala 36:144]
    node _out_T_13 = mux(_out_T_4, Lessthan, _out_T_12) @[Branch.scala 36:110]
    node _out_T_14 = mux(_out_T_2, _out_T_3, _out_T_13) @[Branch.scala 36:76]
    node _out_T_15 = mux(_out_T_1, Equalto, _out_T_14) @[Branch.scala 36:43]
    node out = mux(_out_T, _out_T_15, UInt<1>("h0")) @[Branch.scala 36:18]
    io_br_taken <= out @[Branch.scala 38:17]

  module PC :
    input clock : Clock
    input reset : UInt<1>
    input io_input : UInt<32>
    output io_PC_4 : UInt<32>
    output io_pc : UInt<32>

    reg reg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg) @[PC.scala 15:26]
    node _io_PC_4_T = add(reg, UInt<3>("h4")) @[PC.scala 18:24]
    node _io_PC_4_T_1 = tail(_io_PC_4_T, 1) @[PC.scala 18:24]
    io_PC_4 <= _io_PC_4_T_1 @[PC.scala 18:17]
    io_pc <= reg @[PC.scala 17:15]
    reg <= mux(reset, UInt<32>("h0"), io_input) @[PC.scala 15:26 PC.scala 15:26 PC.scala 16:13]

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
    node _T_3 = eq(io_func7, UInt<1>("h0")) @[Alu_Control.scala 32:42]
    node _io_ALUcont_T_16 = eq(io_func3, UInt<1>("h0")) @[Alu_Control.scala 34:46]
    node _io_ALUcont_T_17 = eq(io_func3, UInt<3>("h7")) @[Alu_Control.scala 35:46]
    node _io_ALUcont_T_18 = eq(io_func3, UInt<3>("h6")) @[Alu_Control.scala 36:46]
    node _io_ALUcont_T_19 = eq(io_func3, UInt<3>("h4")) @[Alu_Control.scala 37:46]
    node _io_ALUcont_T_20 = eq(io_func3, UInt<1>("h1")) @[Alu_Control.scala 38:46]
    node _io_ALUcont_T_21 = eq(io_func3, UInt<3>("h5")) @[Alu_Control.scala 39:46]
    node _io_ALUcont_T_22 = eq(io_func3, UInt<2>("h2")) @[Alu_Control.scala 40:46]
    node _io_ALUcont_T_23 = eq(io_func3, UInt<2>("h3")) @[Alu_Control.scala 41:46]
    node _io_ALUcont_T_24 = mux(_io_ALUcont_T_23, UInt<4>("h9"), UInt<1>("h0")) @[Mux.scala 98:16]
    node _io_ALUcont_T_25 = mux(_io_ALUcont_T_22, UInt<4>("h8"), _io_ALUcont_T_24) @[Mux.scala 98:16]
    node _io_ALUcont_T_26 = mux(_io_ALUcont_T_21, UInt<3>("h5"), _io_ALUcont_T_25) @[Mux.scala 98:16]
    node _io_ALUcont_T_27 = mux(_io_ALUcont_T_20, UInt<3>("h7"), _io_ALUcont_T_26) @[Mux.scala 98:16]
    node _io_ALUcont_T_28 = mux(_io_ALUcont_T_19, UInt<3>("h4"), _io_ALUcont_T_27) @[Mux.scala 98:16]
    node _io_ALUcont_T_29 = mux(_io_ALUcont_T_18, UInt<2>("h3"), _io_ALUcont_T_28) @[Mux.scala 98:16]
    node _io_ALUcont_T_30 = mux(_io_ALUcont_T_17, UInt<2>("h2"), _io_ALUcont_T_29) @[Mux.scala 98:16]
    node _io_ALUcont_T_31 = mux(_io_ALUcont_T_16, UInt<1>("h0"), _io_ALUcont_T_30) @[Mux.scala 98:16]
    node _GEN_1 = validif(_T_3, _io_ALUcont_T_31) @[Alu_Control.scala 32:54 Alu_Control.scala 33:47]
    node _T_4 = eq(io_ALUop, UInt<3>("h5")) @[Alu_Control.scala 46:37]
    node _T_5 = eq(io_ALUop, UInt<3>("h4")) @[Alu_Control.scala 48:37]
    node _T_6 = eq(io_ALUop, UInt<3>("h6")) @[Alu_Control.scala 50:37]
    node _T_7 = eq(io_ALUop, UInt<2>("h3")) @[Alu_Control.scala 52:37]
    node _GEN_2 = validif(_T_7, UInt<5>("h1f")) @[Alu_Control.scala 52:50 Alu_Control.scala 53:36]
    node _GEN_3 = mux(_T_6, UInt<1>("h0"), _GEN_2) @[Alu_Control.scala 50:50 Alu_Control.scala 51:36]
    node _GEN_4 = mux(_T_5, UInt<1>("h0"), _GEN_3) @[Alu_Control.scala 48:50 Alu_Control.scala 49:36]
    node _GEN_5 = mux(_T_4, UInt<1>("h0"), _GEN_4) @[Alu_Control.scala 46:50 Alu_Control.scala 47:36]
    node _GEN_6 = mux(_T_2, _GEN_1, _GEN_5) @[Alu_Control.scala 31:50]
    node _GEN_7 = mux(_T, _GEN_0, _GEN_6) @[Alu_Control.scala 16:44]
    io_ALUcont <= bits(_GEN_7, 3, 0)

  module Top :
    input clock : Clock
    input reset : UInt<1>
    output io_ins_out : UInt<32>

    inst control of Control @[TOP.scala 11:25]
    inst register of Reg_File @[TOP.scala 12:26]
    inst immediate of Immediate_Gen @[TOP.scala 13:27]
    inst alu of ALU @[TOP.scala 14:21]
    inst ins_mem of Ins_Mem @[TOP.scala 15:25]
    inst jalr of JALR @[TOP.scala 16:22]
    inst data_mem of Data_Mem @[TOP.scala 17:26]
    inst branch of Branch @[TOP.scala 18:24]
    inst pc of PC @[TOP.scala 19:20]
    inst alu_con of Alu_Control @[TOP.scala 20:25]
    node _ins_mem_io_rAdder_T = bits(pc.io_pc, 11, 2) @[TOP.scala 26:34]
    node _control_io_opcode_T = bits(io_ins_out, 6, 0) @[TOP.scala 30:36]
    node _register_io_rs1_T = bits(io_ins_out, 19, 15) @[TOP.scala 34:34]
    node _register_io_rs2_T = bits(io_ins_out, 24, 20) @[TOP.scala 35:34]
    node _register_io_rd_T = bits(io_ins_out, 11, 7) @[TOP.scala 36:34]
    node _branch_io_func3_T = bits(io_ins_out, 14, 12) @[TOP.scala 45:34]
    node _branch_io_arg_x_T = bits(io_ins_out, 19, 15) @[TOP.scala 46:34]
    node _branch_io_arg_y_T = bits(io_ins_out, 24, 20) @[TOP.scala 47:34]
    node _T = eq(control.io_operand_A_sel, UInt<1>("h1")) @[TOP.scala 50:35]
    node _alu_io_arg_x_T = asSInt(pc.io_pc) @[TOP.scala 51:36]
    node _T_1 = eq(control.io_operand_A_sel, UInt<2>("h2")) @[TOP.scala 52:41]
    node _alu_io_arg_x_T_1 = asSInt(pc.io_PC_4) @[TOP.scala 53:38]
    node _T_2 = eq(control.io_operand_A_sel, UInt<1>("h0")) @[TOP.scala 54:41]
    node _GEN_0 = mux(_T_2, register.io_ws1, asSInt(UInt<1>("h0"))) @[TOP.scala 54:53 TOP.scala 55:22 TOP.scala 57:22]
    node _GEN_1 = mux(_T_1, _alu_io_arg_x_T_1, _GEN_0) @[TOP.scala 52:53 TOP.scala 53:22]
    node _GEN_2 = mux(_T, _alu_io_arg_x_T, _GEN_1) @[TOP.scala 50:47 TOP.scala 51:22]
    node _T_3 = eq(control.io_extend_sel, UInt<1>("h0")) @[TOP.scala 62:32]
    node _T_4 = eq(control.io_operand_B_sel, UInt<1>("h0")) @[TOP.scala 62:71]
    node _T_5 = and(_T_3, _T_4) @[TOP.scala 62:44]
    node _GEN_3 = mux(_T_5, register.io_ws2, immediate.io_immd_se) @[TOP.scala 62:83 TOP.scala 63:22 TOP.scala 65:22]
    node _alu_con_io_func3_T = bits(io_ins_out, 14, 12) @[TOP.scala 70:35]
    node _alu_con_io_func7_T = bits(io_ins_out, 30, 30) @[TOP.scala 71:35]
    node _T_6 = eq(control.io_Next_pc, UInt<2>("h3")) @[TOP.scala 77:29]
    node _pc_io_input_T = asUInt(jalr.io_out) @[TOP.scala 78:38]
    node _T_7 = eq(control.io_Next_pc, UInt<2>("h2")) @[TOP.scala 79:35]
    node _pc_io_input_T_1 = asUInt(immediate.io_immd_se) @[TOP.scala 80:47]
    node _T_8 = eq(control.io_Next_pc, UInt<1>("h1")) @[TOP.scala 81:35]
    node _T_9 = and(control.io_branch, branch.io_br_taken) @[TOP.scala 81:68]
    node _T_10 = eq(_T_9, UInt<1>("h1")) @[TOP.scala 81:90]
    node _T_11 = and(_T_8, _T_10) @[TOP.scala 81:47]
    node _pc_io_input_T_2 = asUInt(immediate.io_immd_se) @[TOP.scala 82:47]
    node _GEN_4 = mux(_T_11, _pc_io_input_T_2, pc.io_PC_4) @[TOP.scala 81:98 TOP.scala 82:21 TOP.scala 84:21]
    node _GEN_5 = mux(_T_7, _pc_io_input_T_1, _GEN_4) @[TOP.scala 79:47 TOP.scala 80:21]
    node _GEN_6 = mux(_T_6, _pc_io_input_T, _GEN_5) @[TOP.scala 77:41 TOP.scala 78:21]
    node _data_mem_io_addr_T = bits(alu.io_alu_out, 13, 2) @[TOP.scala 88:40]
    node _T_12 = eq(control.io_MemtoReg, UInt<1>("h0")) @[TOP.scala 94:30]
    node _GEN_7 = mux(_T_12, data_mem.io_data_out, alu.io_alu_out) @[TOP.scala 94:39 TOP.scala 95:24 TOP.scala 97:24]
    io_ins_out <= ins_mem.io_wData @[TOP.scala 27:16]
    control.clock <= clock
    control.reset <= reset
    control.io_opcode <= _control_io_opcode_T @[TOP.scala 30:23]
    register.clock <= clock
    register.reset <= reset
    register.io_Reg_en <= control.io_RegWrite @[TOP.scala 33:24]
    register.io_rs1 <= _register_io_rs1_T @[TOP.scala 34:21]
    register.io_rs2 <= _register_io_rs2_T @[TOP.scala 35:21]
    register.io_rd <= _register_io_rd_T @[TOP.scala 36:21]
    register.io_wd <= _GEN_7
    immediate.clock <= clock
    immediate.reset <= reset
    immediate.io_instr <= io_ins_out @[TOP.scala 39:24]
    immediate.io_pc <= pc.io_pc @[TOP.scala 40:21]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_alu_op <= alu_con.io_ALUcont @[TOP.scala 74:19]
    alu.io_arg_x <= _GEN_2
    alu.io_arg_y <= _GEN_3
    ins_mem.clock <= clock
    ins_mem.reset <= reset
    ins_mem.io_rAdder <= _ins_mem_io_rAdder_T @[TOP.scala 26:23]
    jalr.clock <= clock
    jalr.reset <= reset
    jalr.io_a <= register.io_ws1 @[TOP.scala 101:15]
    jalr.io_b <= immediate.io_immd_se @[TOP.scala 102:15]
    data_mem.clock <= clock
    data_mem.reset <= reset
    data_mem.io_addr <= _data_mem_io_addr_T @[TOP.scala 88:22]
    data_mem.io_data_in <= register.io_ws2 @[TOP.scala 91:25]
    data_mem.io_store <= control.io_MemWrite @[TOP.scala 90:23]
    data_mem.io_load <= control.io_MemRead @[TOP.scala 89:22]
    branch.clock <= clock
    branch.reset <= reset
    branch.io_func3 <= _branch_io_func3_T @[TOP.scala 45:21]
    branch.io_branch <= control.io_branch @[TOP.scala 44:22]
    branch.io_arg_x <= _branch_io_arg_x_T @[TOP.scala 46:21]
    branch.io_arg_y <= _branch_io_arg_y_T @[TOP.scala 47:21]
    pc.clock <= clock
    pc.reset <= reset
    pc.io_input <= _GEN_6
    alu_con.clock <= clock
    alu_con.reset <= reset
    alu_con.io_ALUop <= control.io_ALUoperation @[TOP.scala 69:22]
    alu_con.io_func7 <= _alu_con_io_func7_T @[TOP.scala 71:22]
    alu_con.io_func3 <= _alu_con_io_func3_T @[TOP.scala 70:22]
