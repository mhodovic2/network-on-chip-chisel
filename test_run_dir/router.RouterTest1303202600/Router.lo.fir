circuit Router :
  module Router :
    input clock : Clock
    input reset : UInt<1>
    input io_in_N_valid_in : UInt<1>
    output io_in_N_ready_out : UInt<1>
    input io_in_N_din : UInt<32>
    input io_in_S_valid_in : UInt<1>
    output io_in_S_ready_out : UInt<1>
    input io_in_S_din : UInt<32>
    input io_in_W_valid_in : UInt<1>
    output io_in_W_ready_out : UInt<1>
    input io_in_W_din : UInt<32>
    input io_in_E_valid_in : UInt<1>
    output io_in_E_ready_out : UInt<1>
    input io_in_E_din : UInt<32>
    input io_in_CPU_valid_in : UInt<1>
    output io_in_CPU_ready_out : UInt<1>
    input io_in_CPU_din : UInt<32>
    output io_out_N_valid_out : UInt<1>
    input io_out_N_ready_in : UInt<1>
    output io_out_N_dout : UInt<32>
    output io_out_S_valid_out : UInt<1>
    input io_out_S_ready_in : UInt<1>
    output io_out_S_dout : UInt<32>
    output io_out_W_valid_out : UInt<1>
    input io_out_W_ready_in : UInt<1>
    output io_out_W_dout : UInt<32>
    output io_out_E_valid_out : UInt<1>
    input io_out_E_ready_in : UInt<1>
    output io_out_E_dout : UInt<32>
    output io_out_CPU_valid_out : UInt<1>
    input io_out_CPU_ready_in : UInt<1>
    output io_out_CPU_dout : UInt<32>
    input io_x : UInt<2>
    input io_y : UInt<2>
  
    reg som : UInt<1>, clock with :
      reset => (UInt<1>("h0"), som) @[Router.scala 46:20]
    reg dataReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg) @[Router.scala 72:24]
    reg dataReg_N : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_N) @[Router.scala 73:26]
    reg dataReg_S : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_S) @[Router.scala 74:26]
    reg dataReg_W : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_W) @[Router.scala 75:26]
    reg dataReg_E : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_E) @[Router.scala 76:26]
    reg dataReg_CPU : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_CPU) @[Router.scala 77:28]
    reg stateReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Router.scala 80:25]
    node destination_x = bits(dataReg, 1, 0) @[Router.scala 82:30]
    node destination_y = bits(dataReg, 3, 2) @[Router.scala 83:30]
    node _T = gt(destination_x, io_x) @[Router.scala 85:23]
    node _T_1 = lt(destination_x, io_x) @[Router.scala 87:29]
    node _T_2 = gt(destination_y, io_y) @[Router.scala 90:25]
    node _T_3 = lt(destination_y, io_y) @[Router.scala 92:31]
    node _GEN_0 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 92:39]
    node _GEN_1 = mux(_T_3, UInt<1>("h0"), UInt<1>("h1")) @[Router.scala 92:39]
    node _GEN_2 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 90:33]
    node _GEN_3 = mux(_T_2, UInt<1>("h0"), _GEN_0) @[Router.scala 90:33]
    node _GEN_4 = mux(_T_2, UInt<1>("h0"), _GEN_1) @[Router.scala 90:33]
    node _GEN_5 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 87:37]
    node _GEN_6 = mux(_T_1, UInt<1>("h0"), _GEN_2) @[Router.scala 87:37]
    node _GEN_7 = mux(_T_1, UInt<1>("h0"), _GEN_3) @[Router.scala 87:37]
    node _GEN_8 = mux(_T_1, UInt<1>("h0"), _GEN_4) @[Router.scala 87:37]
    node _GEN_9 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 85:31]
    node _GEN_10 = mux(_T, UInt<1>("h0"), _GEN_5) @[Router.scala 85:31]
    node _GEN_11 = mux(_T, UInt<1>("h0"), _GEN_6) @[Router.scala 85:31]
    node _GEN_12 = mux(_T, UInt<1>("h0"), _GEN_7) @[Router.scala 85:31]
    node _GEN_13 = mux(_T, UInt<1>("h0"), _GEN_8) @[Router.scala 85:31]
    node _T_4 = eq(stateReg, UInt<1>("h0")) @[Router.scala 100:17]
    node _GEN_14 = mux(io_in_E_valid_in, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 116:34]
    node _GEN_15 = mux(io_in_E_valid_in, UInt<1>("h1"), stateReg) @[Router.scala 116:34]
    node _GEN_16 = mux(io_in_E_valid_in, io_in_E_din, dataReg_E) @[Router.scala 116:34]
    node _GEN_17 = mux(io_in_E_valid_in, io_in_E_din, dataReg) @[Router.scala 116:34]
    node _GEN_18 = mux(io_in_W_valid_in, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 111:34]
    node _GEN_19 = mux(io_in_W_valid_in, UInt<1>("h1"), _GEN_15) @[Router.scala 111:34]
    node _GEN_20 = mux(io_in_W_valid_in, io_in_W_din, dataReg_W) @[Router.scala 111:34]
    node _GEN_21 = mux(io_in_W_valid_in, io_in_W_din, _GEN_17) @[Router.scala 111:34]
    node _GEN_22 = mux(io_in_W_valid_in, UInt<1>("h0"), _GEN_14) @[Router.scala 111:34]
    node _GEN_23 = mux(io_in_W_valid_in, dataReg_E, _GEN_16) @[Router.scala 111:34]
    node _GEN_24 = mux(io_in_S_valid_in, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 106:35]
    node _GEN_25 = mux(io_in_S_valid_in, UInt<1>("h1"), _GEN_19) @[Router.scala 106:35]
    node _GEN_26 = mux(io_in_S_valid_in, io_in_S_din, dataReg_S) @[Router.scala 106:35]
    node _GEN_27 = mux(io_in_S_valid_in, io_in_S_din, _GEN_21) @[Router.scala 106:35]
    node _GEN_28 = mux(io_in_S_valid_in, UInt<1>("h0"), _GEN_18) @[Router.scala 106:35]
    node _GEN_29 = mux(io_in_S_valid_in, dataReg_W, _GEN_20) @[Router.scala 106:35]
    node _GEN_30 = mux(io_in_S_valid_in, UInt<1>("h0"), _GEN_22) @[Router.scala 106:35]
    node _GEN_31 = mux(io_in_S_valid_in, dataReg_E, _GEN_23) @[Router.scala 106:35]
    node _GEN_32 = mux(io_in_N_valid_in, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 101:29]
    node _GEN_33 = mux(io_in_N_valid_in, UInt<1>("h1"), _GEN_25) @[Router.scala 101:29]
    node _GEN_34 = mux(io_in_N_valid_in, io_in_N_din, dataReg_N) @[Router.scala 101:29]
    node _GEN_35 = mux(io_in_N_valid_in, io_in_N_din, _GEN_27) @[Router.scala 101:29]
    node _GEN_36 = mux(io_in_N_valid_in, UInt<1>("h0"), _GEN_24) @[Router.scala 101:29]
    node _GEN_37 = mux(io_in_N_valid_in, dataReg_S, _GEN_26) @[Router.scala 101:29]
    node _GEN_38 = mux(io_in_N_valid_in, UInt<1>("h0"), _GEN_28) @[Router.scala 101:29]
    node _GEN_39 = mux(io_in_N_valid_in, dataReg_W, _GEN_29) @[Router.scala 101:29]
    node _GEN_40 = mux(io_in_N_valid_in, UInt<1>("h0"), _GEN_30) @[Router.scala 101:29]
    node _GEN_41 = mux(io_in_N_valid_in, dataReg_E, _GEN_31) @[Router.scala 101:29]
    node _T_5 = eq(stateReg, UInt<1>("h1")) @[Router.scala 122:24]
    node _GEN_42 = mux(io_out_N_ready_in, dataReg, UInt<32>("h0")) @[Router.scala 124:31]
    node _GEN_43 = mux(io_out_N_ready_in, UInt<1>("h0"), stateReg) @[Router.scala 124:31]
    node out_S_dout = UInt<32>("h0")
    node _GEN_44 = mux(io_out_S_ready_in, dataReg, out_S_dout) @[Router.scala 129:31]
    node _GEN_45 = mux(io_out_S_ready_in, UInt<1>("h0"), stateReg) @[Router.scala 129:31]
    node out_W_dout = UInt<32>("h0")
    node _GEN_46 = mux(io_out_W_ready_in, dataReg, out_W_dout) @[Router.scala 134:31]
    node _GEN_47 = mux(io_out_W_ready_in, UInt<1>("h0"), stateReg) @[Router.scala 134:31]
    node _GEN_48 = mux(io_out_E_ready_in, dataReg, UInt<32>("h0")) @[Router.scala 139:31]
    node _GEN_49 = mux(io_out_E_ready_in, UInt<1>("h0"), stateReg) @[Router.scala 139:31]
    node _GEN_50 = mux(io_out_E_valid_out, _GEN_48, UInt<32>("h0")) @[Router.scala 138:37]
    node _GEN_51 = mux(io_out_E_valid_out, _GEN_49, stateReg) @[Router.scala 138:37]
    node _GEN_52 = mux(io_out_W_valid_out, _GEN_46, out_W_dout) @[Router.scala 133:37]
    node _GEN_53 = mux(io_out_W_valid_out, _GEN_47, _GEN_51) @[Router.scala 133:37]
    node _GEN_54 = mux(io_out_W_valid_out, UInt<32>("h0"), _GEN_50) @[Router.scala 133:37]
    node _GEN_55 = mux(io_out_S_valid_out, _GEN_44, out_S_dout) @[Router.scala 128:37]
    node _GEN_56 = mux(io_out_S_valid_out, _GEN_45, _GEN_53) @[Router.scala 128:37]
    node _GEN_57 = mux(io_out_S_valid_out, out_W_dout, _GEN_52) @[Router.scala 128:37]
    node _GEN_58 = mux(io_out_S_valid_out, UInt<32>("h0"), _GEN_54) @[Router.scala 128:37]
    node _GEN_59 = mux(io_out_N_valid_out, _GEN_42, UInt<32>("h0")) @[Router.scala 123:30]
    node _GEN_60 = mux(io_out_N_valid_out, _GEN_43, _GEN_56) @[Router.scala 123:30]
    node _GEN_61 = mux(io_out_N_valid_out, out_S_dout, _GEN_55) @[Router.scala 123:30]
    node _GEN_62 = mux(io_out_N_valid_out, out_W_dout, _GEN_57) @[Router.scala 123:30]
    node _GEN_63 = mux(io_out_N_valid_out, UInt<32>("h0"), _GEN_58) @[Router.scala 123:30]
    node _GEN_64 = mux(_T_5, _GEN_59, UInt<32>("h0")) @[Router.scala 122:33]
    node _GEN_65 = mux(_T_5, _GEN_60, stateReg) @[Router.scala 122:33]
    node _GEN_66 = mux(_T_5, _GEN_61, out_S_dout) @[Router.scala 122:33]
    node _GEN_67 = mux(_T_5, _GEN_62, out_W_dout) @[Router.scala 122:33]
    node _GEN_68 = mux(_T_5, _GEN_63, UInt<32>("h0")) @[Router.scala 122:33]
    node _GEN_69 = mux(_T_4, _GEN_32, UInt<1>("h0")) @[Router.scala 100:26]
    node _GEN_70 = mux(_T_4, _GEN_33, _GEN_65) @[Router.scala 100:26]
    node _GEN_71 = mux(_T_4, _GEN_34, dataReg_N) @[Router.scala 100:26]
    node _GEN_72 = mux(_T_4, _GEN_35, dataReg) @[Router.scala 100:26]
    node _GEN_73 = mux(_T_4, _GEN_36, UInt<1>("h0")) @[Router.scala 100:26]
    node _GEN_74 = mux(_T_4, _GEN_37, dataReg_S) @[Router.scala 100:26]
    node _GEN_75 = mux(_T_4, _GEN_38, UInt<1>("h0")) @[Router.scala 100:26]
    node _GEN_76 = mux(_T_4, _GEN_39, dataReg_W) @[Router.scala 100:26]
    node _GEN_77 = mux(_T_4, _GEN_40, UInt<1>("h0")) @[Router.scala 100:26]
    node _GEN_78 = mux(_T_4, _GEN_41, dataReg_E) @[Router.scala 100:26]
    node _GEN_79 = mux(_T_4, UInt<32>("h0"), _GEN_64) @[Router.scala 100:26]
    node _GEN_80 = mux(_T_4, out_S_dout, _GEN_66) @[Router.scala 100:26]
    node _GEN_81 = mux(_T_4, out_W_dout, _GEN_67) @[Router.scala 100:26]
    node _GEN_82 = mux(_T_4, UInt<32>("h0"), _GEN_68) @[Router.scala 100:26]
    node out_N_dout = _GEN_79 @[Router.scala 125:20]
    node out_E_dout = _GEN_82 @[Router.scala 140:20]
    node out_CPU_dout = UInt<32>("h0")
    io_in_N_ready_out <= _GEN_69 @[Router.scala 66:21 Router.scala 102:25]
    io_in_S_ready_out <= _GEN_73 @[Router.scala 67:21 Router.scala 107:25]
    io_in_W_ready_out <= _GEN_75 @[Router.scala 68:21 Router.scala 112:25]
    io_in_E_ready_out <= _GEN_77 @[Router.scala 69:21 Router.scala 117:25]
    io_in_CPU_ready_out <= UInt<1>("h0") @[Router.scala 70:23]
    io_out_N_valid_out <= _GEN_12 @[Router.scala 60:22 Router.scala 93:26]
    io_out_N_dout <= out_N_dout @[Router.scala 54:17]
    io_out_S_valid_out <= _GEN_11 @[Router.scala 61:22 Router.scala 91:26]
    io_out_S_dout <= _GEN_80 @[Router.scala 55:17 Router.scala 130:23]
    io_out_W_valid_out <= _GEN_10 @[Router.scala 62:22 Router.scala 88:24]
    io_out_W_dout <= _GEN_81 @[Router.scala 56:17 Router.scala 135:23]
    io_out_E_valid_out <= _GEN_9 @[Router.scala 63:22 Router.scala 86:24]
    io_out_E_dout <= out_E_dout @[Router.scala 57:17]
    io_out_CPU_valid_out <= _GEN_13 @[Router.scala 64:24 Router.scala 95:28]
    io_out_CPU_dout <= out_CPU_dout @[Router.scala 58:19]
    som <= mux(reset, UInt<1>("h0"), som)
    dataReg <= mux(reset, UInt<32>("h0"), _GEN_72) @[Router.scala 105:15 Router.scala 110:15 Router.scala 115:15 Router.scala 120:15]
    dataReg_N <= mux(reset, UInt<32>("h0"), _GEN_71) @[Router.scala 104:17]
    dataReg_S <= mux(reset, UInt<32>("h0"), _GEN_74) @[Router.scala 109:17]
    dataReg_W <= mux(reset, UInt<32>("h0"), _GEN_76) @[Router.scala 114:17]
    dataReg_E <= mux(reset, UInt<32>("h0"), _GEN_78) @[Router.scala 119:17]
    dataReg_CPU <= mux(reset, UInt<32>("h0"), dataReg_CPU)
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_70) @[Router.scala 103:16 Router.scala 108:16 Router.scala 113:16 Router.scala 118:16 Router.scala 126:18 Router.scala 131:18 Router.scala 136:18 Router.scala 141:18]
