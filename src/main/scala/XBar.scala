package xbar

import chisel3._

class XBar(size : Int) extends Module{
  val io = IO(new Bundle{
    val xbar_sele = Input(UInt(4.W))
    val xbar_data_in = Input(UInt(size.W))
    val xbar_data_out_U = Output(UInt(size.W))
    val xbar_data_out_D = Output(UInt(size.W))
    val xbar_data_out_R = Output(UInt(size.W))
    val xbar_data_out_L = Output(UInt(size.W))
    //val xbar_data_out_L = Output(UInt(size.W))

  })
  val seleReg = WireInit(0.U(4.W))
  val dataReg = WireInit(0.U(size.W))
  //val xbar_data_out_L = WireInit(0.U(size.W))
  val xbar_data_out_U = WireInit(0.U(size.W))
  val xbar_data_out_R = WireInit(0.U(size.W))
  val xbar_data_out_D = WireInit(0.U(size.W))
  val xbar_data_out_L = WireInit(0.U(size.W))
  io.xbar_data_out_R := xbar_data_out_R
  io.xbar_data_out_D := xbar_data_out_D
  io.xbar_data_out_L := xbar_data_out_L
  io.xbar_data_out_U := xbar_data_out_U
  //io.xbar_data_out_L := xbar_data_out_L

  dataReg := io.xbar_data_in
  seleReg := io.xbar_sele

  when(seleReg === "b0001".U){
    xbar_data_out_U :=  dataReg
  }.elsewhen(seleReg === "b0010".U){
    xbar_data_out_D :=  dataReg
  }.elsewhen(seleReg === "b0100".U){
    xbar_data_out_L :=  dataReg
  }.elsewhen(seleReg === "b1000".U){
    xbar_data_out_R :=  dataReg
  }

}

