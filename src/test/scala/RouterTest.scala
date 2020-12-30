package router

import chisel3._
import chisel3.iotesters._

class RouterTest(dut:Router) extends PeekPokeTester(dut) {
  step(1)
  poke(dut.io.in_U.din, value = 3L) //stavimo 3 na input
  step(1)
  expect(dut.io.in_U.din, 3L)
  step(1)
  expect(dut.io.out_D.dout, 0L)
  step(1)

  step(1)
  poke(dut.io.in_U.read, value=1.B) // upisemo 3 u registar od in_U
  step(1)
  expect(dut.io.in_U.din, 3L)
  step(1)
  poke(dut.io.out_D.write, value=1.B) // posaljemo 3 na izlaz D
  step(1)
  expect(dut.io.out_D.write, 1.B)
  step(1)
  expect(dut.io.out_D.dout, 3L)


  println("Output down is " + peek(dut.io.out_D).toString)
  println("Output up is " + peek(dut.io.out_U).toString)
  println("Output left is " + peek(dut.io.out_L).toString)
  println("Output right is " + peek(dut.io.out_R).toString)



  /*
    step(1)
    poke(dut.io.dummy, value = 1L)
    expect(dut.io.dummy, 0x1L)
    step(1)
    println("dummy input is " + peek(dut.io.dummy).toString)
  */
}

object RouterTest extends App {
  chisel3.iotesters.Driver(() => new Router()) {
    m => new RouterTest(m)
  }
}