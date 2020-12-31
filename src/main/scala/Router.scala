package router

import chisel3.experimental._
import chisel3._
import chisel3.util.{Cat, Enum, is, switch}
import org.scalacheck.Prop.False
import xbar.XBar


class TX() extends Bundle{
  val size = 32
  val write = Output(Bool())
  val dout = Output(UInt(size.W))
}

class RX() extends Bundle{
  val size = 32
  val read = Input(Bool())
  val din = Input(UInt(size.W))
}


class Router extends MultiIOModule{
  val io = IO(new Bundle{
    val size = 32

    val in_U = new RX()
    val in_D = new RX()
    val in_L = new RX()
    val in_R = new RX()

    val out_U = new TX()
    val out_D = new TX()
    val out_L = new TX()
    val out_R = new TX()
  })

  val size = 32

  val som = RegInit(0.B)

  val out_U_dout = WireInit(0.U(size.W))
  val out_D_dout = WireInit(0.U(size.W))
  val out_L_dout = WireInit(0.U(size.W))
  val out_R_dout = WireInit(0.U(size.W))

  io.out_U.write := 0.U
  io.out_D.write := 0.U
  io.out_L.write := 0.U
  io.out_R.write := 0.U

  //--------------Cross Bar--------------------
  val XBar_U = Module(new XBar(size))
  XBar_U.io.xbar_sele := "b0001".U
  XBar_U.io.xbar_data_in := io.in_D.din | io.in_U.din | io.in_L.din | io.in_R.din
  
  val XBar_D = Module(new XBar(size))
  XBar_D.io.xbar_sele := "b0010".U
  XBar_D.io.xbar_data_in := io.in_D.din | io.in_U.din | io.in_L.din | io.in_R.din

  val XBar_L = Module(new XBar(size))
  XBar_L.io.xbar_sele := "b0100".U
  XBar_L.io.xbar_data_in := io.in_D.din | io.in_U.din | io.in_L.din | io.in_R.din

  val XBar_R = Module(new XBar(size))
  XBar_R.io.xbar_sele := "b1000".U
  XBar_R.io.xbar_data_in := io.in_D.din | io.in_U.din | io.in_L.din | io.in_R.din

  io.out_U.dout := XBar_D.io.xbar_data_out_U | XBar_L.io.xbar_data_out_U | XBar_R.io.xbar_data_out_U
  io.out_D.dout := XBar_U.io.xbar_data_out_D | XBar_L.io.xbar_data_out_D | XBar_R.io.xbar_data_out_D
  io.out_L.dout := XBar_U.io.xbar_data_out_L | XBar_D.io.xbar_data_out_L | XBar_R.io.xbar_data_out_L
  io.out_R.dout := XBar_U.io.xbar_data_out_R | XBar_D.io.xbar_data_out_R | XBar_L.io.xbar_data_out_R

  val empty :: full :: Nil = Enum(2)
  val stateReg = RegInit(empty)

  //val dataReg = WireInit(0.U(32))
  val dataReg_U = RegInit(0.U(size.W))
  val dataReg_D = RegInit(0.U(size.W))
  val dataReg_L = RegInit(0.U(size.W))
  val dataReg_R = RegInit(0.U(size.W))


  when(stateReg === empty) {
    when (io.in_U.read) {
      stateReg === full
      dataReg_U := io.in_U.din
    } .elsewhen(io.in_D.read) {
      stateReg === full
      dataReg_D := io.in_D.din
    }.elsewhen(io.in_L.read) {
      stateReg === full
      dataReg_L := io.in_L.din
    }.elsewhen(io.in_R.read) {
      stateReg === full
      dataReg_R := io.in_R.din
    }
  } .elsewhen(stateReg === full) {
    when(io.out_U.write) {
      out_U_dout := dataReg_U
      stateReg := empty
    } .elsewhen(io.out_D.write) {
      out_D_dout := dataReg_D
      stateReg := empty
    } .elsewhen(io.out_L.write) {
      out_L_dout := dataReg_L
      stateReg := empty
    } .elsewhen(io.out_R.write) {
      out_R_dout := dataReg_R
      stateReg := empty
    }
  }

  //printf("data into router N port is %x\n",io.out_U)
}
