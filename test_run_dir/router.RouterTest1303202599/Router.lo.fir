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
      reset => (UInt<1>("h0"), stateReg) @[Router.scala 73:25]
    reg dataReg_U : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_U) @[Router.scala 76:26]
    reg dataReg_D : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_D) @[Router.scala 77:26]
    reg dataReg_L : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_L) @[Router.scala 78:26]
    reg dataReg_R : UInt<32>, clock with :
      reset => (UInt<1>("h0"), dataReg_R) @[Router.scala 79:26]
    node _T = eq(stateReg, UInt<1>("h0")) @[Router.scala 82:17]
    node _T_1 = eq(stateReg, UInt<1>("h1")) @[Router.scala 84:16]
    node _T_2 = eq(stateReg, UInt<1>("h1")) @[Router.scala 87:16]
    node _T_3 = eq(stateReg, UInt<1>("h1")) @[Router.scala 90:16]
    node _T_4 = eq(stateReg, UInt<1>("h1")) @[Router.scala 93:16]
    node _GEN_0 = mux(io_in_R_read, io_in_R_din, dataReg_R) @[Router.scala 92:30]
    node _GEN_1 = mux(io_in_L_read, io_in_L_din, dataReg_L) @[Router.scala 89:30]
    node _GEN_2 = mux(io_in_L_read, dataReg_R, _GEN_0) @[Router.scala 89:30]
    node _GEN_3 = mux(io_in_D_read, io_in_D_din, dataReg_D) @[Router.scala 86:31]
    node _GEN_4 = mux(io_in_D_read, dataReg_L, _GEN_1) @[Router.scala 86:31]
    node _GEN_5 = mux(io_in_D_read, dataReg_R, _GEN_2) @[Router.scala 86:31]
    node _GEN_6 = mux(io_in_U_read, io_in_U_din, dataReg_U) @[Router.scala 83:25]
    node _GEN_7 = mux(io_in_U_read, dataReg_D, _GEN_3) @[Router.scala 83:25]
    node _GEN_8 = mux(io_in_U_read, dataReg_L, _GEN_4) @[Router.scala 83:25]
    node _GEN_9 = mux(io_in_U_read, dataReg_R, _GEN_5) @[Router.scala 83:25]
    node _T_5 = eq(stateReg, UInt<1>("h1")) @[Router.scala 96:24]
    node _GEN_10 = mux(io_out_R_write, dataReg_R, UInt<1>("h0")) @[Router.scala 106:33]
    node _GEN_11 = mux(io_out_R_write, UInt<1>("h0"), stateReg) @[Router.scala 106:33]
    node _GEN_12 = mux(io_out_L_write, dataReg_L, UInt<1>("h0")) @[Router.scala 103:33]
    node _GEN_13 = mux(io_out_L_write, UInt<1>("h0"), _GEN_11) @[Router.scala 103:33]
    node _GEN_14 = mux(io_out_L_write, UInt<1>("h0"), _GEN_10) @[Router.scala 103:33]
    node _GEN_15 = mux(io_out_D_write, dataReg_D, UInt<1>("h0")) @[Router.scala 100:33]
    node _GEN_16 = mux(io_out_D_write, UInt<1>("h0"), _GEN_13) @[Router.scala 100:33]
    node _GEN_17 = mux(io_out_D_write, UInt<1>("h0"), _GEN_12) @[Router.scala 100:33]
    node _GEN_18 = mux(io_out_D_write, UInt<1>("h0"), _GEN_14) @[Router.scala 100:33]
    node _GEN_19 = mux(io_out_U_write, dataReg_U, UInt<1>("h0")) @[Router.scala 97:26]
    node _GEN_20 = mux(io_out_U_write, UInt<1>("h0"), _GEN_16) @[Router.scala 97:26]
    node _GEN_21 = mux(io_out_U_write, UInt<1>("h0"), _GEN_15) @[Router.scala 97:26]
    node _GEN_22 = mux(io_out_U_write, UInt<1>("h0"), _GEN_17) @[Router.scala 97:26]
    node _GEN_23 = mux(io_out_U_write, UInt<1>("h0"), _GEN_18) @[Router.scala 97:26]
    node _GEN_24 = mux(_T_5, _GEN_19, UInt<1>("h0")) @[Router.scala 96:34]
    node _GEN_25 = mux(_T_5, _GEN_20, stateReg) @[Router.scala 96:34]
    node _GEN_26 = mux(_T_5, _GEN_21, UInt<1>("h0")) @[Router.scala 96:34]
    node _GEN_27 = mux(_T_5, _GEN_22, UInt<1>("h0")) @[Router.scala 96:34]
    node _GEN_28 = mux(_T_5, _GEN_23, UInt<1>("h0")) @[Router.scala 96:34]
    node _GEN_29 = mux(_T, _GEN_6, dataReg_U) @[Router.scala 82:28]
    node _GEN_30 = mux(_T, _GEN_7, dataReg_D) @[Router.scala 82:28]
    node _GEN_31 = mux(_T, _GEN_8, dataReg_L) @[Router.scala 82:28]
    node _GEN_32 = mux(_T, _GEN_9, dataReg_R) @[Router.scala 82:28]
    node _GEN_33 = mux(_T, UInt<1>("h0"), _GEN_24) @[Router.scala 82:28]
    node _GEN_34 = mux(_T, stateReg, _GEN_25) @[Router.scala 82:28]
    node _GEN_35 = mux(_T, UInt<1>("h0"), _GEN_26) @[Router.scala 82:28]
    node _GEN_36 = mux(_T, UInt<1>("h0"), _GEN_27) @[Router.scala 82:28]
    node _GEN_37 = mux(_T, UInt<1>("h0"), _GEN_28) @[Router.scala 82:28]
    node dataReg = UInt<1>("h0")
    io_out_U_write <= UInt<1>("h0") @[Router.scala 46:18]
    io_out_U_dout <= _GEN_33 @[Router.scala 41:17 Router.scala 98:21]
    io_out_D_write <= UInt<1>("h0") @[Router.scala 47:18]
    io_out_D_dout <= _GEN_35 @[Router.scala 42:17 Router.scala 101:21]
    io_out_L_write <= UInt<1>("h0") @[Router.scala 48:18]
    io_out_L_dout <= _GEN_36 @[Router.scala 43:17 Router.scala 104:21]
    io_out_R_write <= UInt<1>("h0") @[Router.scala 49:18]
    io_out_R_dout <= _GEN_37 @[Router.scala 44:17 Router.scala 107:21]
    som <= mux(reset, UInt<1>("h0"), som)
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_34) @[Router.scala 99:16 Router.scala 102:16 Router.scala 105:16 Router.scala 108:16]
    dataReg_U <= mux(reset, UInt<32>("h0"), _GEN_29) @[Router.scala 85:17]
    dataReg_D <= mux(reset, UInt<32>("h0"), _GEN_30) @[Router.scala 88:17]
    dataReg_L <= mux(reset, UInt<32>("h0"), _GEN_31) @[Router.scala 91:17]
    dataReg_R <= mux(reset, UInt<32>("h0"), _GEN_32) @[Router.scala 94:17]
