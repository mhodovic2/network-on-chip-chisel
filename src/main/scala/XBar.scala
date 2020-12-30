import chisel3._

class XBar(size : Int) extends Module{
  val io = IO(new Bundle{
    val xbar_sele = Input(UInt(4.W))
    val xbar_data_in = Input(UInt(size.W))
    val xbar_data_out_N = Output(UInt(size.W))
    val xbar_data_out_S = Output(UInt(size.W))
    val xbar_data_out_E = Output(UInt(size.W))
    val xbar_data_out_W = Output(UInt(size.W))
    //val xbar_data_out_L = Output(UInt(size.W))

  })
  val seleReg = WireInit(0.U(4.W))
  val dataReg = WireInit(0.U(size.W))
  //val xbar_data_out_L = WireInit(0.U(size.W))
  val xbar_data_out_N = WireInit(0.U(size.W))
  val xbar_data_out_E = WireInit(0.U(size.W))
  val xbar_data_out_S = WireInit(0.U(size.W))
  val xbar_data_out_W = WireInit(0.U(size.W))
  io.xbar_data_out_E := xbar_data_out_E
  io.xbar_data_out_S := xbar_data_out_S
  io.xbar_data_out_W := xbar_data_out_W
  io.xbar_data_out_N := xbar_data_out_N
  //io.xbar_data_out_L := xbar_data_out_L

  dataReg := io.xbar_data_in
  seleReg := io.xbar_sele

  when(seleReg === "b0001".U){
    xbar_data_out_N :=  dataReg
  }.elsewhen(seleReg === "b0010".U){
    xbar_data_out_S :=  dataReg
  }.elsewhen(seleReg === "b0100".U){
    xbar_data_out_W :=  dataReg
  }.elsewhen(seleReg === "b1000".U){
    xbar_data_out_E :=  dataReg
  }

}

