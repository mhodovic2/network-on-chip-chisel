;buildInfoPackage: chisel3, version: 3.1.3, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-09-12 19:37:29.007, builtAtMillis: 1536781049007
circuit noc : 
  module MeshRX : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip din : UInt<32>, dout : UInt<32>}
    
    wire RX_in : UInt<32>
    RX_in <= UInt<32>("h00")
    RX_in <= io.din @[MeshRX.scala 13:9]
    io.dout <= RX_in @[MeshRX.scala 14:11]
    
  module MeshRX_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip din : UInt<32>, dout : UInt<32>}
    
    wire RX_in : UInt<32>
    RX_in <= UInt<32>("h00")
    RX_in <= io.din @[MeshRX.scala 13:9]
    io.dout <= RX_in @[MeshRX.scala 14:11]
    
  module MeshRX_2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip din : UInt<32>, dout : UInt<32>}
    
    wire RX_in : UInt<32>
    RX_in <= UInt<32>("h00")
    RX_in <= io.din @[MeshRX.scala 13:9]
    io.dout <= RX_in @[MeshRX.scala 14:11]
    
  module MeshRX_3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip din : UInt<32>, dout : UInt<32>}
    
    wire RX_in : UInt<32>
    RX_in <= UInt<32>("h00")
    RX_in <= io.din @[MeshRX.scala 13:9]
    io.dout <= RX_in @[MeshRX.scala 14:11]
    
  module Router : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in_U : UInt<32>, flip in_D : UInt<32>, flip in_L : UInt<32>, flip in_R : UInt<32>, out_U : UInt<32>, out_D : UInt<32>, out_L : UInt<32>, out_R : UInt<32>}
    
    inst meshRX_U of MeshRX @[Router.scala 27:24]
    meshRX_U.clock <= clock
    meshRX_U.reset <= reset
    inst meshRX_D of MeshRX_1 @[Router.scala 28:24]
    meshRX_D.clock <= clock
    meshRX_D.reset <= reset
    inst meshRX_L of MeshRX_2 @[Router.scala 29:24]
    meshRX_L.clock <= clock
    meshRX_L.reset <= reset
    inst meshRX_R of MeshRX_3 @[Router.scala 30:24]
    meshRX_R.clock <= clock
    meshRX_R.reset <= reset
    wire RX_in : UInt<32>
    RX_in <= UInt<32>("h00")
    meshRX_U.io.din <= io.in_U @[Router.scala 35:19]
    meshRX_D.io.din <= io.in_U @[Router.scala 36:19]
    meshRX_L.io.din <= io.in_U @[Router.scala 37:19]
    meshRX_R.io.din <= io.in_U @[Router.scala 38:19]
    RX_in <= io.in_U @[Router.scala 40:9]
    RX_in <= io.in_D @[Router.scala 41:9]
    RX_in <= io.in_L @[Router.scala 42:9]
    RX_in <= io.in_R @[Router.scala 43:9]
    io.out_U <= meshRX_U.io.dout @[Router.scala 45:12]
    io.out_D <= meshRX_D.io.dout @[Router.scala 46:12]
    io.out_L <= meshRX_L.io.dout @[Router.scala 47:12]
    io.out_R <= meshRX_R.io.dout @[Router.scala 48:12]
    io.out_U <= RX_in @[Router.scala 50:12]
    io.out_D <= RX_in @[Router.scala 51:12]
    io.out_L <= RX_in @[Router.scala 52:12]
    io.out_R <= RX_in @[Router.scala 53:12]
    node _T_23 = bits(reset, 0, 0) @[Router.scala 97:9]
    node _T_25 = eq(_T_23, UInt<1>("h00")) @[Router.scala 97:9]
    when _T_25 : @[Router.scala 97:9]
      printf(clock, UInt<1>(1), "data into router N port is %x\n", io.out_U) @[Router.scala 97:9]
      skip @[Router.scala 97:9]
    
  module noc : 
    input clock : Clock
    input reset : UInt<1>
    output io : {}
    
    inst router1 of Router @[noc.scala 24:23]
    router1.clock <= clock
    router1.reset <= reset
    wire RX_in : UInt<32>
    RX_in <= UInt<32>("h00")
    router1.io.in_U <= RX_in @[noc.scala 28:19]
    router1.io.in_D <= RX_in @[noc.scala 29:19]
    router1.io.in_L <= RX_in @[noc.scala 30:19]
    router1.io.in_R <= RX_in @[noc.scala 31:19]
    
