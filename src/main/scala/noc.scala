package noc

import chisel3._
import chisel3.Driver
import chisel3.experimental._
import router.{Router}

class noc extends MultiIOModule {
  val io = IO(new Bundle{
    val size = 32
  })

  val router1 = Module(new Router())
  val router2 = Module(new Router())
  val router3 = Module(new Router())
  val router4 = Module(new Router())

 // val RX_in = WireInit(0.U(io.size.W))
  router1.io.in_U := router3.io.out_D
  router1.io.in_D := router3.io.out_U
  router1.io.in_L := router2.io.out_R
  router1.io.in_R := router2.io.out_L

  router2.io.in_U := router4.io.out_D
  router2.io.in_D := router4.io.out_U
  router2.io.in_L := router1.io.out_R
  router2.io.in_R := router1.io.out_L

  router3.io.in_U := router1.io.out_D
  router3.io.in_D := router1.io.out_U
  router3.io.in_L := router4.io.out_R
  router3.io.in_R := router4.io.out_L

  router4.io.in_U := router2.io.out_D
  router4.io.in_D := router2.io.out_U
  router4.io.in_L := router3.io.out_R
  router4.io.in_R := router3.io.out_L

  println("Router data in is %x\n", router1.io.in_U)
}

object noc extends App {
  chisel3.Driver.execute(Array[String](), () => new noc())
}
