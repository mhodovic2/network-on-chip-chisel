circuit Router :
  module MeshRX :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<32>
  
    

  module MeshTX :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<32>
  
    node registar = UInt<32>("h0")
    io_dout <= registar @[MeshTX.scala 14:11]

  module Router :
    input clock : Clock
    input reset : UInt<1>
    input io_in_U : UInt<32>
    input io_in_D : UInt<32>
    input io_in_L : UInt<32>
    input io_in_R : UInt<32>
    output io_out_U : UInt<32>
    output io_out_D : UInt<32>
    output io_out_L : UInt<32>
    output io_out_R : UInt<32>
  
    inst meshRX_U of MeshRX @[Router.scala 22:24]
    inst meshRX_D of MeshRX @[Router.scala 23:24]
    inst meshRX_L of MeshRX @[Router.scala 24:24]
    inst meshRX_R of MeshRX @[Router.scala 25:24]
    inst meshTX_U of MeshTX @[Router.scala 35:24]
    inst meshTX_D of MeshTX @[Router.scala 36:24]
    inst meshTX_L of MeshTX @[Router.scala 37:24]
    inst meshTX_R of MeshTX @[Router.scala 38:24]
    node _T = bits(reset, 0, 0) @[Router.scala 46:9]
    node _T_1 = eq(_T, UInt<1>("h0")) @[Router.scala 46:9]
    node RX_in = UInt<32>("h0")
    io_out_U <= meshTX_U.io_dout @[Router.scala 41:12]
    io_out_D <= meshTX_D.io_dout @[Router.scala 42:12]
    io_out_L <= meshTX_L.io_dout @[Router.scala 43:12]
    io_out_R <= meshTX_R.io_dout @[Router.scala 44:12]
    meshRX_U.clock <= clock
    meshRX_U.reset <= reset
    meshRX_U.io_din <= io_in_U @[Router.scala 30:19]
    meshRX_D.clock <= clock
    meshRX_D.reset <= reset
    meshRX_D.io_din <= io_in_D @[Router.scala 31:19]
    meshRX_L.clock <= clock
    meshRX_L.reset <= reset
    meshRX_L.io_din <= io_in_L @[Router.scala 32:19]
    meshRX_R.clock <= clock
    meshRX_R.reset <= reset
    meshRX_R.io_din <= io_in_R @[Router.scala 33:19]
    meshTX_U.clock <= clock
    meshTX_U.reset <= reset
    meshTX_D.clock <= clock
    meshTX_D.reset <= reset
    meshTX_L.clock <= clock
    meshTX_L.reset <= reset
    meshTX_R.clock <= clock
    meshTX_R.reset <= reset
    printf(clock, and(and(UInt<1>("h1"), _T_1), UInt<1>("h1")), "data into router N port is %x\n", io_out_U) @[Router.scala 46:9]
