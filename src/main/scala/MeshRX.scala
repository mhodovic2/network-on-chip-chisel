package RX
import chisel3._
import chisel3.Driver

class MeshRX extends Module{
  val io = IO(new Bundle {
    val size = 32
    val din = Input(UInt(size.W))
  })

}
