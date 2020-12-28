package RX
import chisel3._
import chisel3.Driver

class MeshRX extends Module{
  val io = IO(new Bundle {
    val size = 32
    val din = Input(UInt(size.W))
    val dout = Output(UInt(size.W))
  })

  val RX_in = WireInit(0.U(io.size.W))
  RX_in := io.din
  io.dout := RX_in

  //val input = WireInit(0.U(io.size.W))
  //input := io.din
  //io.din := 0.U(io.size.W)
  //io.din := 0.U(io.size.W)
  //io.dout := io.din
  //printf("Print during simulation: Input is %d\n", io.din)

}
/**
object noc extends App {
  chisel3.Driver.execute(Array[String](), () => new MeshRX())
}**/