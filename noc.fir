;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit noc : 
  module XBar : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_1 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_2 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_3 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_1 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_4 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_5 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_6 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_7 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_2 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_8 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_9 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_10 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_11 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_3 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_12 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_13 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_14 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_15 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_4 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_16 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_17 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_18 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_19 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_5 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_20 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_21 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_22 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_23 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_6 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_24 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_25 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_26 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_27 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_7 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_28 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_29 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_30 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_31 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module XBar_32 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_33 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_34 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module XBar_35 : 
    input clock : Clock
    input reset : Reset
    output io : {flip xbar_sele : UInt<4>, flip xbar_data_in : UInt<32>, xbar_data_out_U : UInt<32>, xbar_data_out_D : UInt<32>, xbar_data_out_R : UInt<32>, xbar_data_out_L : UInt<32>}
    
    wire seleReg : UInt<4>
    seleReg <= UInt<4>("h00")
    wire dataReg : UInt<32>
    dataReg <= UInt<32>("h00")
    wire xbar_data_out_U : UInt<32>
    xbar_data_out_U <= UInt<32>("h00")
    wire xbar_data_out_R : UInt<32>
    xbar_data_out_R <= UInt<32>("h00")
    wire xbar_data_out_D : UInt<32>
    xbar_data_out_D <= UInt<32>("h00")
    wire xbar_data_out_L : UInt<32>
    xbar_data_out_L <= UInt<32>("h00")
    io.xbar_data_out_R <= xbar_data_out_R @[XBar.scala 23:22]
    io.xbar_data_out_D <= xbar_data_out_D @[XBar.scala 24:22]
    io.xbar_data_out_L <= xbar_data_out_L @[XBar.scala 25:22]
    io.xbar_data_out_U <= xbar_data_out_U @[XBar.scala 26:22]
    dataReg <= io.xbar_data_in @[XBar.scala 29:11]
    seleReg <= io.xbar_sele @[XBar.scala 30:11]
    node _T = eq(seleReg, UInt<1>("h01")) @[XBar.scala 32:16]
    when _T : @[XBar.scala 32:30]
      xbar_data_out_U <= dataReg @[XBar.scala 33:21]
      skip @[XBar.scala 32:30]
    else : @[XBar.scala 34:36]
      node _T_1 = eq(seleReg, UInt<2>("h02")) @[XBar.scala 34:22]
      when _T_1 : @[XBar.scala 34:36]
        xbar_data_out_D <= dataReg @[XBar.scala 35:21]
        skip @[XBar.scala 34:36]
      else : @[XBar.scala 36:36]
        node _T_2 = eq(seleReg, UInt<3>("h04")) @[XBar.scala 36:22]
        when _T_2 : @[XBar.scala 36:36]
          xbar_data_out_L <= dataReg @[XBar.scala 37:21]
          skip @[XBar.scala 36:36]
        else : @[XBar.scala 38:36]
          node _T_3 = eq(seleReg, UInt<4>("h08")) @[XBar.scala 38:22]
          when _T_3 : @[XBar.scala 38:36]
            xbar_data_out_R <= dataReg @[XBar.scala 39:21]
            skip @[XBar.scala 38:36]
    
  module Router_8 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 40:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.write <= UInt<1>("h00") @[Router.scala 47:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 48:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 49:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 50:18]
    inst XBar_U of XBar_32 @[Router.scala 53:22]
    XBar_U.clock <= clock
    XBar_U.reset <= reset
    XBar_U.io.xbar_sele <= UInt<1>("h01") @[Router.scala 54:23]
    node _T = or(io.in_D.din, io.in_U.din) @[Router.scala 55:41]
    node _T_1 = or(_T, io.in_L.din) @[Router.scala 55:55]
    node _T_2 = or(_T_1, io.in_R.din) @[Router.scala 55:69]
    XBar_U.io.xbar_data_in <= _T_2 @[Router.scala 55:26]
    inst XBar_D of XBar_33 @[Router.scala 57:22]
    XBar_D.clock <= clock
    XBar_D.reset <= reset
    XBar_D.io.xbar_sele <= UInt<2>("h02") @[Router.scala 58:23]
    node _T_3 = or(io.in_D.din, io.in_U.din) @[Router.scala 59:41]
    node _T_4 = or(_T_3, io.in_L.din) @[Router.scala 59:55]
    node _T_5 = or(_T_4, io.in_R.din) @[Router.scala 59:69]
    XBar_D.io.xbar_data_in <= _T_5 @[Router.scala 59:26]
    inst XBar_L of XBar_34 @[Router.scala 61:22]
    XBar_L.clock <= clock
    XBar_L.reset <= reset
    XBar_L.io.xbar_sele <= UInt<3>("h04") @[Router.scala 62:23]
    node _T_6 = or(io.in_D.din, io.in_U.din) @[Router.scala 63:41]
    node _T_7 = or(_T_6, io.in_L.din) @[Router.scala 63:55]
    node _T_8 = or(_T_7, io.in_R.din) @[Router.scala 63:69]
    XBar_L.io.xbar_data_in <= _T_8 @[Router.scala 63:26]
    inst XBar_R of XBar_35 @[Router.scala 65:22]
    XBar_R.clock <= clock
    XBar_R.reset <= reset
    XBar_R.io.xbar_sele <= UInt<4>("h08") @[Router.scala 66:23]
    node _T_9 = or(io.in_D.din, io.in_U.din) @[Router.scala 67:41]
    node _T_10 = or(_T_9, io.in_L.din) @[Router.scala 67:55]
    node _T_11 = or(_T_10, io.in_R.din) @[Router.scala 67:69]
    XBar_R.io.xbar_data_in <= _T_11 @[Router.scala 67:26]
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 69:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 69:74]
    io.out_U.dout <= _T_13 @[Router.scala 69:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 70:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 70:74]
    io.out_D.dout <= _T_15 @[Router.scala 70:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 71:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 71:74]
    io.out_L.dout <= _T_17 @[Router.scala 71:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 72:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 72:74]
    io.out_R.dout <= _T_19 @[Router.scala 72:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 75:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 78:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 84:17]
    when _T_20 : @[Router.scala 84:28]
      when io.in_U.read : @[Router.scala 85:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 86:16]
        dataReg_U <= io.in_U.din @[Router.scala 87:17]
        skip @[Router.scala 85:25]
      else : @[Router.scala 88:31]
        when io.in_D.read : @[Router.scala 88:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 89:16]
          dataReg_D <= io.in_D.din @[Router.scala 90:17]
          skip @[Router.scala 88:31]
        else : @[Router.scala 91:30]
          when io.in_L.read : @[Router.scala 91:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 92:16]
            dataReg_L <= io.in_L.din @[Router.scala 93:17]
            skip @[Router.scala 91:30]
          else : @[Router.scala 94:30]
            when io.in_R.read : @[Router.scala 94:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 95:16]
              dataReg_R <= io.in_R.din @[Router.scala 96:17]
              skip @[Router.scala 94:30]
      skip @[Router.scala 84:28]
    else : @[Router.scala 98:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 98:24]
      when _T_25 : @[Router.scala 98:34]
        when io.out_U.write : @[Router.scala 99:26]
          out_U_dout <= dataReg_U @[Router.scala 100:18]
          stateReg <= UInt<1>("h00") @[Router.scala 101:16]
          skip @[Router.scala 99:26]
        else : @[Router.scala 102:33]
          when io.out_D.write : @[Router.scala 102:33]
            out_D_dout <= dataReg_D @[Router.scala 103:18]
            stateReg <= UInt<1>("h00") @[Router.scala 104:16]
            skip @[Router.scala 102:33]
          else : @[Router.scala 105:33]
            when io.out_L.write : @[Router.scala 105:33]
              out_L_dout <= dataReg_L @[Router.scala 106:18]
              stateReg <= UInt<1>("h00") @[Router.scala 107:16]
              skip @[Router.scala 105:33]
            else : @[Router.scala 108:33]
              when io.out_R.write : @[Router.scala 108:33]
                out_R_dout <= dataReg_R @[Router.scala 109:18]
                stateReg <= UInt<1>("h00") @[Router.scala 110:16]
                skip @[Router.scala 108:33]
        skip @[Router.scala 98:34]
    
  module noc : 
    input clock : Clock
    input reset : UInt<1>
    output io : {}
    
    inst router1 of Router @[noc.scala 15:23]
    router1.clock <= clock
    router1.reset <= reset
    inst router2 of Router_1 @[noc.scala 16:23]
    router2.clock <= clock
    router2.reset <= reset
    inst router3 of Router_2 @[noc.scala 17:23]
    router3.clock <= clock
    router3.reset <= reset
    inst router4 of Router_3 @[noc.scala 18:23]
    router4.clock <= clock
    router4.reset <= reset
    inst router5 of Router_4 @[noc.scala 19:23]
    router5.clock <= clock
    router5.reset <= reset
    inst router6 of Router_5 @[noc.scala 20:23]
    router6.clock <= clock
    router6.reset <= reset
    inst router7 of Router_6 @[noc.scala 21:23]
    router7.clock <= clock
    router7.reset <= reset
    inst router8 of Router_7 @[noc.scala 22:23]
    router8.clock <= clock
    router8.reset <= reset
    inst router9 of Router_8 @[noc.scala 23:23]
    router9.clock <= clock
    router9.reset <= reset
    wire som : UInt<32>
    som <= UInt<32>("h00")
    router1.io.in_U.din <= som @[noc.scala 29:23]
    router1.io.in_D.din <= router4.io.out_U.dout @[noc.scala 30:23]
    router1.io.in_L.din <= som @[noc.scala 32:23]
    router1.io.in_R.din <= router2.io.out_L.dout @[noc.scala 33:23]
    router2.io.in_U.din <= som @[noc.scala 36:23]
    router2.io.in_D.din <= router5.io.out_U.dout @[noc.scala 37:23]
    router2.io.in_L.din <= router1.io.out_R.dout @[noc.scala 38:23]
    router2.io.in_R.din <= router3.io.out_L.dout @[noc.scala 39:23]
    router3.io.in_U.din <= som @[noc.scala 42:23]
    router3.io.in_D.din <= router6.io.out_U.dout @[noc.scala 43:23]
    router3.io.in_L.din <= router2.io.out_R.dout @[noc.scala 44:23]
    router3.io.in_R.din <= som @[noc.scala 46:23]
    router4.io.in_U.din <= router1.io.out_D.dout @[noc.scala 48:23]
    router4.io.in_D.din <= router7.io.out_U.dout @[noc.scala 49:23]
    router4.io.in_L.din <= som @[noc.scala 51:23]
    router4.io.in_R.din <= router5.io.out_L.dout @[noc.scala 52:23]
    router5.io.in_U.din <= router2.io.out_D.dout @[noc.scala 54:23]
    router5.io.in_D.din <= router8.io.out_U.dout @[noc.scala 55:23]
    router5.io.in_L.din <= router4.io.out_R.dout @[noc.scala 56:23]
    router5.io.in_R.din <= router6.io.out_L.dout @[noc.scala 57:23]
    router6.io.in_U.din <= router3.io.out_D.dout @[noc.scala 59:23]
    router6.io.in_D.din <= router9.io.out_U.dout @[noc.scala 60:23]
    router6.io.in_L.din <= router5.io.out_R.dout @[noc.scala 61:23]
    router6.io.in_R.din <= som @[noc.scala 63:23]
    router7.io.in_U.din <= router4.io.out_D.dout @[noc.scala 65:23]
    router7.io.in_D.din <= som @[noc.scala 67:23]
    router7.io.in_L.din <= som @[noc.scala 69:23]
    router7.io.in_R.din <= router8.io.out_L.dout @[noc.scala 70:23]
    router8.io.in_U.din <= router5.io.out_D.dout @[noc.scala 72:23]
    router8.io.in_D.din <= som @[noc.scala 74:23]
    router8.io.in_L.din <= router7.io.out_R.dout @[noc.scala 75:23]
    router8.io.in_R.din <= router9.io.out_L.dout @[noc.scala 76:23]
    router9.io.in_U.din <= router6.io.out_D.dout @[noc.scala 78:23]
    router9.io.in_D.din <= som @[noc.scala 80:23]
    router9.io.in_L.din <= router8.io.out_R.dout @[noc.scala 81:23]
    router9.io.in_R.din <= som @[noc.scala 83:23]
    router1.io.in_U.read <= router7.io.out_D.write @[noc.scala 88:24]
    router1.io.in_D.read <= router4.io.out_U.write @[noc.scala 89:24]
    router1.io.in_L.read <= router3.io.out_R.write @[noc.scala 90:24]
    router1.io.in_R.read <= router2.io.out_L.write @[noc.scala 91:24]
    router2.io.in_U.read <= router8.io.out_D.write @[noc.scala 93:24]
    router2.io.in_D.read <= router5.io.out_U.write @[noc.scala 94:24]
    router2.io.in_L.read <= router1.io.out_R.write @[noc.scala 95:24]
    router2.io.in_R.read <= router3.io.out_L.write @[noc.scala 96:24]
    router3.io.in_U.read <= router9.io.out_D.write @[noc.scala 98:24]
    router3.io.in_D.read <= router6.io.out_U.write @[noc.scala 99:24]
    router3.io.in_L.read <= router2.io.out_R.write @[noc.scala 100:24]
    router3.io.in_R.read <= router1.io.out_L.write @[noc.scala 101:24]
    router4.io.in_U.read <= router1.io.out_D.write @[noc.scala 103:24]
    router4.io.in_D.read <= router7.io.out_U.write @[noc.scala 104:24]
    router4.io.in_L.read <= router6.io.out_R.write @[noc.scala 105:24]
    router4.io.in_R.read <= router5.io.out_L.write @[noc.scala 106:24]
    router5.io.in_U.read <= router2.io.out_D.write @[noc.scala 108:24]
    router5.io.in_D.read <= router8.io.out_U.write @[noc.scala 109:24]
    router5.io.in_L.read <= router4.io.out_R.write @[noc.scala 110:24]
    router5.io.in_R.read <= router6.io.out_L.write @[noc.scala 111:24]
    router6.io.in_U.read <= router3.io.out_D.write @[noc.scala 113:24]
    router6.io.in_D.read <= router9.io.out_U.write @[noc.scala 114:24]
    router6.io.in_L.read <= router5.io.out_R.write @[noc.scala 115:24]
    router6.io.in_R.read <= router4.io.out_L.write @[noc.scala 116:24]
    router7.io.in_U.read <= router4.io.out_D.write @[noc.scala 118:24]
    router7.io.in_D.read <= router1.io.out_U.write @[noc.scala 119:24]
    router7.io.in_L.read <= router9.io.out_R.write @[noc.scala 120:24]
    router7.io.in_R.read <= router8.io.out_L.write @[noc.scala 121:24]
    router8.io.in_U.read <= router5.io.out_D.write @[noc.scala 123:24]
    router8.io.in_D.read <= router2.io.out_U.write @[noc.scala 124:24]
    router8.io.in_L.read <= router7.io.out_R.write @[noc.scala 125:24]
    router8.io.in_R.read <= router9.io.out_L.write @[noc.scala 126:24]
    router9.io.in_U.read <= router6.io.out_D.write @[noc.scala 128:24]
    router9.io.in_D.read <= router3.io.out_U.write @[noc.scala 129:24]
    router9.io.in_L.read <= router8.io.out_R.write @[noc.scala 130:24]
    router9.io.in_R.read <= router7.io.out_L.write @[noc.scala 131:24]
    
