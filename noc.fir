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
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 70:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 70:74]
    io.out_U.dout <= _T_13 @[Router.scala 70:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 71:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 71:74]
    io.out_D.dout <= _T_15 @[Router.scala 71:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 72:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 72:74]
    io.out_L.dout <= _T_17 @[Router.scala 72:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 73:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 73:74]
    io.out_R.dout <= _T_19 @[Router.scala 73:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 76:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 82:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 85:17]
    when _T_20 : @[Router.scala 85:28]
      when io.in_U.read : @[Router.scala 86:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 87:16]
        dataReg_U <= io.in_U.din @[Router.scala 88:17]
        skip @[Router.scala 86:25]
      else : @[Router.scala 89:31]
        when io.in_D.read : @[Router.scala 89:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 90:16]
          dataReg_D <= io.in_D.din @[Router.scala 91:17]
          skip @[Router.scala 89:31]
        else : @[Router.scala 92:30]
          when io.in_L.read : @[Router.scala 92:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 93:16]
            dataReg_L <= io.in_L.din @[Router.scala 94:17]
            skip @[Router.scala 92:30]
          else : @[Router.scala 95:30]
            when io.in_R.read : @[Router.scala 95:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 96:16]
              dataReg_R <= io.in_R.din @[Router.scala 97:17]
              skip @[Router.scala 95:30]
      skip @[Router.scala 85:28]
    else : @[Router.scala 99:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 99:24]
      when _T_25 : @[Router.scala 99:34]
        when io.out_U.write : @[Router.scala 100:26]
          out_U_dout <= dataReg_U @[Router.scala 101:18]
          stateReg <= UInt<1>("h00") @[Router.scala 102:16]
          skip @[Router.scala 100:26]
        else : @[Router.scala 103:33]
          when io.out_D.write : @[Router.scala 103:33]
            out_D_dout <= dataReg_D @[Router.scala 104:18]
            stateReg <= UInt<1>("h00") @[Router.scala 105:16]
            skip @[Router.scala 103:33]
          else : @[Router.scala 106:33]
            when io.out_L.write : @[Router.scala 106:33]
              out_L_dout <= dataReg_L @[Router.scala 107:18]
              stateReg <= UInt<1>("h00") @[Router.scala 108:16]
              skip @[Router.scala 106:33]
            else : @[Router.scala 109:33]
              when io.out_R.write : @[Router.scala 109:33]
                out_R_dout <= dataReg_R @[Router.scala 110:18]
                stateReg <= UInt<1>("h00") @[Router.scala 111:16]
                skip @[Router.scala 109:33]
        skip @[Router.scala 99:34]
    
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
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 70:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 70:74]
    io.out_U.dout <= _T_13 @[Router.scala 70:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 71:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 71:74]
    io.out_D.dout <= _T_15 @[Router.scala 71:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 72:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 72:74]
    io.out_L.dout <= _T_17 @[Router.scala 72:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 73:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 73:74]
    io.out_R.dout <= _T_19 @[Router.scala 73:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 76:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 82:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 85:17]
    when _T_20 : @[Router.scala 85:28]
      when io.in_U.read : @[Router.scala 86:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 87:16]
        dataReg_U <= io.in_U.din @[Router.scala 88:17]
        skip @[Router.scala 86:25]
      else : @[Router.scala 89:31]
        when io.in_D.read : @[Router.scala 89:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 90:16]
          dataReg_D <= io.in_D.din @[Router.scala 91:17]
          skip @[Router.scala 89:31]
        else : @[Router.scala 92:30]
          when io.in_L.read : @[Router.scala 92:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 93:16]
            dataReg_L <= io.in_L.din @[Router.scala 94:17]
            skip @[Router.scala 92:30]
          else : @[Router.scala 95:30]
            when io.in_R.read : @[Router.scala 95:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 96:16]
              dataReg_R <= io.in_R.din @[Router.scala 97:17]
              skip @[Router.scala 95:30]
      skip @[Router.scala 85:28]
    else : @[Router.scala 99:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 99:24]
      when _T_25 : @[Router.scala 99:34]
        when io.out_U.write : @[Router.scala 100:26]
          out_U_dout <= dataReg_U @[Router.scala 101:18]
          stateReg <= UInt<1>("h00") @[Router.scala 102:16]
          skip @[Router.scala 100:26]
        else : @[Router.scala 103:33]
          when io.out_D.write : @[Router.scala 103:33]
            out_D_dout <= dataReg_D @[Router.scala 104:18]
            stateReg <= UInt<1>("h00") @[Router.scala 105:16]
            skip @[Router.scala 103:33]
          else : @[Router.scala 106:33]
            when io.out_L.write : @[Router.scala 106:33]
              out_L_dout <= dataReg_L @[Router.scala 107:18]
              stateReg <= UInt<1>("h00") @[Router.scala 108:16]
              skip @[Router.scala 106:33]
            else : @[Router.scala 109:33]
              when io.out_R.write : @[Router.scala 109:33]
                out_R_dout <= dataReg_R @[Router.scala 110:18]
                stateReg <= UInt<1>("h00") @[Router.scala 111:16]
                skip @[Router.scala 109:33]
        skip @[Router.scala 99:34]
    
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
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 70:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 70:74]
    io.out_U.dout <= _T_13 @[Router.scala 70:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 71:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 71:74]
    io.out_D.dout <= _T_15 @[Router.scala 71:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 72:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 72:74]
    io.out_L.dout <= _T_17 @[Router.scala 72:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 73:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 73:74]
    io.out_R.dout <= _T_19 @[Router.scala 73:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 76:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 82:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 85:17]
    when _T_20 : @[Router.scala 85:28]
      when io.in_U.read : @[Router.scala 86:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 87:16]
        dataReg_U <= io.in_U.din @[Router.scala 88:17]
        skip @[Router.scala 86:25]
      else : @[Router.scala 89:31]
        when io.in_D.read : @[Router.scala 89:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 90:16]
          dataReg_D <= io.in_D.din @[Router.scala 91:17]
          skip @[Router.scala 89:31]
        else : @[Router.scala 92:30]
          when io.in_L.read : @[Router.scala 92:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 93:16]
            dataReg_L <= io.in_L.din @[Router.scala 94:17]
            skip @[Router.scala 92:30]
          else : @[Router.scala 95:30]
            when io.in_R.read : @[Router.scala 95:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 96:16]
              dataReg_R <= io.in_R.din @[Router.scala 97:17]
              skip @[Router.scala 95:30]
      skip @[Router.scala 85:28]
    else : @[Router.scala 99:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 99:24]
      when _T_25 : @[Router.scala 99:34]
        when io.out_U.write : @[Router.scala 100:26]
          out_U_dout <= dataReg_U @[Router.scala 101:18]
          stateReg <= UInt<1>("h00") @[Router.scala 102:16]
          skip @[Router.scala 100:26]
        else : @[Router.scala 103:33]
          when io.out_D.write : @[Router.scala 103:33]
            out_D_dout <= dataReg_D @[Router.scala 104:18]
            stateReg <= UInt<1>("h00") @[Router.scala 105:16]
            skip @[Router.scala 103:33]
          else : @[Router.scala 106:33]
            when io.out_L.write : @[Router.scala 106:33]
              out_L_dout <= dataReg_L @[Router.scala 107:18]
              stateReg <= UInt<1>("h00") @[Router.scala 108:16]
              skip @[Router.scala 106:33]
            else : @[Router.scala 109:33]
              when io.out_R.write : @[Router.scala 109:33]
                out_R_dout <= dataReg_R @[Router.scala 110:18]
                stateReg <= UInt<1>("h00") @[Router.scala 111:16]
                skip @[Router.scala 109:33]
        skip @[Router.scala 99:34]
    
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
    node _T_12 = or(XBar_D.io.xbar_data_out_U, XBar_L.io.xbar_data_out_U) @[Router.scala 70:46]
    node _T_13 = or(_T_12, XBar_R.io.xbar_data_out_U) @[Router.scala 70:74]
    io.out_U.dout <= _T_13 @[Router.scala 70:17]
    node _T_14 = or(XBar_U.io.xbar_data_out_D, XBar_L.io.xbar_data_out_D) @[Router.scala 71:46]
    node _T_15 = or(_T_14, XBar_R.io.xbar_data_out_D) @[Router.scala 71:74]
    io.out_D.dout <= _T_15 @[Router.scala 71:17]
    node _T_16 = or(XBar_U.io.xbar_data_out_L, XBar_D.io.xbar_data_out_L) @[Router.scala 72:46]
    node _T_17 = or(_T_16, XBar_R.io.xbar_data_out_L) @[Router.scala 72:74]
    io.out_L.dout <= _T_17 @[Router.scala 72:17]
    node _T_18 = or(XBar_U.io.xbar_data_out_R, XBar_D.io.xbar_data_out_R) @[Router.scala 73:46]
    node _T_19 = or(_T_18, XBar_L.io.xbar_data_out_R) @[Router.scala 73:74]
    io.out_R.dout <= _T_19 @[Router.scala 73:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 76:25]
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 79:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 80:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 81:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 82:26]
    node _T_20 = eq(stateReg, UInt<1>("h00")) @[Router.scala 85:17]
    when _T_20 : @[Router.scala 85:28]
      when io.in_U.read : @[Router.scala 86:25]
        node _T_21 = eq(stateReg, UInt<1>("h01")) @[Router.scala 87:16]
        dataReg_U <= io.in_U.din @[Router.scala 88:17]
        skip @[Router.scala 86:25]
      else : @[Router.scala 89:31]
        when io.in_D.read : @[Router.scala 89:31]
          node _T_22 = eq(stateReg, UInt<1>("h01")) @[Router.scala 90:16]
          dataReg_D <= io.in_D.din @[Router.scala 91:17]
          skip @[Router.scala 89:31]
        else : @[Router.scala 92:30]
          when io.in_L.read : @[Router.scala 92:30]
            node _T_23 = eq(stateReg, UInt<1>("h01")) @[Router.scala 93:16]
            dataReg_L <= io.in_L.din @[Router.scala 94:17]
            skip @[Router.scala 92:30]
          else : @[Router.scala 95:30]
            when io.in_R.read : @[Router.scala 95:30]
              node _T_24 = eq(stateReg, UInt<1>("h01")) @[Router.scala 96:16]
              dataReg_R <= io.in_R.din @[Router.scala 97:17]
              skip @[Router.scala 95:30]
      skip @[Router.scala 85:28]
    else : @[Router.scala 99:34]
      node _T_25 = eq(stateReg, UInt<1>("h01")) @[Router.scala 99:24]
      when _T_25 : @[Router.scala 99:34]
        when io.out_U.write : @[Router.scala 100:26]
          out_U_dout <= dataReg_U @[Router.scala 101:18]
          stateReg <= UInt<1>("h00") @[Router.scala 102:16]
          skip @[Router.scala 100:26]
        else : @[Router.scala 103:33]
          when io.out_D.write : @[Router.scala 103:33]
            out_D_dout <= dataReg_D @[Router.scala 104:18]
            stateReg <= UInt<1>("h00") @[Router.scala 105:16]
            skip @[Router.scala 103:33]
          else : @[Router.scala 106:33]
            when io.out_L.write : @[Router.scala 106:33]
              out_L_dout <= dataReg_L @[Router.scala 107:18]
              stateReg <= UInt<1>("h00") @[Router.scala 108:16]
              skip @[Router.scala 106:33]
            else : @[Router.scala 109:33]
              when io.out_R.write : @[Router.scala 109:33]
                out_R_dout <= dataReg_R @[Router.scala 110:18]
                stateReg <= UInt<1>("h00") @[Router.scala 111:16]
                skip @[Router.scala 109:33]
        skip @[Router.scala 99:34]
    
  module noc : 
    input clock : Clock
    input reset : UInt<1>
    output io : {}
    
    inst router1 of Router @[noc.scala 13:23]
    router1.clock <= clock
    router1.reset <= reset
    inst router2 of Router_1 @[noc.scala 14:23]
    router2.clock <= clock
    router2.reset <= reset
    inst router3 of Router_2 @[noc.scala 15:23]
    router3.clock <= clock
    router3.reset <= reset
    inst router4 of Router_3 @[noc.scala 16:23]
    router4.clock <= clock
    router4.reset <= reset
    router1.io.in_U.din <= router3.io.out_D.dout @[noc.scala 19:23]
    router1.io.in_D.din <= router3.io.out_U.dout @[noc.scala 20:23]
    router1.io.in_L.din <= router2.io.out_R.dout @[noc.scala 21:23]
    router1.io.in_R.din <= router2.io.out_L.dout @[noc.scala 22:23]
    router2.io.in_U.din <= router4.io.out_D.dout @[noc.scala 24:23]
    router2.io.in_D.din <= router4.io.out_U.dout @[noc.scala 25:23]
    router2.io.in_L.din <= router1.io.out_R.dout @[noc.scala 26:23]
    router2.io.in_R.din <= router1.io.out_L.dout @[noc.scala 27:23]
    router3.io.in_U.din <= router1.io.out_D.dout @[noc.scala 29:23]
    router3.io.in_D.din <= router1.io.out_U.dout @[noc.scala 30:23]
    router3.io.in_L.din <= router4.io.out_R.dout @[noc.scala 31:23]
    router3.io.in_R.din <= router4.io.out_L.dout @[noc.scala 32:23]
    router4.io.in_U.din <= router2.io.out_D.dout @[noc.scala 34:23]
    router4.io.in_D.din <= router2.io.out_U.dout @[noc.scala 35:23]
    router4.io.in_L.din <= router3.io.out_R.dout @[noc.scala 36:23]
    router4.io.in_R.din <= router3.io.out_L.dout @[noc.scala 37:23]
    router1.io.in_U.read <= router3.io.out_D.write @[noc.scala 42:24]
    router1.io.in_D.read <= router3.io.out_U.write @[noc.scala 43:24]
    router1.io.in_L.read <= router2.io.out_R.write @[noc.scala 44:24]
    router1.io.in_R.read <= router2.io.out_L.write @[noc.scala 45:24]
    router2.io.in_U.read <= router4.io.out_D.write @[noc.scala 47:24]
    router2.io.in_D.read <= router4.io.out_U.write @[noc.scala 48:24]
    router2.io.in_L.read <= router1.io.out_R.write @[noc.scala 49:24]
    router2.io.in_R.read <= router1.io.out_L.write @[noc.scala 50:24]
    router3.io.in_U.read <= router1.io.out_D.write @[noc.scala 52:24]
    router3.io.in_D.read <= router1.io.out_U.write @[noc.scala 53:24]
    router3.io.in_L.read <= router4.io.out_R.write @[noc.scala 54:24]
    router3.io.in_R.read <= router4.io.out_L.write @[noc.scala 55:24]
    router4.io.in_U.read <= router2.io.out_D.write @[noc.scala 57:24]
    router4.io.in_D.read <= router2.io.out_U.write @[noc.scala 58:24]
    router4.io.in_L.read <= router3.io.out_R.write @[noc.scala 59:24]
    router4.io.in_R.read <= router3.io.out_L.write @[noc.scala 60:24]
    
