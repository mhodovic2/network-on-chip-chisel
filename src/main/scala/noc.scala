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

  val router1 = Module(new Router())
  val router2 = Module(new Router())
  val router3 = Module(new Router())
  val router4 = Module(new Router())
  val router5 = Module(new Router())
  val router6 = Module(new Router())
  val router7 = Module(new Router())
  val router8 = Module(new Router())
  val router9 = Module(new Router())

  val som = WireInit(0.U(size.W))

 // val RX_in = WireInit(0.U(io.size.W))
 // router1.io.in_U.din := router7.io.out_D.dout
  router1.io.in_U.din := som
  router1.io.in_D.din := router4.io.out_U.dout
  //router1.io.in_L.din := router3.io.out_R.dout
  router1.io.in_L.din := som
  router1.io.in_R.din := router2.io.out_L.dout

  //router2.io.in_U.din := router8.io.out_D.dout
  router2.io.in_U.din := som
  router2.io.in_D.din := router5.io.out_U.dout
  router2.io.in_L.din := router1.io.out_R.dout
  router2.io.in_R.din := router3.io.out_L.dout

  //router3.io.in_U.din := router9.io.out_D.dout
  router3.io.in_U.din := som
  router3.io.in_D.din := router6.io.out_U.dout
  router3.io.in_L.din := router2.io.out_R.dout
  //router3.io.in_R.din := router1.io.out_L.dout
  router3.io.in_R.din := som

  router4.io.in_U.din := router1.io.out_D.dout
  router4.io.in_D.din := router7.io.out_U.dout
  //router4.io.in_L.din := router6.io.out_R.dout
  router4.io.in_L.din := som
  router4.io.in_R.din := router5.io.out_L.dout

  router5.io.in_U.din := router2.io.out_D.dout
  router5.io.in_D.din := router8.io.out_U.dout
  router5.io.in_L.din := router4.io.out_R.dout
  router5.io.in_R.din := router6.io.out_L.dout

  router6.io.in_U.din := router3.io.out_D.dout
  router6.io.in_D.din := router9.io.out_U.dout
  router6.io.in_L.din := router5.io.out_R.dout
  //router6.io.in_R.din := router4.io.out_L.dout
  router6.io.in_R.din := som

  router7.io.in_U.din := router4.io.out_D.dout
  //router7.io.in_D.din := router1.io.out_U.dout
  router7.io.in_D.din := som
  //router7.io.in_L.din := router9.io.out_R.dout
  router7.io.in_L.din := som
  router7.io.in_R.din := router8.io.out_L.dout

  router8.io.in_U.din := router5.io.out_D.dout
  //router8.io.in_D.din := router2.io.out_U.dout
  router8.io.in_D.din := som
  router8.io.in_L.din := router7.io.out_R.dout
  router8.io.in_R.din := router9.io.out_L.dout

  router9.io.in_U.din := router6.io.out_D.dout
  //router9.io.in_D.din := router3.io.out_U.dout
  router9.io.in_D.din := som
  router9.io.in_L.din := router8.io.out_R.dout
  //router9.io.in_R.din := router7.io.out_L.dout
  router9.io.in_R.din := som

  //dsf


  router1.io.in_U.read := router7.io.out_D.write
  router1.io.in_D.read := router4.io.out_U.write
  router1.io.in_L.read := router3.io.out_R.write
  router1.io.in_R.read := router2.io.out_L.write

  router2.io.in_U.read := router8.io.out_D.write
  router2.io.in_D.read := router5.io.out_U.write
  router2.io.in_L.read := router1.io.out_R.write
  router2.io.in_R.read := router3.io.out_L.write

  router3.io.in_U.read := router9.io.out_D.write
  router3.io.in_D.read := router6.io.out_U.write
  router3.io.in_L.read := router2.io.out_R.write
  router3.io.in_R.read := router1.io.out_L.write

  router4.io.in_U.read := router1.io.out_D.write
  router4.io.in_D.read := router7.io.out_U.write
  router4.io.in_L.read := router6.io.out_R.write
  router4.io.in_R.read := router5.io.out_L.write

  router5.io.in_U.read := router2.io.out_D.write
  router5.io.in_D.read := router8.io.out_U.write
  router5.io.in_L.read := router4.io.out_R.write
  router5.io.in_R.read := router6.io.out_L.write

  router6.io.in_U.read := router3.io.out_D.write
  router6.io.in_D.read := router9.io.out_U.write
  router6.io.in_L.read := router5.io.out_R.write
  router6.io.in_R.read := router4.io.out_L.write

  router7.io.in_U.read := router4.io.out_D.write
  router7.io.in_D.read := router1.io.out_U.write
  router7.io.in_L.read := router9.io.out_R.write
  router7.io.in_R.read := router8.io.out_L.write

  router8.io.in_U.read := router5.io.out_D.write
  router8.io.in_D.read := router2.io.out_U.write
  router8.io.in_L.read := router7.io.out_R.write
  router8.io.in_R.read := router9.io.out_L.write

  router9.io.in_U.read := router6.io.out_D.write
  router9.io.in_D.read := router3.io.out_U.write
  router9.io.in_L.read := router8.io.out_R.write
  router9.io.in_R.read := router7.io.out_L.write

  println("Router data in is %x\n", router1.io.in_U)
}

object noc extends App {
  chisel3.Driver.execute(Array[String](), () => new noc())
}
