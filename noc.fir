;buildInfoPackage: chisel3, version: 3.1.3, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-09-12 19:37:29.007, builtAtMillis: 1536781049007
circuit noc : 
  module noc : 
    input clock : Clock
    input reset : UInt<1>
    output io : {led : UInt<1>}
    
    reg cntReg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[noc.scala 20:23]
    reg blkReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[noc.scala 21:23]
    node _T_12 = add(cntReg, UInt<1>("h01")) @[noc.scala 23:20]
    node _T_13 = tail(_T_12, 1) @[noc.scala 23:20]
    cntReg <= _T_13 @[noc.scala 23:10]
    node _T_14 = eq(cntReg, UInt<25>("h017d783f")) @[noc.scala 24:15]
    when _T_14 : @[noc.scala 24:28]
      cntReg <= UInt<1>("h00") @[noc.scala 25:12]
      node _T_16 = not(blkReg) @[noc.scala 26:15]
      blkReg <= _T_16 @[noc.scala 26:12]
      skip @[noc.scala 24:28]
    io.led <= blkReg @[noc.scala 28:10]
    
