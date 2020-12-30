package noc

import chisel3._
import chisel3.iotesters._

class nocTest(dut:noc) extends PeekPokeTester(dut) {
  step(1)
  println("Result is: " + peek(dut.router2.io.in_L).toString())
  step(1)
}

object nocTest extends App {
  chisel3.iotesters.Driver(() => new noc()) {
    m => new nocTest(m)
  }
}