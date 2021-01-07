package router

import chisel3._
import chisel3.iotesters._

class RouterTest(dut:Router) extends PeekPokeTester(dut) {
  poke(dut.io.in_U.read, value=0.B) //ako ovo ne stavimo imamo 0 ili 1 na readovima jer
  poke(dut.io.in_D.read, value=0.B)
  poke(dut.io.in_L.read, value=0.B)
  poke(dut.io.in_R.read, value=0.B)
  poke(dut.io.x, value = 0.U)
  poke(dut.io.y, value = 0.U)
  /*println("Input U is " + peek(dut.io.in_U).toString())
  println("Input D is " + peek(dut.io.in_D).toString())
  println("Input L is " + peek(dut.io.in_L).toString())
  println("Input R is " + peek(dut.io.in_R).toString())*/
  step(1)
  poke(dut.io.in_U.din, value = 0L) //stavimo 3 na input
  step(1)
  expect(dut.io.in_U.din, 4L) //prolazi


  step(1)
  poke(dut.io.in_U.read, value=1.B) // stavimo 1 na in_U read
  println("Input U is " + peek(dut.io.in_U).toString())
  expect(dut.io.in_U.din, 4L) // i dalje prolazi


  step(1)
  //poke(dut.io.out_D.write, value=1.B) // stavimo 1 na out_D write, ako upisujemo u router.scala, ne treba nam ovo
  step(1)
  //expect(dut.io.out_D.write, 1.B)
  step(1)
  expect(dut.io.out_R.dout, 4L)
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
*/

}

object RouterTest extends App {
  chisel3.iotesters.Driver(() => new Router()) {
    m => new RouterTest(m)
  }
}