import chisel3._

class MeshTX extends Module{
  val io = IO(new Bundle {
    val led = Output(UInt(1.W))
  })
}