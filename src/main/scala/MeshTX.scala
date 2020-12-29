package TX
import chisel3._
import chisel3.Driver


class MeshTX extends Module{
  val io = IO(new Bundle {
    val size = 32
    val dout = Output(UInt(size.W))
  })


  val registar = WireInit(0.U(io.size.W))
  io.dout := registar

  //println("data into router N port is %x\n",io.dout)

}
