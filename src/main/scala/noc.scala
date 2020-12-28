/*
 * This code is a minimal hardware described in Chisel.
 *
 * Blinking LED: the FPGA version of Hello World
 */

import chisel3._
import chisel3.Driver
import chisel3.experimental._
import router.{Router}
import RX.{MeshRX}

/**
 * The blinking LED component.
 */
class noc extends MultiIOModule {
  val io = IO(new Bundle{
    //val Router1 = Module(new Router())
    val size = 32

  })

  //val noviRouter = new Router
  val router1 = Module(new Router())

  //val router2 = Module(new Router())
  val RX_in = WireInit(0.U(io.size.W))
  router1.io.in_U := RX_in
  router1.io.in_D := RX_in
  router1.io.in_L := RX_in
  router1.io.in_R := RX_in

  //router1.meshRX_D.io.din <> router2.meshTX_U.io.dout

  //router1.meshRX_D.io.din := WireInit(0.U(size.W))
  //router1.meshRX_U.io.din := WireInit(0.U(size.W))
  //router1.meshRX_L.io.din := WireInit(0.U(size.W))
  //router1.meshRX_R.io.din := WireInit(0.U(size.W))

  //router1.meshTX_U.io.dout := WireInit(0.U(size.W))
  //router1.meshTX_D.io.dout := WireInit(0.U(size.W))
  //router1.meshTX_L.io.dout := WireInit(0.U(size.W))
  //router1.meshTX_R.io.dout := WireInit(0.U(size.W))

  //router2.meshRX_D.io.din := router1.meshTX_U.io.dout

  //val Router1 = Module(new Router())
  //val Router2 = Module(new Router())

}


 //An object extending App to generate the Verilog code.

object noc extends App {
  chisel3.Driver.execute(Array[String](), () => new noc())
}
