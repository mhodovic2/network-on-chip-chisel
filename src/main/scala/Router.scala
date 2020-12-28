package router
import chisel3.experimental._
import chisel3._
import RX.{MeshRX}

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

    //val meshTX_U = Module(new MeshTX())
    //val meshTX_D = Module(new MeshTX())
    //val meshTX_L = Module(new MeshTX())
    //val meshTX_R = Module(new MeshTX())

  })

  val meshRX_U = Module(new MeshRX())
  val meshRX_D = Module(new MeshRX())
  val meshRX_L = Module(new MeshRX())
  val meshRX_R = Module(new MeshRX())

  val RX_in = WireInit(0.U(io.size.W))

  //connect
  meshRX_U.io.din := io.in_U
  meshRX_D.io.din := io.in_U
  meshRX_L.io.din := io.in_U
  meshRX_R.io.din := io.in_U

  RX_in := io.in_U
  RX_in := io.in_D
  RX_in := io.in_L
  RX_in := io.in_R

  io.out_U := meshRX_U.io.dout
  io.out_D := meshRX_D.io.dout
  io.out_L := meshRX_L.io.dout
  io.out_R := meshRX_R.io.dout

  io.out_U := RX_in
  io.out_D := RX_in
  io.out_L := RX_in
  io.out_R := RX_in


  /*
  meshRX_U.RX_out := nula
  meshRX_D.RX_out := nula
  meshRX_L.RX_out := nula
  meshRX_R.RX_out := nula*/
  /*
  val meshRX_U = WireInit(0.U(size.W))
  val meshRX_D = WireInit(0.U(size.W))
  val meshRX_L = WireInit(0.U(size.W))
  val meshRX_R = WireInit(0.U(size.W))

  val meshTX_U = WireInit(0.U(size.W))
  val meshTX_D = WireInit(0.U(size.W))
  val meshTX_L = WireInit(0.U(size.W))
  val meshTX_R = WireInit(0.U(size.W))*/
  /*
  io.meshRX_U.RX_out := meshRX_U
  io.meshRX_D.RX_out := meshRX_D
  io.meshRX_L.RX_out := meshRX_L
  io.meshRX_R.RX_out := meshRX_R

  io.meshRX_U.RX_in := meshTX_U
  io.meshRX_D.RX_in := meshTX_D
  io.meshRX_L.RX_in := meshTX_L
  io.meshRX_R.RX_in := meshTX_R*/

  //meshRX_D := io.meshRX_D.io.din
  //meshRX_U := io.meshRX_U.io.din
  //meshRX_L := io.meshRX_L.io.din
  //meshRX_R := io.meshRX_R.io.din

  //meshTX_D := io.meshTX_D.io.dout
  //meshTX_U := io.meshTX_U.io.dout
  //meshTX_L := io.meshTX_L.io.dout
  //meshTX_R := io.meshTX_R.io.dout

  //meshTX_U.io.dout := WireInit(0.U(size.W))
  //meshTX_D.io.dout := WireInit(0.U(size.W))
  //meshTX_L.io.dout := WireInit(0.U(size.W))
  //meshTX_R.io.dout := WireInit(0.U(size.W))

  printf("data into router N port is %x\n",io.out_U)
}
/*
object noc extends App {
  chisel3.Driver.execute(Array[String](), () => new Router())
}*/
