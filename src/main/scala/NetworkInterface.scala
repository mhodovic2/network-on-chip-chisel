package networkinterface

import chisel3._
import router.{RX, TX}

class NI2Router_out extends Bundle {
  val size = 32
  val valid_out = Output(Bool())
  val ready_in = Input(Bool())
  val dout = Output(UInt(size.W))

}

class NetworkInterface() extends MultiIOModule {
  val io = IO(new Bundle() {
    val ni_out = new NI2Router_out()
  })
  //val NI2Ocp_In = new TX()
  //val NI2Ocp_Out = new RX()
  //val NI2Router_Out = new TX()
  //val NI2Router_In = new RX()
  io.ni_out.dout := 0.U
  io.ni_out.valid_out := 0.B
  //ni_out.dout := 0.U
  //ni_out.valid_out := 0.B
}
