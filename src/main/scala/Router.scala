package router
import chisel3.experimental._
import chisel3._
import RX.{MeshRX}
import TX.MeshTX

class Router extends MultiIOModule{
  val io = IO(new Bundle{
    val size = 32

    val in_U = Input (UInt(size.W))
    val in_D = Input (UInt(size.W))
    val in_L = Input (UInt(size.W))
    val in_R = Input (UInt(size.W))

    val out_U = Output (UInt(size.W))
    val out_D = Output (UInt(size.W))
    val out_L = Output (UInt(size.W))
    val out_R = Output (UInt(size.W))
  })

  val meshRX_U = Module(new MeshRX())
  val meshRX_D = Module(new MeshRX())
  val meshRX_L = Module(new MeshRX())
  val meshRX_R = Module(new MeshRX())

  //val RX_in = WireInit(0.U(io.size.W))

  //connect inputs
  meshRX_U.io.din := io.in_U
  meshRX_D.io.din := io.in_D
  meshRX_L.io.din := io.in_L
  meshRX_R.io.din := io.in_R

  val meshTX_U = Module(new MeshTX())
  val meshTX_D = Module(new MeshTX())
  val meshTX_L = Module(new MeshTX())
  val meshTX_R = Module(new MeshTX())

  //connect outputs
  io.out_U := meshTX_U.io.dout
  io.out_D := meshTX_D.io.dout
  io.out_L := meshTX_L.io.dout
  io.out_R := meshTX_R.io.dout

  printf("data into router N port is %x\n",io.out_U)
}
