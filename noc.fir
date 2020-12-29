;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit noc : 
  module MeshRX : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshTX : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_1 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_2 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_3 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module Router : 
    input clock : Clock
    input reset : Reset
    output io : {flip in_U : UInt<32>, flip in_D : UInt<32>, flip in_L : UInt<32>, flip in_R : UInt<32>, out_U : UInt<32>, out_D : UInt<32>, out_L : UInt<32>, out_R : UInt<32>}
    
    inst meshRX_U of MeshRX @[Router.scala 22:24]
    meshRX_U.clock <= clock
    meshRX_U.reset <= reset
    inst meshRX_D of MeshRX_1 @[Router.scala 23:24]
    meshRX_D.clock <= clock
    meshRX_D.reset <= reset
    inst meshRX_L of MeshRX_2 @[Router.scala 24:24]
    meshRX_L.clock <= clock
    meshRX_L.reset <= reset
    inst meshRX_R of MeshRX_3 @[Router.scala 25:24]
    meshRX_R.clock <= clock
    meshRX_R.reset <= reset
    meshRX_U.io.din <= io.in_U @[Router.scala 30:19]
    meshRX_D.io.din <= io.in_D @[Router.scala 31:19]
    meshRX_L.io.din <= io.in_L @[Router.scala 32:19]
    meshRX_R.io.din <= io.in_R @[Router.scala 33:19]
    inst meshTX_U of MeshTX @[Router.scala 35:24]
    meshTX_U.clock <= clock
    meshTX_U.reset <= reset
    inst meshTX_D of MeshTX_1 @[Router.scala 36:24]
    meshTX_D.clock <= clock
    meshTX_D.reset <= reset
    inst meshTX_L of MeshTX_2 @[Router.scala 37:24]
    meshTX_L.clock <= clock
    meshTX_L.reset <= reset
    inst meshTX_R of MeshTX_3 @[Router.scala 38:24]
    meshTX_R.clock <= clock
    meshTX_R.reset <= reset
    io.out_U <= meshTX_U.io.dout @[Router.scala 41:12]
    io.out_D <= meshTX_D.io.dout @[Router.scala 42:12]
    io.out_L <= meshTX_L.io.dout @[Router.scala 43:12]
    io.out_R <= meshTX_R.io.dout @[Router.scala 44:12]
    node _T = asUInt(reset) @[Router.scala 46:9]
    node _T_1 = eq(_T, UInt<1>("h00")) @[Router.scala 46:9]
    when _T_1 : @[Router.scala 46:9]
      printf(clock, UInt<1>(1), "data into router N port is %x\n", io.out_U) @[Router.scala 46:9]
      skip @[Router.scala 46:9]
    
  module MeshRX_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshTX_4 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_5 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_6 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_7 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module Router_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in_U : UInt<32>, flip in_D : UInt<32>, flip in_L : UInt<32>, flip in_R : UInt<32>, out_U : UInt<32>, out_D : UInt<32>, out_L : UInt<32>, out_R : UInt<32>}
    
    inst meshRX_U of MeshRX_4 @[Router.scala 22:24]
    meshRX_U.clock <= clock
    meshRX_U.reset <= reset
    inst meshRX_D of MeshRX_5 @[Router.scala 23:24]
    meshRX_D.clock <= clock
    meshRX_D.reset <= reset
    inst meshRX_L of MeshRX_6 @[Router.scala 24:24]
    meshRX_L.clock <= clock
    meshRX_L.reset <= reset
    inst meshRX_R of MeshRX_7 @[Router.scala 25:24]
    meshRX_R.clock <= clock
    meshRX_R.reset <= reset
    meshRX_U.io.din <= io.in_U @[Router.scala 30:19]
    meshRX_D.io.din <= io.in_D @[Router.scala 31:19]
    meshRX_L.io.din <= io.in_L @[Router.scala 32:19]
    meshRX_R.io.din <= io.in_R @[Router.scala 33:19]
    inst meshTX_U of MeshTX_4 @[Router.scala 35:24]
    meshTX_U.clock <= clock
    meshTX_U.reset <= reset
    inst meshTX_D of MeshTX_5 @[Router.scala 36:24]
    meshTX_D.clock <= clock
    meshTX_D.reset <= reset
    inst meshTX_L of MeshTX_6 @[Router.scala 37:24]
    meshTX_L.clock <= clock
    meshTX_L.reset <= reset
    inst meshTX_R of MeshTX_7 @[Router.scala 38:24]
    meshTX_R.clock <= clock
    meshTX_R.reset <= reset
    io.out_U <= meshTX_U.io.dout @[Router.scala 41:12]
    io.out_D <= meshTX_D.io.dout @[Router.scala 42:12]
    io.out_L <= meshTX_L.io.dout @[Router.scala 43:12]
    io.out_R <= meshTX_R.io.dout @[Router.scala 44:12]
    node _T = asUInt(reset) @[Router.scala 46:9]
    node _T_1 = eq(_T, UInt<1>("h00")) @[Router.scala 46:9]
    when _T_1 : @[Router.scala 46:9]
      printf(clock, UInt<1>(1), "data into router N port is %x\n", io.out_U) @[Router.scala 46:9]
      skip @[Router.scala 46:9]
    
  module MeshRX_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshTX_8 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_9 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_10 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_11 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module Router_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in_U : UInt<32>, flip in_D : UInt<32>, flip in_L : UInt<32>, flip in_R : UInt<32>, out_U : UInt<32>, out_D : UInt<32>, out_L : UInt<32>, out_R : UInt<32>}
    
    inst meshRX_U of MeshRX_8 @[Router.scala 22:24]
    meshRX_U.clock <= clock
    meshRX_U.reset <= reset
    inst meshRX_D of MeshRX_9 @[Router.scala 23:24]
    meshRX_D.clock <= clock
    meshRX_D.reset <= reset
    inst meshRX_L of MeshRX_10 @[Router.scala 24:24]
    meshRX_L.clock <= clock
    meshRX_L.reset <= reset
    inst meshRX_R of MeshRX_11 @[Router.scala 25:24]
    meshRX_R.clock <= clock
    meshRX_R.reset <= reset
    meshRX_U.io.din <= io.in_U @[Router.scala 30:19]
    meshRX_D.io.din <= io.in_D @[Router.scala 31:19]
    meshRX_L.io.din <= io.in_L @[Router.scala 32:19]
    meshRX_R.io.din <= io.in_R @[Router.scala 33:19]
    inst meshTX_U of MeshTX_8 @[Router.scala 35:24]
    meshTX_U.clock <= clock
    meshTX_U.reset <= reset
    inst meshTX_D of MeshTX_9 @[Router.scala 36:24]
    meshTX_D.clock <= clock
    meshTX_D.reset <= reset
    inst meshTX_L of MeshTX_10 @[Router.scala 37:24]
    meshTX_L.clock <= clock
    meshTX_L.reset <= reset
    inst meshTX_R of MeshTX_11 @[Router.scala 38:24]
    meshTX_R.clock <= clock
    meshTX_R.reset <= reset
    io.out_U <= meshTX_U.io.dout @[Router.scala 41:12]
    io.out_D <= meshTX_D.io.dout @[Router.scala 42:12]
    io.out_L <= meshTX_L.io.dout @[Router.scala 43:12]
    io.out_R <= meshTX_R.io.dout @[Router.scala 44:12]
    node _T = asUInt(reset) @[Router.scala 46:9]
    node _T_1 = eq(_T, UInt<1>("h00")) @[Router.scala 46:9]
    when _T_1 : @[Router.scala 46:9]
      printf(clock, UInt<1>(1), "data into router N port is %x\n", io.out_U) @[Router.scala 46:9]
      skip @[Router.scala 46:9]
    
  module MeshRX_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshRX_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip din : UInt<32>}
    
    
  module MeshTX_12 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_13 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_14 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module MeshTX_15 : 
    input clock : Clock
    input reset : Reset
    output io : {dout : UInt<32>}
    
    wire registar : UInt<32>
    registar <= UInt<32>("h00")
    io.dout <= registar @[MeshTX.scala 14:11]
    
  module Router_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip in_U : UInt<32>, flip in_D : UInt<32>, flip in_L : UInt<32>, flip in_R : UInt<32>, out_U : UInt<32>, out_D : UInt<32>, out_L : UInt<32>, out_R : UInt<32>}
    
    inst meshRX_U of MeshRX_12 @[Router.scala 22:24]
    meshRX_U.clock <= clock
    meshRX_U.reset <= reset
    inst meshRX_D of MeshRX_13 @[Router.scala 23:24]
    meshRX_D.clock <= clock
    meshRX_D.reset <= reset
    inst meshRX_L of MeshRX_14 @[Router.scala 24:24]
    meshRX_L.clock <= clock
    meshRX_L.reset <= reset
    inst meshRX_R of MeshRX_15 @[Router.scala 25:24]
    meshRX_R.clock <= clock
    meshRX_R.reset <= reset
    meshRX_U.io.din <= io.in_U @[Router.scala 30:19]
    meshRX_D.io.din <= io.in_D @[Router.scala 31:19]
    meshRX_L.io.din <= io.in_L @[Router.scala 32:19]
    meshRX_R.io.din <= io.in_R @[Router.scala 33:19]
    inst meshTX_U of MeshTX_12 @[Router.scala 35:24]
    meshTX_U.clock <= clock
    meshTX_U.reset <= reset
    inst meshTX_D of MeshTX_13 @[Router.scala 36:24]
    meshTX_D.clock <= clock
    meshTX_D.reset <= reset
    inst meshTX_L of MeshTX_14 @[Router.scala 37:24]
    meshTX_L.clock <= clock
    meshTX_L.reset <= reset
    inst meshTX_R of MeshTX_15 @[Router.scala 38:24]
    meshTX_R.clock <= clock
    meshTX_R.reset <= reset
    io.out_U <= meshTX_U.io.dout @[Router.scala 41:12]
    io.out_D <= meshTX_D.io.dout @[Router.scala 42:12]
    io.out_L <= meshTX_L.io.dout @[Router.scala 43:12]
    io.out_R <= meshTX_R.io.dout @[Router.scala 44:12]
    node _T = asUInt(reset) @[Router.scala 46:9]
    node _T_1 = eq(_T, UInt<1>("h00")) @[Router.scala 46:9]
    when _T_1 : @[Router.scala 46:9]
      printf(clock, UInt<1>(1), "data into router N port is %x\n", io.out_U) @[Router.scala 46:9]
      skip @[Router.scala 46:9]
    
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
    router1.io.in_U <= router3.io.out_D @[noc.scala 19:19]
    router1.io.in_D <= router3.io.out_U @[noc.scala 20:19]
    router1.io.in_L <= router2.io.out_R @[noc.scala 21:19]
    router1.io.in_R <= router2.io.out_L @[noc.scala 22:19]
    router2.io.in_U <= router4.io.out_D @[noc.scala 24:19]
    router2.io.in_D <= router4.io.out_U @[noc.scala 25:19]
    router2.io.in_L <= router1.io.out_R @[noc.scala 26:19]
    router2.io.in_R <= router1.io.out_L @[noc.scala 27:19]
    router3.io.in_U <= router1.io.out_D @[noc.scala 29:19]
    router3.io.in_D <= router1.io.out_U @[noc.scala 30:19]
    router3.io.in_L <= router4.io.out_R @[noc.scala 31:19]
    router3.io.in_R <= router4.io.out_L @[noc.scala 32:19]
    router4.io.in_U <= router2.io.out_D @[noc.scala 34:19]
    router4.io.in_D <= router2.io.out_U @[noc.scala 35:19]
    router4.io.in_L <= router3.io.out_R @[noc.scala 36:19]
    router4.io.in_R <= router3.io.out_L @[noc.scala 37:19]
    
