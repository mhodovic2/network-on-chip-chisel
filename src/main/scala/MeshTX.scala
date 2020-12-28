package TX_
import chisel3._
import chisel3.Driver


class MeshTX extends Module{
  val io = IO(new Bundle {
    val size = 32
    val dout = Output(UInt(size.W))
    val din = Input(UInt(size.W))
  })

  //ch.input := 0.U(4.W)
  //val output = 0.U(io.size.W)
  //output := io.dout

  val registar = WireInit( UInt ())
  registar := io.din
  io.dout := registar
  printf("data into router N port is %x\n",io.dout)


}
/**
object MeshTX extends App {
  chisel3.Driver.execute(Array[String](), () => new MeshTX())
}**/