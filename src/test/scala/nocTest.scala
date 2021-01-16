package noc

import chisel3._
import chisel3.iotesters._

class nocTest(dut:noc) extends PeekPokeTester(dut) {

  poke(dut.io.ni_1_din, value = "b00000000000000000000000000000000".U /*0x0000000AL*/)

  step(1)
  val random_array = new Array[Int](10)
  for (i <- 0 to 9) {
    random_array(i) = rnd.nextInt(10)
    println("Rand vrijednost je " + random_array(i))
    //poke(dut.io.NI_din, value = 3L)
  }

  poke(dut.io.ni_1_din, value = "b00000000000000000000000000001010".U /*0x0000000AL*/)
  poke(dut.io.ni_1_valid_in, value = 1L)

  step(1)
  //println("NI 1 valid in is: " + peek(dut.io.NI_valid_in))
  //println("NI 1 data in is: " + peek(dut.io.NI_din))
  //println("NI 4 data in is: " + peek(dut.io.NI_valid_in))
  poke(dut.io.ni_9_ready_in, value = 1L)

  step(1)
  poke(dut.io.ni_1_valid_in, value = 0L)


  step(3)
  expect(dut.io.ni_9_data, 10L)
  step(1)

  for (i <- 0 to 9) {
    if (random_array(i) == 0) {
      println("Rand vrijednost je " + random_array(i))
    }

  }
}

object nocTest extends App {
  chisel3.iotesters.Driver(() => new noc()) {
    m => new nocTest(m)
  }
}