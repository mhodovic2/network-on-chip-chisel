package router

import chisel3._
import chisel3.iotesters._

class RouterTest(dut:Router) extends PeekPokeTester(dut) {
  poke(dut.io.in_N.valid_in, value=0.B) //if we don't do this, we can't be sure if it is 0 or 1
  poke(dut.io.in_S.valid_in, value=0.B)
  poke(dut.io.in_W.valid_in, value=0.B)
  poke(dut.io.in_E.valid_in, value=0.B)
  poke(dut.io.in_NI.valid_in, value=0.B)
  poke(dut.io.out_N.ready_in, value=0.B) //if we don't do this, we can't be sure if it is 0 or 1
  poke(dut.io.out_S.ready_in, value=0.B)
  poke(dut.io.out_W.ready_in, value=0.B)
  poke(dut.io.out_E.ready_in, value=0.B)
  poke(dut.io.out_NI.ready_in, value=0.B)
  poke(dut.io.x, value = 0.U)
  poke(dut.io.y, value = 0.U)

  step(1)
  poke(dut.io.in_N.din, value = 1L) //we put some value to NORTH input
  step(1)
  expect(dut.io.in_N.din, 1L)


  step(1)
  poke(dut.io.in_N.valid_in, value=1.B) // we put 1 to indicate UP to valid_in the data and write it to the register
  println("Input N is " + peek(dut.io.in_N).toString())
  expect(dut.io.in_N.ready_out, 1.B)
  step(1)
  expect(dut.io.out_E.valid_out, 1L)

  poke(dut.io.out_E.ready_in, value = 1L)
  step(1)
  expect(dut.io.out_E.valid_out, 1L)
  expect(dut.io.out_E.dout, 1L)
  println("Output N is " + peek(dut.io.out_N).toString())
  println("Output S is " + peek(dut.io.out_S).toString())
  println("Output W is " + peek(dut.io.out_W).toString())
  println("Output E is " + peek(dut.io.out_E).toString())
  println("Output NI is " + peek(dut.io.out_NI).toString())
  step(1)
  expect(dut.io.out_E.dout, 1L)
  println("Output N is " + peek(dut.io.out_N).toString())
  println("Output S is " + peek(dut.io.out_S).toString())
  println("Output W is " + peek(dut.io.out_W).toString())
  println("Output E is " + peek(dut.io.out_E).toString())
  println("Output NI is " + peek(dut.io.out_NI).toString())
  step(1)
  println("Output N is " + peek(dut.io.out_N).toString())
  println("Output S is " + peek(dut.io.out_S).toString())
  println("Output W is " + peek(dut.io.out_W).toString())
  println("Output E is " + peek(dut.io.out_E).toString())
  println("Output NI is " + peek(dut.io.out_NI).toString())









  /*

    step(1)
    poke(dut.io.in_N.din, value = 1L)
    println("Input U is " + peek(dut.io.in_N).toString())
    println("Output U is " + peek(dut.io.out_N).toString())
    println("Output D is " + peek(dut.io.out_S).toString())
    println("Output L is " + peek(dut.io.out_W).toString())
    println("Output R is " + peek(dut.io.out_E).toString())
    poke(dut.io.in_N.valid_in, value=0.B)
    println("Input U is " + peek(dut.io.in_N).toString())

    step(1)
    poke(dut.io.in_N.valid_in, value=1.B) // stavimo 1 na in_N valid_in
    println("Input U is " + peek(dut.io.in_N).toString())
    println("Output U is " + peek(dut.io.out_N).toString())
    println("Output D is " + peek(dut.io.out_S).toString())
    println("Output L is " + peek(dut.io.out_W).toString())
    println("Output R is " + peek(dut.io.out_E).toString())
    step(1)
    expect(dut.io.out_E.write, 1.B)
  */
}

object RouterTest extends App {
  chisel3.iotesters.Driver(() => new Router()) {
    m => new RouterTest(m)
  }
}