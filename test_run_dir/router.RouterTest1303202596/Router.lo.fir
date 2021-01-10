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
    input io_in_CPU_read : UInt<1>
    input io_in_CPU_din : UInt<32>
    output io_out_U_write : UInt<1>
    output io_out_U_dout : UInt<32>
    output io_out_D_write : UInt<1>
    output io_out_D_dout : UInt<32>
    output io_out_L_write : UInt<1>
    output io_out_L_dout : UInt<32>
    output io_out_R_write : UInt<1>
    output io_out_R_dout : UInt<32>
    output io_out_CPU_write : UInt<1>
    output io_out_CPU_dout : UInt<32>
    input io_x : UInt<2>
    input io_y : UInt<2>
  
    reg som : UInt<1>, clock with :
      reset => (UInt<1>("h0"), som) @[Router.scala 44:20]
    reg dataReg_U : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_U) @[Router.scala 65:26]
    reg dataReg_D : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_D) @[Router.scala 66:26]
    reg dataReg_L : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_L) @[Router.scala 67:26]
    reg dataReg_R : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_R) @[Router.scala 68:26]
    reg dataReg_CPU : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_CPU) @[Router.scala 69:28]
    reg stateReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Router.scala 72:25]
    node _T = eq(stateReg, UInt<1>("h0")) @[Router.scala 74:17]
    node _GEN_0 = mux(io_in_R_read, UInt<1>("h1"), stateReg) @[Router.scala 86:30]
    node _GEN_1 = mux(io_in_R_read, io_in_R_din, dataReg_R) @[Router.scala 86:30]
    node _GEN_2 = mux(io_in_L_read, UInt<1>("h1"), _GEN_0) @[Router.scala 83:30]
    node _GEN_3 = mux(io_in_L_read, io_in_L_din, dataReg_L) @[Router.scala 83:30]
    node _GEN_4 = mux(io_in_L_read, dataReg_R, _GEN_1) @[Router.scala 83:30]
    node _GEN_5 = mux(io_in_D_read, UInt<1>("h1"), _GEN_2) @[Router.scala 80:31]
    node _GEN_6 = mux(io_in_D_read, io_in_D_din, dataReg_D) @[Router.scala 80:31]
    node _GEN_7 = mux(io_in_D_read, dataReg_L, _GEN_3) @[Router.scala 80:31]
    node _GEN_8 = mux(io_in_D_read, dataReg_R, _GEN_4) @[Router.scala 80:31]
    node _GEN_9 = mux(io_in_U_read, UInt<1>("h1"), _GEN_5) @[Router.scala 75:25]
    node _GEN_10 = mux(io_in_U_read, io_in_U_din, dataReg_U) @[Router.scala 75:25]
    node _GEN_11 = mux(io_in_U_read, UInt<1>("h1"), UInt<1>("h0")) @[Router.scala 75:25]
    node _GEN_12 = mux(io_in_U_read, dataReg_D, _GEN_6) @[Router.scala 75:25]
    node _GEN_13 = mux(io_in_U_read, dataReg_L, _GEN_7) @[Router.scala 75:25]
    node _GEN_14 = mux(io_in_U_read, dataReg_R, _GEN_8) @[Router.scala 75:25]
    node _T_1 = eq(stateReg, UInt<1>("h1")) @[Router.scala 90:24]
    node _GEN_15 = mux(io_out_R_write, dataReg_R, UInt<32>("h0")) @[Router.scala 100:33]
    node _GEN_16 = mux(io_out_R_write, UInt<1>("h0"), stateReg) @[Router.scala 100:33]
    node _GEN_17 = mux(io_out_L_write, dataReg_L, UInt<32>("h0")) @[Router.scala 97:33]
    node _GEN_18 = mux(io_out_L_write, UInt<1>("h0"), _GEN_16) @[Router.scala 97:33]
    node _GEN_19 = mux(io_out_L_write, UInt<32>("h0"), _GEN_15) @[Router.scala 97:33]
    node _GEN_20 = mux(io_out_D_write, dataReg_U, dataReg_U) @[Router.scala 94:33]
    node _GEN_21 = mux(io_out_D_write, UInt<1>("h0"), _GEN_18) @[Router.scala 94:33]
    node _GEN_22 = mux(io_out_D_write, UInt<32>("h0"), _GEN_17) @[Router.scala 94:33]
    node _GEN_23 = mux(io_out_D_write, UInt<32>("h0"), _GEN_19) @[Router.scala 94:33]
    node _GEN_24 = mux(io_out_U_write, dataReg_U, UInt<32>("h0")) @[Router.scala 91:26]
    node _GEN_25 = mux(io_out_U_write, UInt<1>("h0"), _GEN_21) @[Router.scala 91:26]
    node _GEN_26 = mux(io_out_U_write, dataReg_U, _GEN_20) @[Router.scala 91:26]
    node _GEN_27 = mux(io_out_U_write, UInt<32>("h0"), _GEN_22) @[Router.scala 91:26]
    node _GEN_28 = mux(io_out_U_write, UInt<32>("h0"), _GEN_23) @[Router.scala 91:26]
    node _GEN_29 = mux(_T_1, _GEN_24, UInt<32>("h0")) @[Router.scala 90:33]
    node _GEN_30 = mux(_T_1, _GEN_25, stateReg) @[Router.scala 90:33]
    node _GEN_31 = mux(_T_1, _GEN_26, dataReg_U) @[Router.scala 90:33]
    node _GEN_32 = mux(_T_1, _GEN_27, UInt<32>("h0")) @[Router.scala 90:33]
    node _GEN_33 = mux(_T_1, _GEN_28, UInt<32>("h0")) @[Router.scala 90:33]
    node _GEN_34 = mux(_T, _GEN_9, _GEN_30) @[Router.scala 74:26]
    node _GEN_35 = mux(_T, _GEN_10, dataReg_U) @[Router.scala 74:26]
    node _GEN_36 = mux(_T, _GEN_11, UInt<1>("h0")) @[Router.scala 74:26]
    node _GEN_37 = mux(_T, _GEN_12, dataReg_D) @[Router.scala 74:26]
    node _GEN_38 = mux(_T, _GEN_13, dataReg_L) @[Router.scala 74:26]
    node _GEN_39 = mux(_T, _GEN_14, dataReg_R) @[Router.scala 74:26]
    node _GEN_40 = mux(_T, UInt<32>("h0"), _GEN_29) @[Router.scala 74:26]
    node _GEN_41 = mux(_T, dataReg_U, _GEN_31) @[Router.scala 74:26]
    node _GEN_42 = mux(_T, UInt<32>("h0"), _GEN_32) @[Router.scala 74:26]
    node _GEN_43 = mux(_T, UInt<32>("h0"), _GEN_33) @[Router.scala 74:26]
    node out_U_dout = _GEN_40 @[Router.scala 92:18]
    node out_D_dout = UInt<32>("h0")
    node out_L_dout = _GEN_42 @[Router.scala 98:18]
    node out_R_dout = _GEN_43 @[Router.scala 101:18]
    node out_CPU_dout = UInt<32>("h0")
    node dataReg = UInt<1>("h0")
    io_out_U_write <= UInt<1>("h0") @[Router.scala 58:18]
    io_out_U_dout <= out_U_dout @[Router.scala 52:17]
    io_out_D_write <= _GEN_36 @[Router.scala 59:18 Router.scala 78:22]
    io_out_D_dout <= _GEN_41 @[Router.scala 53:17 Router.scala 71:17 Router.scala 95:21]
    io_out_L_write <= UInt<1>("h0") @[Router.scala 60:18]
    io_out_L_dout <= out_L_dout @[Router.scala 54:17]
    io_out_R_write <= UInt<1>("h0") @[Router.scala 61:18]
    io_out_R_dout <= out_R_dout @[Router.scala 55:17]
    io_out_CPU_write <= UInt<1>("h0") @[Router.scala 62:20]
    io_out_CPU_dout <= out_CPU_dout @[Router.scala 56:19]
    som <= mux(reset, UInt<1>("h0"), som)
    dataReg_U <= mux(reset, UInt<32>("h0"), _GEN_35) @[Router.scala 77:17]
    dataReg_D <= mux(reset, UInt<32>("h0"), _GEN_37) @[Router.scala 82:17]
    dataReg_L <= mux(reset, UInt<32>("h0"), _GEN_38) @[Router.scala 85:17]
    dataReg_R <= mux(reset, UInt<32>("h0"), _GEN_39) @[Router.scala 88:17]
    dataReg_CPU <= mux(reset, UInt<32>("h0"), dataReg_CPU)
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_34) @[Router.scala 76:16 Router.scala 81:16 Router.scala 84:16 Router.scala 87:16 Router.scala 93:16 Router.scala 96:16 Router.scala 99:16 Router.scala 102:16]
