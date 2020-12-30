;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit Router : 
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
    input reset : UInt<1>
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
    wire RX_in : UInt<32>
    RX_in <= UInt<32>("h00")
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
    node _T = bits(reset, 0, 0) @[Router.scala 46:9]
    node _T_1 = eq(_T, UInt<1>("h00")) @[Router.scala 46:9]
    when _T_1 : @[Router.scala 46:9]
      printf(clock, UInt<1>(1), "data into router N port is %x\n", io.out_U) @[Router.scala 46:9]
      skip @[Router.scala 46:9]
    
