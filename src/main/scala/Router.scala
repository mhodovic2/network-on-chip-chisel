package router
import chisel3._

class TX() extends Bundle{
  val size = 32
  val valid_out = Output(Bool())
  val ready_in = Input(Bool())
  val dout = Output(UInt(size.W))
}

class RX() extends Bundle{
  val size = 32
  val valid_in = Input(Bool())
  val ready_out = Output(Bool())
  val din = Input(UInt(size.W))
}


class Router() extends MultiIOModule{
  val io = IO(new Bundle{
    val size = 32

    val in_N = new RX()
    val in_S = new RX()
    val in_W = new RX()
    val in_E = new RX()
    val in_NI = new RX()

    val out_N = new TX()
    val out_S = new TX()
    val out_W = new TX()
    val out_E = new TX()
    val out_NI = new TX()

    val x = Input(UInt(2.W))
    val y = Input(UInt(2.W))

  })

  val size = 32

  val som = RegInit(0.B)

  val out_N_dout = WireInit(0.U(size.W))
  val out_S_dout = WireInit(0.U(size.W))
  val out_W_dout = WireInit(0.U(size.W))
  val out_E_dout = WireInit(0.U(size.W))
  val out_NI_dout = WireInit(0.U(size.W))

  io.out_N.dout := out_N_dout
  io.out_S.dout := out_S_dout
  io.out_W.dout := out_W_dout
  io.out_E.dout := out_E_dout
  io.out_NI.dout := out_NI_dout

  io.out_N.valid_out := 0.U
  io.out_S.valid_out := 0.U
  io.out_W.valid_out := 0.U
  io.out_E.valid_out := 0.U
  io.out_NI.valid_out := 0.U
  
  io.in_N.ready_out := 0.U
  io.in_S.ready_out := 0.U
  io.in_W.ready_out := 0.U
  io.in_E.ready_out := 0.U
  io.in_NI.ready_out := 0.U

  val dataReg = RegInit(0.U(size.W))
  val dataReg_N = RegInit(0.U(size.W))
  val dataReg_S = RegInit(0.U(size.W))
  val dataReg_W = RegInit(0.U(size.W))
  val dataReg_E = RegInit(0.U(size.W))
  val dataReg_NI = RegInit(0.U(size.W))

  val stateReg = RegInit(0.B)

  val destination_y = dataReg(1,0)
  val destination_x = dataReg(3,2)

  printf("Dest_x is %d, a dest_y is %d\n", destination_x, destination_y)
  printf("Data Registar of router (%d,%d) is: %d\n", io.x, io.y, dataReg)
  printf("State registar of router (%d,%d) is: %d\n", io.x, io.y, stateReg)

  when(stateReg === 0.B) {
    io.out_N.valid_out := 0.U
    io.out_N.dout := 0.U
    io.out_S.valid_out := 0.U
    io.out_S.dout := 0.U
    io.out_W.valid_out := 0.U
    io.out_W.dout := 0.U
    io.out_E.valid_out := 0.U
    io.out_E.dout := 0.U
    io.out_NI.valid_out := 0.U
    io.out_NI.dout := 0.U

    when (io.in_N.valid_in) {
      io.in_N.ready_out := 1.U
      stateReg := 1.B
      dataReg_N := io.in_N.din
      dataReg := io.in_N.din
    } .elsewhen(io.in_S.valid_in) {
      io.in_S.ready_out := 1.U
      stateReg := 1.B
      dataReg_S := io.in_S.din
      dataReg := io.in_S.din
    }.elsewhen(io.in_W.valid_in) {
      io.in_W.ready_out := 1.U
      stateReg := 1.B
      dataReg_W := io.in_W.din
      dataReg := io.in_W.din
    }.elsewhen(io.in_E.valid_in) {
      io.in_E.ready_out := 1.U
      stateReg := 1.B
      dataReg_E := io.in_E.din
      dataReg := io.in_E.din
    }.elsewhen(io.in_NI.valid_in) {
      io.in_NI.ready_out := 1.U
      stateReg := 1.B
      dataReg_NI := io.in_NI.din
      dataReg := io.in_NI.din
    }

  } .elsewhen(stateReg === 1.B) {

    when (destination_y > io.y) {
      printf("uso x\n")
      io.out_E.valid_out := 1.U
    } .elsewhen(destination_y < io.y) {
      io.out_W.valid_out := 1.U
    } .otherwise {
      printf("uso y\n")
      when (destination_x > io.x) {
        io.out_S.valid_out := 1.U
      } .elsewhen(destination_x < io.x) {
        io.out_N.valid_out := 1.U
      } .otherwise {
        printf("uso NI\n")
        io.out_NI.valid_out := 1.U
      }
    }

    when(io.out_N.valid_out) {
      when(io.out_N.ready_in) {
        out_N_dout := dataReg
        stateReg := 0.B
        dataReg := 0.U
      }
    } .elsewhen(io.out_S.valid_out) {
      when(io.out_S.ready_in) {
        io.out_S.dout := dataReg
        stateReg := 0.B
        dataReg := 0.U
      }
    } .elsewhen(io.out_W.valid_out) {
      when(io.out_W.ready_in) {
        io.out_W.dout := dataReg
        stateReg := 0.B
        dataReg := 0.U
      }
    } .elsewhen(io.out_E.valid_out) {
      when(io.out_E.ready_in) {
        out_E_dout := dataReg
        stateReg := 0.B
        dataReg := 0.U
      }
    } .elsewhen(io.out_NI.valid_out) {
      when(io.out_NI.ready_in) {
        out_NI_dout := dataReg/*(31,4)*/
        stateReg := 0.B
        dataReg := 0.U
      }
    }
  }

  printf("!!!!!!!!\n")


}