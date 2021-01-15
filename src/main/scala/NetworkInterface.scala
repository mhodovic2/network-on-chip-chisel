package networkinterface

import chisel3._
import router.{RX, TX}

class NetworkInterface() extends Module{
  val io = IO(new Bundle() {
    val NI2Ocp_In = new TX()
    val NI2Ocp_Out = new RX()
    val NI2Router_Out = new RX()
    val NI2Router_In = new TX()
  })
}
