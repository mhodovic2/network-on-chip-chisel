package noc

import chisel3._
import chisel3.Driver
import chisel3.experimental._
import router.{Router}

class noc extends MultiIOModule {
  val io = IO(new Bundle{
    val size = 32
  })
  val size = 32
  val som = WireInit(0.U(size.W))

  val router1 = Module(new Router())
  val router2 = Module(new Router())
  val router3 = Module(new Router())
  val router4 = Module(new Router())

  router1.io.x := 0.U;
  router1.io.y := 0.U;

  router2.io.x := 0.U;
  router2.io.y := 1.U;

  router3.io.x := 1.U;
  router3.io.y := 0.U;

  router4.io.x := 1.U;
  router4.io.y := 1.U;

  router1.io.in_U.din := router3.io.out_D.dout
  router1.io.in_D.din := router3.io.out_U.dout
  router1.io.in_L.din := router2.io.out_R.dout
  router1.io.in_R.din := router2.io.out_L.dout

  router2.io.in_U.din := router4.io.out_D.dout
  router2.io.in_D.din := router4.io.out_U.dout
  router2.io.in_L.din := router1.io.out_R.dout
  router2.io.in_R.din := router1.io.out_L.dout

  router3.io.in_U.din := router1.io.out_D.dout
  router3.io.in_D.din := router1.io.out_U.dout
  router3.io.in_L.din := router4.io.out_R.dout
  router3.io.in_R.din := router4.io.out_L.dout

  router4.io.in_U.din := router2.io.out_D.dout
  router4.io.in_D.din := router2.io.out_U.dout
  router4.io.in_L.din := router3.io.out_R.dout
  router4.io.in_R.din := router3.io.out_L.dout



  //dsf

  router1.io.in_U.read := router3.io.out_D.write
  router1.io.in_D.read := router3.io.out_U.write
  router1.io.in_L.read := router2.io.out_R.write
  router1.io.in_R.read := router2.io.out_L.write

  router2.io.in_U.read := router4.io.out_D.write
  router2.io.in_D.read := router4.io.out_U.write
  router2.io.in_L.read := router1.io.out_R.write
  router2.io.in_R.read := router1.io.out_L.write

  router3.io.in_U.read := router1.io.out_D.write
  router3.io.in_D.read := router1.io.out_U.write
  router3.io.in_L.read := router4.io.out_R.write
  router3.io.in_R.read := router4.io.out_L.write

  router4.io.in_U.read := router2.io.out_D.write
  router4.io.in_D.read := router2.io.out_U.write
  router4.io.in_L.read := router3.io.out_R.write
  router4.io.in_R.read := router3.io.out_L.write

  //kao CPU
  router1.io.in_CPU.din := som
  router1.io.in_CPU.read := som
  router2.io.in_CPU.din := som
  router2.io.in_CPU.read := som
  router3.io.in_CPU.din := som
  router3.io.in_CPU.read := som
  router4.io.in_CPU.din := som
  router4.io.in_CPU.read := som

}

object noc extends App {
  chisel3.Driver.execute(Array[String](), () => new noc())
}
