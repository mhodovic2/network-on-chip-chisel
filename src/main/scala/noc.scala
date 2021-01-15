package noc

import chisel3._
import chisel3.Driver
import chisel3.experimental._
import router.{Router}

class noc extends MultiIOModule {
  val io = IO(new Bundle{
    val cpu_din = Input(UInt(32.W))
    val cpu_valid_in = Input(Bool())
    val cpu_ready_in = Input(Bool())
    val size = 32

  })
  val size = 32
  val som = WireInit(0.U(size.W))

  val router1 = Module(new Router())
  val router2 = Module(new Router())
  val router3 = Module(new Router())
  val router4 = Module(new Router())
  val router5 = Module(new Router())
  val router6 = Module(new Router())
  val router7 = Module(new Router())
  val router8 = Module(new Router())
  val router9 = Module(new Router())

  router1.io.x := 0.U;
  router1.io.y := 0.U;

  router2.io.x := 0.U;
  router2.io.y := 1.U;

  router3.io.x := 0.U;
  router3.io.y := 2.U;

  router4.io.x := 1.U;
  router4.io.y := 0.U;

  router5.io.x := 1.U;
  router5.io.y := 1.U;

  router6.io.x := 1.U;
  router6.io.y := 2.U;

  router7.io.x := 2.U;
  router7.io.y := 0.U;

  router8.io.x := 2.U;
  router8.io.y := 1.U;

  router9.io.x := 2.U;
  router9.io.y := 2.U;

  router1.io.in_N.din := router7.io.out_S.dout
  router1.io.in_S.din := router4.io.out_N.dout
  router1.io.in_W.din := router3.io.out_E.dout
  router1.io.in_E.din := router2.io.out_W.dout

  router2.io.in_N.din := router8.io.out_S.dout
  router2.io.in_S.din := router5.io.out_N.dout
  router2.io.in_W.din := router1.io.out_E.dout
  router2.io.in_E.din := router3.io.out_W.dout

  router3.io.in_N.din := router9.io.out_S.dout
  router3.io.in_S.din := router6.io.out_N.dout
  router3.io.in_W.din := router2.io.out_E.dout
  router3.io.in_E.din := router1.io.out_W.dout

  router4.io.in_N.din := router1.io.out_S.dout
  router4.io.in_S.din := router7.io.out_N.dout
  router4.io.in_W.din := router6.io.out_E.dout
  router4.io.in_E.din := router5.io.out_W.dout

  router5.io.in_N.din := router2.io.out_S.dout
  router5.io.in_S.din := router8.io.out_N.dout
  router5.io.in_W.din := router4.io.out_E.dout
  router5.io.in_E.din := router6.io.out_W.dout

  router6.io.in_N.din := router3.io.out_S.dout
  router6.io.in_S.din := router9.io.out_N.dout
  router6.io.in_W.din := router5.io.out_E.dout
  router6.io.in_E.din := router4.io.out_W.dout

  router7.io.in_N.din := router4.io.out_S.dout
  router7.io.in_S.din := router1.io.out_N.dout
  router7.io.in_W.din := router9.io.out_E.dout
  router7.io.in_E.din := router8.io.out_W.dout

  router8.io.in_N.din := router5.io.out_S.dout
  router8.io.in_S.din := router2.io.out_N.dout
  router8.io.in_W.din := router7.io.out_E.dout
  router8.io.in_E.din := router9.io.out_W.dout

  router9.io.in_N.din := router6.io.out_S.dout
  router9.io.in_S.din := router3.io.out_N.dout
  router9.io.in_W.din := router8.io.out_E.dout
  router9.io.in_E.din := router7.io.out_W.dout



  //Valid signal


  router1.io.in_N.valid_in := router7.io.out_S.valid_out
  router1.io.in_S.valid_in := router4.io.out_N.valid_out
  router1.io.in_W.valid_in := router3.io.out_E.valid_out
  router1.io.in_E.valid_in := router2.io.out_W.valid_out

  router2.io.in_N.valid_in := router8.io.out_S.valid_out
  router2.io.in_S.valid_in := router5.io.out_N.valid_out
  router2.io.in_W.valid_in := router1.io.out_E.valid_out
  router2.io.in_E.valid_in := router3.io.out_W.valid_out

  router3.io.in_N.valid_in := router9.io.out_S.valid_out
  router3.io.in_S.valid_in := router6.io.out_N.valid_out
  router3.io.in_W.valid_in := router2.io.out_E.valid_out
  router3.io.in_E.valid_in := router1.io.out_W.valid_out

  router4.io.in_N.valid_in := router1.io.out_S.valid_out
  router4.io.in_S.valid_in := router7.io.out_N.valid_out
  router4.io.in_W.valid_in := router6.io.out_E.valid_out
  router4.io.in_E.valid_in := router5.io.out_W.valid_out

  router5.io.in_N.valid_in := router2.io.out_S.valid_out
  router5.io.in_S.valid_in := router8.io.out_N.valid_out
  router5.io.in_W.valid_in := router4.io.out_E.valid_out
  router5.io.in_E.valid_in := router6.io.out_W.valid_out

  router6.io.in_N.valid_in := router3.io.out_S.valid_out
  router6.io.in_S.valid_in := router9.io.out_N.valid_out
  router6.io.in_W.valid_in := router5.io.out_E.valid_out
  router6.io.in_E.valid_in := router4.io.out_W.valid_out

  router7.io.in_N.valid_in := router4.io.out_S.valid_out
  router7.io.in_S.valid_in := router1.io.out_N.valid_out
  router7.io.in_W.valid_in := router9.io.out_E.valid_out
  router7.io.in_E.valid_in := router8.io.out_W.valid_out

  router8.io.in_N.valid_in := router5.io.out_S.valid_out
  router8.io.in_S.valid_in := router2.io.out_N.valid_out
  router8.io.in_W.valid_in := router7.io.out_E.valid_out
  router8.io.in_E.valid_in := router9.io.out_W.valid_out

  router9.io.in_N.valid_in := router6.io.out_S.valid_out
  router9.io.in_S.valid_in := router3.io.out_N.valid_out
  router9.io.in_W.valid_in := router8.io.out_E.valid_out
  router9.io.in_E.valid_in := router7.io.out_W.valid_out



  //ready signal

  router1.io.out_N.ready_in := router7.io.in_S.ready_out
  router1.io.out_S.ready_in := router4.io.in_N.ready_out
  router1.io.out_W.ready_in := router3.io.in_E.ready_out
  router1.io.out_E.ready_in := router2.io.in_W.ready_out

  router2.io.out_N.ready_in := router8.io.in_S.ready_out
  router2.io.out_S.ready_in := router5.io.in_N.ready_out
  router2.io.out_W.ready_in := router1.io.in_E.ready_out
  router2.io.out_E.ready_in := router3.io.in_W.ready_out

  router3.io.out_N.ready_in := router9.io.in_S.ready_out
  router3.io.out_S.ready_in := router6.io.in_N.ready_out
  router3.io.out_W.ready_in := router2.io.in_E.ready_out
  router3.io.out_E.ready_in := router1.io.in_W.ready_out

  router4.io.out_N.ready_in := router1.io.in_S.ready_out
  router4.io.out_S.ready_in := router7.io.in_N.ready_out
  router4.io.out_W.ready_in := router6.io.in_E.ready_out
  router4.io.out_E.ready_in := router5.io.in_W.ready_out

  router5.io.out_N.ready_in := router2.io.in_S.ready_out
  router5.io.out_S.ready_in := router8.io.in_N.ready_out
  router5.io.out_W.ready_in := router4.io.in_E.ready_out
  router5.io.out_E.ready_in := router6.io.in_W.ready_out

  router6.io.out_N.ready_in := router3.io.in_S.ready_out
  router6.io.out_S.ready_in := router9.io.in_N.ready_out
  router6.io.out_W.ready_in := router5.io.in_E.ready_out
  router6.io.out_E.ready_in := router4.io.in_W.ready_out

  router7.io.out_N.ready_in := router4.io.in_S.ready_out
  router7.io.out_S.ready_in := router1.io.in_N.ready_out
  router7.io.out_W.ready_in := router9.io.in_E.ready_out
  router7.io.out_E.ready_in := router8.io.in_W.ready_out

  router8.io.out_N.ready_in := router5.io.in_S.ready_out
  router8.io.out_S.ready_in := router2.io.in_N.ready_out
  router8.io.out_W.ready_in := router7.io.in_E.ready_out
  router8.io.out_E.ready_in := router9.io.in_W.ready_out

  router9.io.out_N.ready_in := router6.io.in_S.ready_out
  router9.io.out_S.ready_in := router3.io.in_N.ready_out
  router9.io.out_W.ready_in := router8.io.in_E.ready_out
  router9.io.out_E.ready_in := router7.io.in_W.ready_out



  printf("Router 1 CPU data input is %d\n", router1.io.in_CPU.din )
  printf("Router 1 East data output is %d\n", router1.io.out_E.dout )
  printf("Router 2 West data input is %d\n", router2.io.in_W.din)
  printf("Router 2 South data output is %d\n", router2.io.out_S.dout)
  printf("Router 2 South valid_out output is %d\n", router2.io.out_S.valid_out )
  printf("Router 2 South ready_in input is %d\n", router2.io.out_S.ready_in )


  //printf("Router 4 North data ulaz je %d\n", router4.io.in_N.din )



  //printf("Router 4 CPU dout izlaz je %d\n", router4.io.out_CPU.dout )
  printf("Router 9 CPU dout is %d\n", router9.io.out_CPU.dout )
  printf("---------------------------------------------------\n")
  //printf("Router 4 CPU valid out izlaz je %d\n", router4.io.out_CPU.valid_out )



  //kao CPU
  router1.io.in_CPU.din := io.cpu_din
  router1.io.in_CPU.valid_in := io.cpu_valid_in
  router1.io.out_CPU.ready_in := som

  router2.io.in_CPU.din := som
  router2.io.in_CPU.valid_in := som
  router2.io.out_CPU.ready_in := som

  router3.io.in_CPU.din := som
  router3.io.in_CPU.valid_in := som
  router3.io.out_CPU.ready_in := som

  router4.io.in_CPU.din := som
  router4.io.in_CPU.valid_in := som
  router4.io.out_CPU.ready_in := som

  router5.io.in_CPU.din := som
  router5.io.in_CPU.valid_in := som
  router5.io.out_CPU.ready_in := som

  router6.io.in_CPU.din := som
  router6.io.in_CPU.valid_in := som
  router6.io.out_CPU.ready_in := som

  router7.io.in_CPU.din := som
  router7.io.in_CPU.valid_in := som
  router7.io.out_CPU.ready_in := som

  router8.io.in_CPU.din := som
  router8.io.in_CPU.valid_in := som
  router8.io.out_CPU.ready_in := som

  router9.io.in_CPU.din := som
  router9.io.in_CPU.valid_in := som
  router9.io.out_CPU.ready_in := io.cpu_ready_in



}

object noc extends App {
  chisel3.Driver.execute(Array[String](), () => new noc())
}
