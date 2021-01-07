circuit Router :
  module Router :
    input clock : Clock
    input reset : UInt<1>
    input io_in_U_read : UInt<1>
    input io_in_U_din : UInt<32>
    input io_in_D_read : UInt<1>
    input io_in_D_din : UInt<32>
    input io_in_L_read : UInt<1>
    input io_in_L_din : UInt<32>
    input io_in_R_read : UInt<1>
    input io_in_R_din : UInt<32>
    output io_out_U_write : UInt<1>
    output io_out_U_dout : UInt<32>
    output io_out_D_write : UInt<1>
    output io_out_D_dout : UInt<32>
    output io_out_L_write : UInt<1>
    output io_out_L_dout : UInt<32>
    output io_out_R_write : UInt<1>
    output io_out_R_dout : UInt<32>
  
    reg som : UInt<1>, clock with :
      reset => (UInt<1>("h0"), som) @[Router.scala 39:20]
    reg stateReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Router.scala 57:25]
    reg dataReg_U : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_U) @[Router.scala 60:26]
    reg dataReg_D : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_D) @[Router.scala 61:26]
    reg dataReg_L : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_L) @[Router.scala 62:26]
    reg dataReg_R : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_R) @[Router.scala 63:26]
    node _T = eq(stateReg, UInt<1>("h0")) @[Router.scala 66:17]
    node _T_1 = eq(stateReg, UInt<1>("h1")) @[Router.scala 68:16]
    node _T_2 = eq(stateReg, UInt<1>("h1")) @[Router.scala 76:16]
    node _T_3 = eq(stateReg, UInt<1>("h1")) @[Router.scala 79:16]
    node _T_4 = eq(stateReg, UInt<1>("h1")) @[Router.scala 82:16]
    node _GEN_0 = mux(io_in_R_read, io_in_R_din, dataReg_R) @[Router.scala 81:30]
    node _GEN_1 = mux(io_in_L_read, io_in_L_din, dataReg_L) @[Router.scala 78:30]
    node _GEN_2 = mux(io_in_L_read, dataReg_R, _GEN_0) @[Router.scala 78:30]
    node _GEN_3 = mux(io_in_D_read, io_in_D_din, dataReg_D) @[Router.scala 75:31]
    node _GEN_4 = mux(io_in_D_read, dataReg_L, _GEN_1) @[Router.scala 75:31]
    node _GEN_5 = mux(io_in_D_read, dataReg_R, _GEN_2) @[Router.scala 75:31]
    node _GEN_6 = mux(io_in_U_read, io_in_U_din, dataReg_U) @[Router.scala 67:25]
    node _GEN_7 = mux(io_in_U_read, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 67:25]
    node out_D_dout = UInt<32>("h0")
    node _GEN_8 = mux(io_in_U_read, dataReg_U, out_D_dout) @[Router.scala 67:25]
    node _T_5 = eq(stateReg, UInt<1>("h1")) @[Router.scala 85:24]
    node _GEN_24 = mux(io_out_U_write, dataReg_U, UInt<32>("h0")) @[Router.scala 86:26]
    node _GEN_29 = mux(_T_5, _GEN_24, UInt<32>("h0")) @[Router.scala 85:34]
    node _GEN_43 = mux(_T, UInt<32>("h0"), _GEN_29) @[Router.scala 66:28]
    node out_U_dout = _GEN_43 @[Router.scala 87:18]
    node _GEN_9 = mux(io_in_U_read, dataReg_U, out_U_dout) @[Router.scala 67:25]
    node _GEN_17 = mux(io_out_L_write, dataReg_L, UInt<32>("h0")) @[Router.scala 92:33]
    node _GEN_22 = mux(io_out_D_write, UInt<32>("h0"), _GEN_17) @[Router.scala 89:33]
    node _GEN_27 = mux(io_out_U_write, UInt<32>("h0"), _GEN_22) @[Router.scala 86:26]
    node _GEN_32 = mux(_T_5, _GEN_27, UInt<32>("h0")) @[Router.scala 85:34]
    node _GEN_45 = mux(_T, UInt<32>("h0"), _GEN_32) @[Router.scala 66:28]
    node out_L_dout = _GEN_45 @[Router.scala 93:18]
    node _GEN_10 = mux(io_in_U_read, dataReg_U, out_L_dout) @[Router.scala 67:25]
    node _GEN_15 = mux(io_out_R_write, dataReg_R, UInt<32>("h0")) @[Router.scala 95:33]
    node _GEN_19 = mux(io_out_L_write, UInt<32>("h0"), _GEN_15) @[Router.scala 92:33]
    node _GEN_23 = mux(io_out_D_write, UInt<32>("h0"), _GEN_19) @[Router.scala 89:33]
    node _GEN_28 = mux(io_out_U_write, UInt<32>("h0"), _GEN_23) @[Router.scala 86:26]
    node _GEN_33 = mux(_T_5, _GEN_28, UInt<32>("h0")) @[Router.scala 85:34]
    node _GEN_46 = mux(_T, UInt<32>("h0"), _GEN_33) @[Router.scala 66:28]
    node out_R_dout = _GEN_46 @[Router.scala 96:18]
    node _GEN_11 = mux(io_in_U_read, dataReg_U, out_R_dout) @[Router.scala 67:25]
    node _GEN_12 = mux(io_in_U_read, dataReg_D, _GEN_3) @[Router.scala 67:25]
    node _GEN_13 = mux(io_in_U_read, dataReg_L, _GEN_4) @[Router.scala 67:25]
    node _GEN_14 = mux(io_in_U_read, dataReg_R, _GEN_5) @[Router.scala 67:25]
    node _GEN_16 = mux(io_out_R_write, UInt<1>("h0"), stateReg) @[Router.scala 95:33]
    node _GEN_18 = mux(io_out_L_write, UInt<1>("h0"), _GEN_16) @[Router.scala 92:33]
    node _GEN_20 = mux(io_out_D_write, dataReg_U, out_D_dout) @[Router.scala 89:33]
    node _GEN_21 = mux(io_out_D_write, UInt<1>("h0"), _GEN_18) @[Router.scala 89:33]
    node _GEN_25 = mux(io_out_U_write, UInt<1>("h0"), _GEN_21) @[Router.scala 86:26]
    node _GEN_26 = mux(io_out_U_write, out_D_dout, _GEN_20) @[Router.scala 86:26]
    node _GEN_30 = mux(_T_5, _GEN_25, stateReg) @[Router.scala 85:34]
    node _GEN_31 = mux(_T_5, _GEN_26, out_D_dout) @[Router.scala 85:34]
    node _GEN_34 = mux(_T, _GEN_6, dataReg_U) @[Router.scala 66:28]
    node _GEN_35 = mux(_T, _GEN_7, UInt<1>("h0")) @[Router.scala 66:28]
    node _GEN_36 = mux(_T, _GEN_8, _GEN_31) @[Router.scala 66:28]
    node _GEN_37 = mux(_T, _GEN_9, out_U_dout) @[Router.scala 66:28]
    node _GEN_38 = mux(_T, _GEN_10, out_L_dout) @[Router.scala 66:28]
    node _GEN_39 = mux(_T, _GEN_11, out_R_dout) @[Router.scala 66:28]
    node _GEN_40 = mux(_T, _GEN_12, dataReg_D) @[Router.scala 66:28]
    node _GEN_41 = mux(_T, _GEN_13, dataReg_L) @[Router.scala 66:28]
    node _GEN_42 = mux(_T, _GEN_14, dataReg_R) @[Router.scala 66:28]
    node _GEN_44 = mux(_T, stateReg, _GEN_30) @[Router.scala 66:28]
    node dataReg = UInt<1>("h0")
    io_out_U_write <= UInt<1>("h0") @[Router.scala 51:18]
    io_out_U_dout <= _GEN_37 @[Router.scala 46:17 Router.scala 72:21]
    io_out_D_write <= _GEN_35 @[Router.scala 52:18 Router.scala 70:22]
    io_out_D_dout <= _GEN_36 @[Router.scala 47:17 Router.scala 71:21 Router.scala 90:21]
    io_out_L_write <= UInt<1>("h0") @[Router.scala 53:18]
    io_out_L_dout <= _GEN_38 @[Router.scala 48:17 Router.scala 73:21]
    io_out_R_write <= UInt<1>("h0") @[Router.scala 54:18]
    io_out_R_dout <= _GEN_39 @[Router.scala 49:17 Router.scala 74:21]
    som <= mux(reset, UInt<1>("h0"), som)
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_44) @[Router.scala 88:16 Router.scala 91:16 Router.scala 94:16 Router.scala 97:16]
    dataReg_U <= mux(reset, UInt<32>("h0"), _GEN_34) @[Router.scala 69:17]
    dataReg_D <= mux(reset, UInt<32>("h0"), _GEN_40) @[Router.scala 77:17]
    dataReg_L <= mux(reset, UInt<32>("h0"), _GEN_41) @[Router.scala 80:17]
    dataReg_R <= mux(reset, UInt<32>("h0"), _GEN_42) @[Router.scala 83:17]
