package router
import chisel3.experimental._
import chisel3._
import chisel3.util.{Cat, Enum, is, switch}
import org.scalacheck.Prop.False


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


class Router(/*x:Int,y:Int*/) extends MultiIOModule{
  val io = IO(new Bundle{
    val size = 32

    val in_U = new RX()
    val in_D = new RX()
    val in_L = new RX()
    val in_R = new RX()
    val in_CPU = new RX()

    val out_U = new TX()
    val out_D = new TX()
    val out_L = new TX()
    val out_R = new TX()
    val out_CPU = new TX()

    val x = Input(UInt(2.W))
    val y = Input(UInt(2.W))

  })

  val size = 32

  val som = RegInit(0.B)

  val out_U_dout = WireInit(0.U(size.W))
  val out_D_dout = WireInit(0.U(size.W))
  val out_L_dout = WireInit(0.U(size.W))
  val out_R_dout = WireInit(0.U(size.W))
  val out_CPU_dout = WireInit(0.U(size.W))

  io.out_U.dout := out_U_dout
  io.out_D.dout := out_D_dout
  io.out_L.dout := out_L_dout
  io.out_R.dout := out_R_dout
  io.out_CPU.dout := out_CPU_dout

  io.out_U.write := 0.U
  io.out_D.write := 0.U
  io.out_L.write := 0.U
  io.out_R.write := 0.U
  io.out_CPU.write := 0.U

  val dataReg = WireInit(0.U(32))
  val dataReg_U = RegInit(0.U(size.W))
  val dataReg_D = RegInit(0.U(size.W))
  val dataReg_L = RegInit(0.U(size.W))
  val dataReg_R = RegInit(0.U(size.W))
  val dataReg_CPU = RegInit(0.U(size.W))

  io.out_D.dout := dataReg_U
  val stateReg = RegInit(0.B)

  when(stateReg === 0.B) {
    when (io.in_U.read) {
      stateReg := 1.B
      dataReg_U := io.in_U.din
      io.out_D.write := 1.U
      //
    } .elsewhen(io.in_D.read) {
      stateReg := 1.B
      dataReg_D := io.in_D.din
    }.elsewhen(io.in_L.read) {
      stateReg := 1.B
      dataReg_L := io.in_L.din
    }.elsewhen(io.in_R.read) {
      stateReg := 1.B
      dataReg_R := io.in_R.din
    }
  } .elsewhen(stateReg === 1.B) {
    when(io.out_U.write) {
      out_U_dout := dataReg_U
      stateReg := 0.B
    } .elsewhen(io.out_D.write) {
      io.out_D.dout := dataReg_U
      stateReg := 0.B
    } .elsewhen(io.out_L.write) {
      out_L_dout := dataReg_L
      stateReg := 0.B
    } .elsewhen(io.out_R.write) {
      out_R_dout := dataReg_R
      stateReg := 0.B
    }
  }


/*
    when (io.in_U.read) {
      dataReg_U := io.in_U.din
      val destination_x = dataReg_U(1,0)
      val destination_y = dataReg_U(3,2)

      when(destination_x > io.x) {
        io.out_R.write := 1.U
      } .elsewhen(destination_x < io.x) {
        io.out_L.write := 1.U
      } .otherwise {
        when (destination_y > io.y) {
          io.out_D.write := 1.U
        } .elsewhen(destination_y < io.y) {
          io.out_U.write := 1.U
        } .otherwise {
          io.out_CPU.write := 1.U
        }
      }

      when(io.out_D.write){
        io.out_D.dout := dataReg_U
      }.elsewhen(io.out_L.write){
        io.out_L.dout := dataReg_U
      }.elsewhen(io.out_R.write) {
        io.out_R.dout := dataReg_U
      }.elsewhen(io.out_CPU.write) {
        io.out_CPU.dout := dataReg_CPU
      }



    } .elsewhen(io.in_D.read) {
      dataReg_D := io.in_D.din
      val destination_x = dataReg_D(31,30)
      val destination_y = dataReg_D(29,28)
      when(destination_x > io.x) {
        io.out_R.write := 1.U
      } .elsewhen(destination_x < io.x) {
        io.out_L.write := 1.U
      } .otherwise {
        when (destination_y > io.y) {
          io.out_D.write := 1.U
        } .elsewhen(destination_y < io.y) {
          io.out_U.write := 1.U
        }.otherwise {
          io.out_CPU.write := 1.U
        }
      }

      when(io.out_U.write){
        io.out_U.dout := dataReg_D
      }.elsewhen(io.out_L.write){
        io.out_L.dout := dataReg_D
      }.elsewhen(io.out_R.write) {
        io.out_R.dout := dataReg_D
      }.elsewhen(io.out_CPU.write) {
        io.out_CPU.dout := dataReg_CPU
      }



    }.elsewhen(io.in_L.read) {
      dataReg_L := io.in_L.din
      val destination_x = dataReg_L(31,30)
      val destination_y = dataReg_L(29,28)

      when(destination_x > io.x) {
        io.out_R.write := 1.U
      } .elsewhen(destination_x < io.x) {
        io.out_L.write := 1.U
      } .otherwise {
        when (destination_y > io.y) {
          io.out_D.write := 1.U
        } .elsewhen(destination_y < io.y) {
          io.out_U.write := 1.U
        }.otherwise {
          io.out_CPU.write := 1.U
        }
      }
      when(io.out_D.write){
        io.out_D.dout := dataReg_L
      }.elsewhen(io.out_U.write){
        io.out_U.dout := dataReg_L
      }.elsewhen(io.out_R.write) {
        io.out_R.dout := dataReg_L
      }.elsewhen(io.out_CPU.write) {
        io.out_CPU.dout := dataReg_CPU
      }



    }.elsewhen(io.in_R.read) {
      dataReg_R := io.in_R.din
      val destination_x = dataReg_R(31,30)
      val destination_y = dataReg_R(29,28)

      when(destination_x > io.x) {
        io.out_R.write := 1.U
      } .elsewhen(destination_x < io.x) {
        io.out_L.write := 1.U
      } .otherwise {
        when (destination_y > io.y) {
          io.out_D.write := 1.U
        } .elsewhen(destination_y < io.y) {
          io.out_U.write := 1.U
        } .otherwise {
          io.out_CPU.write := 1.U
        }
      }
      when(io.out_D.write){
        io.out_D.dout := dataReg_R
      }.elsewhen(io.out_L.write){
        io.out_L.dout := dataReg_R
      }.elsewhen(io.out_U.write) {
        io.out_U.dout := dataReg_R
      }.elsewhen(io.out_CPU.write) {
        io.out_CPU.dout := dataReg_CPU
      }



    }.elsewhen(io.in_CPU.read) {
      dataReg_CPU := io.in_CPU.din
      val destination_x = dataReg_CPU(31,30)
      val destination_y = dataReg_CPU(29,28)

      when(destination_x > io.x) {
        io.out_R.write := 1.U
      } .elsewhen(destination_x < io.x) {
        io.out_L.write := 1.U
      } .otherwise {
        when (destination_y > io.y) {
          io.out_D.write := 1.U
        } .elsewhen(destination_y < io.y) {
          io.out_U.write := 1.U
        } .otherwise {
          io.out_CPU.write := 1.U
        }
      }
      when(io.out_D.write){
        io.out_D.dout := dataReg_CPU
      }.elsewhen(io.out_L.write){
        io.out_L.dout := dataReg_CPU
      }.elsewhen(io.out_U.write) {
        io.out_U.dout := dataReg_CPU
      }.elsewhen(io.out_CPU.write) {
        io.out_CPU.dout := dataReg_CPU
      }
    }
*/
}