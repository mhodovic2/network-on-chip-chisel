;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit noc : 
  module Router : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 39:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.dout <= out_U_dout @[Router.scala 46:17]
    io.out_D.dout <= out_D_dout @[Router.scala 47:17]
    io.out_L.dout <= out_L_dout @[Router.scala 48:17]
    io.out_R.dout <= out_R_dout @[Router.scala 49:17]
    io.out_U.write <= UInt<1>("h00") @[Router.scala 51:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 52:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 53:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 54:18]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 57:25]
    wire dataReg : UInt<1>
    dataReg <= UInt<1>("h00")
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 60:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 61:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 62:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 63:26]
    node _T = eq(stateReg, UInt<1>("h00")) @[Router.scala 66:17]
    when _T : @[Router.scala 66:28]
      when io.in_U.read : @[Router.scala 67:25]
        node _T_1 = eq(stateReg, UInt<1>("h01")) @[Router.scala 68:16]
        dataReg_U <= io.in_U.din @[Router.scala 69:17]
        skip @[Router.scala 67:25]
      else : @[Router.scala 70:31]
        when io.in_D.read : @[Router.scala 70:31]
          node _T_2 = eq(stateReg, UInt<1>("h01")) @[Router.scala 71:16]
          dataReg_D <= io.in_D.din @[Router.scala 72:17]
          skip @[Router.scala 70:31]
        else : @[Router.scala 73:30]
          when io.in_L.read : @[Router.scala 73:30]
            node _T_3 = eq(stateReg, UInt<1>("h01")) @[Router.scala 74:16]
            dataReg_L <= io.in_L.din @[Router.scala 75:17]
            skip @[Router.scala 73:30]
          else : @[Router.scala 76:30]
            when io.in_R.read : @[Router.scala 76:30]
              node _T_4 = eq(stateReg, UInt<1>("h01")) @[Router.scala 77:16]
              dataReg_R <= io.in_R.din @[Router.scala 78:17]
              skip @[Router.scala 76:30]
      skip @[Router.scala 66:28]
    else : @[Router.scala 80:34]
      node _T_5 = eq(stateReg, UInt<1>("h01")) @[Router.scala 80:24]
      when _T_5 : @[Router.scala 80:34]
        when io.out_U.write : @[Router.scala 81:26]
          out_U_dout <= dataReg_U @[Router.scala 82:18]
          stateReg <= UInt<1>("h00") @[Router.scala 83:16]
          skip @[Router.scala 81:26]
        else : @[Router.scala 84:33]
          when io.out_D.write : @[Router.scala 84:33]
            out_D_dout <= dataReg_D @[Router.scala 85:18]
            stateReg <= UInt<1>("h00") @[Router.scala 86:16]
            skip @[Router.scala 84:33]
          else : @[Router.scala 87:33]
            when io.out_L.write : @[Router.scala 87:33]
              out_L_dout <= dataReg_L @[Router.scala 88:18]
              stateReg <= UInt<1>("h00") @[Router.scala 89:16]
              skip @[Router.scala 87:33]
            else : @[Router.scala 90:33]
              when io.out_R.write : @[Router.scala 90:33]
                out_R_dout <= dataReg_R @[Router.scala 91:18]
                stateReg <= UInt<1>("h00") @[Router.scala 92:16]
                skip @[Router.scala 90:33]
        skip @[Router.scala 80:34]
    
  module Router_1 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 39:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.dout <= out_U_dout @[Router.scala 46:17]
    io.out_D.dout <= out_D_dout @[Router.scala 47:17]
    io.out_L.dout <= out_L_dout @[Router.scala 48:17]
    io.out_R.dout <= out_R_dout @[Router.scala 49:17]
    io.out_U.write <= UInt<1>("h00") @[Router.scala 51:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 52:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 53:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 54:18]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 57:25]
    wire dataReg : UInt<1>
    dataReg <= UInt<1>("h00")
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 60:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 61:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 62:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 63:26]
    node _T = eq(stateReg, UInt<1>("h00")) @[Router.scala 66:17]
    when _T : @[Router.scala 66:28]
      when io.in_U.read : @[Router.scala 67:25]
        node _T_1 = eq(stateReg, UInt<1>("h01")) @[Router.scala 68:16]
        dataReg_U <= io.in_U.din @[Router.scala 69:17]
        skip @[Router.scala 67:25]
      else : @[Router.scala 70:31]
        when io.in_D.read : @[Router.scala 70:31]
          node _T_2 = eq(stateReg, UInt<1>("h01")) @[Router.scala 71:16]
          dataReg_D <= io.in_D.din @[Router.scala 72:17]
          skip @[Router.scala 70:31]
        else : @[Router.scala 73:30]
          when io.in_L.read : @[Router.scala 73:30]
            node _T_3 = eq(stateReg, UInt<1>("h01")) @[Router.scala 74:16]
            dataReg_L <= io.in_L.din @[Router.scala 75:17]
            skip @[Router.scala 73:30]
          else : @[Router.scala 76:30]
            when io.in_R.read : @[Router.scala 76:30]
              node _T_4 = eq(stateReg, UInt<1>("h01")) @[Router.scala 77:16]
              dataReg_R <= io.in_R.din @[Router.scala 78:17]
              skip @[Router.scala 76:30]
      skip @[Router.scala 66:28]
    else : @[Router.scala 80:34]
      node _T_5 = eq(stateReg, UInt<1>("h01")) @[Router.scala 80:24]
      when _T_5 : @[Router.scala 80:34]
        when io.out_U.write : @[Router.scala 81:26]
          out_U_dout <= dataReg_U @[Router.scala 82:18]
          stateReg <= UInt<1>("h00") @[Router.scala 83:16]
          skip @[Router.scala 81:26]
        else : @[Router.scala 84:33]
          when io.out_D.write : @[Router.scala 84:33]
            out_D_dout <= dataReg_D @[Router.scala 85:18]
            stateReg <= UInt<1>("h00") @[Router.scala 86:16]
            skip @[Router.scala 84:33]
          else : @[Router.scala 87:33]
            when io.out_L.write : @[Router.scala 87:33]
              out_L_dout <= dataReg_L @[Router.scala 88:18]
              stateReg <= UInt<1>("h00") @[Router.scala 89:16]
              skip @[Router.scala 87:33]
            else : @[Router.scala 90:33]
              when io.out_R.write : @[Router.scala 90:33]
                out_R_dout <= dataReg_R @[Router.scala 91:18]
                stateReg <= UInt<1>("h00") @[Router.scala 92:16]
                skip @[Router.scala 90:33]
        skip @[Router.scala 80:34]
    
  module Router_2 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 39:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.dout <= out_U_dout @[Router.scala 46:17]
    io.out_D.dout <= out_D_dout @[Router.scala 47:17]
    io.out_L.dout <= out_L_dout @[Router.scala 48:17]
    io.out_R.dout <= out_R_dout @[Router.scala 49:17]
    io.out_U.write <= UInt<1>("h00") @[Router.scala 51:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 52:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 53:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 54:18]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 57:25]
    wire dataReg : UInt<1>
    dataReg <= UInt<1>("h00")
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 60:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 61:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 62:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 63:26]
    node _T = eq(stateReg, UInt<1>("h00")) @[Router.scala 66:17]
    when _T : @[Router.scala 66:28]
      when io.in_U.read : @[Router.scala 67:25]
        node _T_1 = eq(stateReg, UInt<1>("h01")) @[Router.scala 68:16]
        dataReg_U <= io.in_U.din @[Router.scala 69:17]
        skip @[Router.scala 67:25]
      else : @[Router.scala 70:31]
        when io.in_D.read : @[Router.scala 70:31]
          node _T_2 = eq(stateReg, UInt<1>("h01")) @[Router.scala 71:16]
          dataReg_D <= io.in_D.din @[Router.scala 72:17]
          skip @[Router.scala 70:31]
        else : @[Router.scala 73:30]
          when io.in_L.read : @[Router.scala 73:30]
            node _T_3 = eq(stateReg, UInt<1>("h01")) @[Router.scala 74:16]
            dataReg_L <= io.in_L.din @[Router.scala 75:17]
            skip @[Router.scala 73:30]
          else : @[Router.scala 76:30]
            when io.in_R.read : @[Router.scala 76:30]
              node _T_4 = eq(stateReg, UInt<1>("h01")) @[Router.scala 77:16]
              dataReg_R <= io.in_R.din @[Router.scala 78:17]
              skip @[Router.scala 76:30]
      skip @[Router.scala 66:28]
    else : @[Router.scala 80:34]
      node _T_5 = eq(stateReg, UInt<1>("h01")) @[Router.scala 80:24]
      when _T_5 : @[Router.scala 80:34]
        when io.out_U.write : @[Router.scala 81:26]
          out_U_dout <= dataReg_U @[Router.scala 82:18]
          stateReg <= UInt<1>("h00") @[Router.scala 83:16]
          skip @[Router.scala 81:26]
        else : @[Router.scala 84:33]
          when io.out_D.write : @[Router.scala 84:33]
            out_D_dout <= dataReg_D @[Router.scala 85:18]
            stateReg <= UInt<1>("h00") @[Router.scala 86:16]
            skip @[Router.scala 84:33]
          else : @[Router.scala 87:33]
            when io.out_L.write : @[Router.scala 87:33]
              out_L_dout <= dataReg_L @[Router.scala 88:18]
              stateReg <= UInt<1>("h00") @[Router.scala 89:16]
              skip @[Router.scala 87:33]
            else : @[Router.scala 90:33]
              when io.out_R.write : @[Router.scala 90:33]
                out_R_dout <= dataReg_R @[Router.scala 91:18]
                stateReg <= UInt<1>("h00") @[Router.scala 92:16]
                skip @[Router.scala 90:33]
        skip @[Router.scala 80:34]
    
  module Router_3 : 
    input clock : Clock
    input reset : Reset
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 39:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    io.out_U.dout <= out_U_dout @[Router.scala 46:17]
    io.out_D.dout <= out_D_dout @[Router.scala 47:17]
    io.out_L.dout <= out_L_dout @[Router.scala 48:17]
    io.out_R.dout <= out_R_dout @[Router.scala 49:17]
    io.out_U.write <= UInt<1>("h00") @[Router.scala 51:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 52:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 53:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 54:18]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 57:25]
    wire dataReg : UInt<1>
    dataReg <= UInt<1>("h00")
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 60:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 61:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 62:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 63:26]
    node _T = eq(stateReg, UInt<1>("h00")) @[Router.scala 66:17]
    when _T : @[Router.scala 66:28]
      when io.in_U.read : @[Router.scala 67:25]
        node _T_1 = eq(stateReg, UInt<1>("h01")) @[Router.scala 68:16]
        dataReg_U <= io.in_U.din @[Router.scala 69:17]
        skip @[Router.scala 67:25]
      else : @[Router.scala 70:31]
        when io.in_D.read : @[Router.scala 70:31]
          node _T_2 = eq(stateReg, UInt<1>("h01")) @[Router.scala 71:16]
          dataReg_D <= io.in_D.din @[Router.scala 72:17]
          skip @[Router.scala 70:31]
        else : @[Router.scala 73:30]
          when io.in_L.read : @[Router.scala 73:30]
            node _T_3 = eq(stateReg, UInt<1>("h01")) @[Router.scala 74:16]
            dataReg_L <= io.in_L.din @[Router.scala 75:17]
            skip @[Router.scala 73:30]
          else : @[Router.scala 76:30]
            when io.in_R.read : @[Router.scala 76:30]
              node _T_4 = eq(stateReg, UInt<1>("h01")) @[Router.scala 77:16]
              dataReg_R <= io.in_R.din @[Router.scala 78:17]
              skip @[Router.scala 76:30]
      skip @[Router.scala 66:28]
    else : @[Router.scala 80:34]
      node _T_5 = eq(stateReg, UInt<1>("h01")) @[Router.scala 80:24]
      when _T_5 : @[Router.scala 80:34]
        when io.out_U.write : @[Router.scala 81:26]
          out_U_dout <= dataReg_U @[Router.scala 82:18]
          stateReg <= UInt<1>("h00") @[Router.scala 83:16]
          skip @[Router.scala 81:26]
        else : @[Router.scala 84:33]
          when io.out_D.write : @[Router.scala 84:33]
            out_D_dout <= dataReg_D @[Router.scala 85:18]
            stateReg <= UInt<1>("h00") @[Router.scala 86:16]
            skip @[Router.scala 84:33]
          else : @[Router.scala 87:33]
            when io.out_L.write : @[Router.scala 87:33]
              out_L_dout <= dataReg_L @[Router.scala 88:18]
              stateReg <= UInt<1>("h00") @[Router.scala 89:16]
              skip @[Router.scala 87:33]
            else : @[Router.scala 90:33]
              when io.out_R.write : @[Router.scala 90:33]
                out_R_dout <= dataReg_R @[Router.scala 91:18]
                stateReg <= UInt<1>("h00") @[Router.scala 92:16]
                skip @[Router.scala 90:33]
        skip @[Router.scala 80:34]
    
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
    
