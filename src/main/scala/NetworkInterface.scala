package networkinterface

import chisel3._
import router.{RX, TX}

class NetworkInterface() extends Bundle{
  //val NI2Ocp_In = new TX()
  //val NI2Ocp_Out = new RX()
  val NI2Router_Out = new TX()
  val NI2Router_In = new RX()

  NI2Router_Out.dout := WireInit(0.U)
  NI2Router_Out.valid_out := WireInit(0.U)

  NI2Router_In.ready_out := WireInit(0.U)
}
