import chisel3._

class Router extends Module{
  val io = IO(new Bundle{
    val meshRX_U = new MeshRX
    val meshRX_D = new MeshRX
    val meshRX_L = new MeshRX
    val meshRX_R = new MeshRX
    val meshTX_U = new MeshTX
    val meshTX_D = new MeshTX
    val meshTX_L = new MeshTX
    val meshTX_R = new MeshTX
  })
}