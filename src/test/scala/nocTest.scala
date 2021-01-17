package noc

import chisel3._
import chisel3.iotesters._

class nocTest(dut:noc) extends PeekPokeTester(dut) {
  println("Step 0")
  poke(dut.io.ni_1_valid_in, value = 0L)
  poke(dut.io.ni_2_valid_in, value = 0L)
  poke(dut.io.ni_3_valid_in, value = 0L)
  poke(dut.io.ni_4_valid_in, value = 0L)
  poke(dut.io.ni_5_valid_in, value = 0L)
  poke(dut.io.ni_6_valid_in, value = 0L)
  poke(dut.io.ni_7_valid_in, value = 0L)
  poke(dut.io.ni_8_valid_in, value = 0L)
  poke(dut.io.ni_9_valid_in, value = 0L) //to make sure all data registers aree  0

  poke(dut.io.ni_1_ready_in, value = 0L)
  poke(dut.io.ni_2_ready_in, value = 0L)
  poke(dut.io.ni_3_ready_in, value = 0L)
  poke(dut.io.ni_4_ready_in, value = 0L)
  poke(dut.io.ni_5_ready_in, value = 0L)
  poke(dut.io.ni_6_ready_in, value = 0L)
  poke(dut.io.ni_7_ready_in, value = 0L)
  poke(dut.io.ni_8_ready_in, value = 0L)
  poke(dut.io.ni_9_ready_in, value = 0L) //outputs to NI are closed


  val random_array = new Array[Int](10)
  for (i <- 0 to 9) {
    var a = rnd.nextInt(11)
    if (a == 3) {
      a = 2
    } else if (a == 7) {
      a = 6
    }
    random_array(i) = a
    println("Rand vrijednost je " + random_array(i))
  }
  //val table = VecInit (random_array.map(_.U(8.W)))
  poke(dut.io.ni_1_din, value = 4L)
  poke(dut.io.ni_2_din, random_array(1))
  poke(dut.io.ni_3_din, random_array(2))
  poke(dut.io.ni_4_din, value = 0L)
  poke(dut.io.ni_5_din, random_array(4))
  poke(dut.io.ni_6_din, random_array(5))
  poke(dut.io.ni_7_din, random_array(6))
  poke(dut.io.ni_8_din, random_array(7))
  poke(dut.io.ni_9_din, random_array(8))



  step(1) //Step 1
  println("Step 1")
  poke(dut.io.ni_1_valid_in, value = 1L)
  poke(dut.io.ni_2_valid_in, value = 1L)
  poke(dut.io.ni_3_valid_in, value = 1L)
  poke(dut.io.ni_4_valid_in, value = 1L)
  poke(dut.io.ni_5_valid_in, value = 1L)
  poke(dut.io.ni_6_valid_in, value = 1L)
  poke(dut.io.ni_7_valid_in, value = 1L)
  poke(dut.io.ni_8_valid_in, value = 1L)
  poke(dut.io.ni_9_valid_in, value = 1L)


  step(1)
  println("Step 2")
  poke(dut.io.ni_1_ready_in, value = 1L)
  poke(dut.io.ni_2_ready_in, value = 1L)
  poke(dut.io.ni_3_ready_in, value = 1L)
  poke(dut.io.ni_4_ready_in, value = 1L)
  poke(dut.io.ni_5_ready_in, value = 1L)
  poke(dut.io.ni_6_ready_in, value = 1L)
  poke(dut.io.ni_7_ready_in, value = 1L)
  poke(dut.io.ni_8_ready_in, value = 1L)
  poke(dut.io.ni_9_ready_in, value = 1L) //Inputs from NI are OPEN

  step(1)
  println("Step 3")
  poke(dut.io.ni_1_valid_in, value = 0L)
  poke(dut.io.ni_2_valid_in, value = 0L)
  poke(dut.io.ni_3_valid_in, value = 0L)
  poke(dut.io.ni_4_valid_in, value = 0L)
  poke(dut.io.ni_5_valid_in, value = 0L)
  poke(dut.io.ni_6_valid_in, value = 0L)
  poke(dut.io.ni_7_valid_in, value = 0L)
  poke(dut.io.ni_8_valid_in, value = 0L)
  poke(dut.io.ni_9_valid_in, value = 0L) //We close the inputs from NI


  step(1)
  println("Step 3")

  step(1)
  println("Step 4")

  step(1)
  println("Step 5")

  step(1)
  println("Step 6")

  step(1)
  println("Step 7")

  step(1)
  println("Step 8")

  step(1)
  println("Step 9")

  step(1)
  println("Step 10")

  step(4)

}

object nocTest extends App {
  chisel3.iotesters.Driver(() => new noc()) {
    m => new nocTest(m)
  }
}