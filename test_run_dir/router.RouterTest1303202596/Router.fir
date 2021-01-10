;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit Router : 
  module Router : 
    input clock : Clock
    input reset : UInt<1>
    output io : {in_U : {flip read : UInt<1>, flip din : UInt<32>}, in_D : {flip read : UInt<1>, flip din : UInt<32>}, in_L : {flip read : UInt<1>, flip din : UInt<32>}, in_R : {flip read : UInt<1>, flip din : UInt<32>}, in_CPU : {flip read : UInt<1>, flip din : UInt<32>}, out_U : {write : UInt<1>, dout : UInt<32>}, out_D : {write : UInt<1>, dout : UInt<32>}, out_L : {write : UInt<1>, dout : UInt<32>}, out_R : {write : UInt<1>, dout : UInt<32>}, out_CPU : {write : UInt<1>, dout : UInt<32>}, flip x : UInt<2>, flip y : UInt<2>}
    
    reg som : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 44:20]
    wire out_U_dout : UInt<32>
    out_U_dout <= UInt<32>("h00")
    wire out_D_dout : UInt<32>
    out_D_dout <= UInt<32>("h00")
    wire out_L_dout : UInt<32>
    out_L_dout <= UInt<32>("h00")
    wire out_R_dout : UInt<32>
    out_R_dout <= UInt<32>("h00")
    wire out_CPU_dout : UInt<32>
    out_CPU_dout <= UInt<32>("h00")
    io.out_U.dout <= out_U_dout @[Router.scala 52:17]
    io.out_D.dout <= out_D_dout @[Router.scala 53:17]
    io.out_L.dout <= out_L_dout @[Router.scala 54:17]
    io.out_R.dout <= out_R_dout @[Router.scala 55:17]
    io.out_CPU.dout <= out_CPU_dout @[Router.scala 56:19]
    io.out_U.write <= UInt<1>("h00") @[Router.scala 58:18]
    io.out_D.write <= UInt<1>("h00") @[Router.scala 59:18]
    io.out_L.write <= UInt<1>("h00") @[Router.scala 60:18]
    io.out_R.write <= UInt<1>("h00") @[Router.scala 61:18]
    io.out_CPU.write <= UInt<1>("h00") @[Router.scala 62:20]
    wire dataReg : UInt<1>
    dataReg <= UInt<1>("h00")
    reg dataReg_U : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 65:26]
    reg dataReg_D : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 66:26]
    reg dataReg_L : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 67:26]
    reg dataReg_R : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 68:26]
    reg dataReg_CPU : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Router.scala 69:28]
    io.out_D.dout <= dataReg_U @[Router.scala 71:17]
    reg stateReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Router.scala 72:25]
    node _T = eq(stateReg, UInt<1>("h00")) @[Router.scala 74:17]
    when _T : @[Router.scala 74:26]
      when io.in_U.read : @[Router.scala 75:25]
        stateReg <= UInt<1>("h01") @[Router.scala 76:16]
        dataReg_U <= io.in_U.din @[Router.scala 77:17]
        io.out_D.write <= UInt<1>("h01") @[Router.scala 78:22]
        skip @[Router.scala 75:25]
      else : @[Router.scala 80:31]
        when io.in_D.read : @[Router.scala 80:31]
          stateReg <= UInt<1>("h01") @[Router.scala 81:16]
          dataReg_D <= io.in_D.din @[Router.scala 82:17]
          skip @[Router.scala 80:31]
        else : @[Router.scala 83:30]
          when io.in_L.read : @[Router.scala 83:30]
            stateReg <= UInt<1>("h01") @[Router.scala 84:16]
            dataReg_L <= io.in_L.din @[Router.scala 85:17]
            skip @[Router.scala 83:30]
          else : @[Router.scala 86:30]
            when io.in_R.read : @[Router.scala 86:30]
              stateReg <= UInt<1>("h01") @[Router.scala 87:16]
              dataReg_R <= io.in_R.din @[Router.scala 88:17]
              skip @[Router.scala 86:30]
      skip @[Router.scala 74:26]
    else : @[Router.scala 90:33]
      node _T_1 = eq(stateReg, UInt<1>("h01")) @[Router.scala 90:24]
      when _T_1 : @[Router.scala 90:33]
        when io.out_U.write : @[Router.scala 91:26]
          out_U_dout <= dataReg_U @[Router.scala 92:18]
          stateReg <= UInt<1>("h00") @[Router.scala 93:16]
          skip @[Router.scala 91:26]
        else : @[Router.scala 94:33]
          when io.out_D.write : @[Router.scala 94:33]
            io.out_D.dout <= dataReg_U @[Router.scala 95:21]
            stateReg <= UInt<1>("h00") @[Router.scala 96:16]
            skip @[Router.scala 94:33]
          else : @[Router.scala 97:33]
            when io.out_L.write : @[Router.scala 97:33]
              out_L_dout <= dataReg_L @[Router.scala 98:18]
              stateReg <= UInt<1>("h00") @[Router.scala 99:16]
              skip @[Router.scala 97:33]
            else : @[Router.scala 100:33]
              when io.out_R.write : @[Router.scala 100:33]
                out_R_dout <= dataReg_R @[Router.scala 101:18]
                stateReg <= UInt<1>("h00") @[Router.scala 102:16]
                skip @[Router.scala 100:33]
        skip @[Router.scala 90:33]
    
