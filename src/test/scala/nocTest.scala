package noc

import chisel3._
import chisel3.iotesters._

class nocTest(dut:noc) extends PeekPokeTester(dut) {
  //step(1)

  poke(dut.io.cpu_din, value = "b00000000000000000000000000001010".U /*0x0000000AL*/)
  poke(dut.io.cpu_valid_in, value = 1L)

  step(1)
  //println("CPU 1 valid in is: " + peek(dut.io.cpu_valid_in))
  //println("CPU 1 data in is: " + peek(dut.io.cpu_din))
  //println("CPU 4 data in is: " + peek(dut.io.cpu_valid_in))
  poke(dut.io.cpu_ready_in, value = 1L)

  step(1)
  poke(dut.io.cpu_valid_in, value = 0L)


  step(6)



}

object nocTest extends App {
  chisel3.iotesters.Driver(() => new noc()) {
    m => new nocTest(m)
  }
}