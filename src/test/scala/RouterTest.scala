package router

import chisel3._
import chisel3.iotesters._

class RouterTest(dut:Router) extends PeekPokeTester(dut) {
  poke(dut.io.in_U.read, value=0.B) //if we don't do this, we can't be sure if it is 0 or 1
  poke(dut.io.in_D.read, value=0.B)
  poke(dut.io.in_L.read, value=0.B)
  poke(dut.io.in_R.read, value=0.B)
  poke(dut.io.x, value = 0.U)
  poke(dut.io.y, value = 0.U)

  step(1)
  poke(dut.io.in_U.din, value = 4L) //we put some value to UP input
  step(1)
  expect(dut.io.in_U.din, 4L)


  step(1)
  poke(dut.io.in_U.read, value=1.B) // we put 1 to indicate UP to read the data and write it to the register
  println("Input U is " + peek(dut.io.in_U).toString())
  expect(dut.io.out_D.write, 1.B)
  step(1)

  expect(dut.io.out_D.dout, 4L)
  println("Output U is " + peek(dut.io.out_U).toString())
  println("Output D is " + peek(dut.io.out_D).toString())
  println("Output L is " + peek(dut.io.out_L).toString())
  println("Output R is " + peek(dut.io.out_R).toString())
  println("Output CPU is " + peek(dut.io.out_CPU).toString())











/*

  step(1)
  poke(dut.io.in_U.din, value = 1L)
  println("Input U is " + peek(dut.io.in_U).toString())
  println("Output U is " + peek(dut.io.out_U).toString())
  println("Output D is " + peek(dut.io.out_D).toString())
  println("Output L is " + peek(dut.io.out_L).toString())
  println("Output R is " + peek(dut.io.out_R).toString())
  poke(dut.io.in_U.read, value=0.B)
  println("Input U is " + peek(dut.io.in_U).toString())

  step(1)
  poke(dut.io.in_U.read, value=1.B) // stavimo 1 na in_U read
  println("Input U is " + peek(dut.io.in_U).toString())
  println("Output U is " + peek(dut.io.out_U).toString())
  println("Output D is " + peek(dut.io.out_D).toString())
  println("Output L is " + peek(dut.io.out_L).toString())
  println("Output R is " + peek(dut.io.out_R).toString())
  step(1)
  expect(dut.io.out_R.write, 1.B)
*/
}

object RouterTest extends App {
  chisel3.iotesters.Driver(() => new Router()) {
    m => new RouterTest(m)
  }
}