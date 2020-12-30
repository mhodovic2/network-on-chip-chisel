package TX
import chisel3._
import chisel3.Driver


class MeshTX() extends Bundle{
    val size = 32
    val dout = Output(UInt(size.W))
    //val write = Output(Bool())
}
