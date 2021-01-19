package noc

import chisel3._
import chisel3.iotesters._

class help(dut:noc) extends PeekPokeTester(dut) {

}

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


  val random_array = new Array[Int](9)
  for (i <- 0 to 8) {
    var a = rnd.nextInt(11)
    if (a == 3) {
      a = 2
    } else if (a == 7) {
      a = 6
    }
    random_array(i) = a
    println("Rand vrijednost je " + random_array(i))
  }

  //RANDOM UNIFORM TRAFFIC PATTERN

  poke(dut.io.ni_1_din, random_array(0))
  poke(dut.io.ni_2_din, random_array(1))
  poke(dut.io.ni_3_din, random_array(2))
  poke(dut.io.ni_4_din, random_array(3))
  poke(dut.io.ni_5_din, random_array(4))
  poke(dut.io.ni_6_din, random_array(5))
  poke(dut.io.ni_7_din, random_array(6))
  poke(dut.io.ni_8_din, random_array(7))
  poke(dut.io.ni_9_din, random_array(8))

  //HOT POINT TRAFFIC PATTERN
  /*
  poke(dut.io.ni_1_din, value = 2L)
  poke(dut.io.ni_2_din, value = 2L)
  poke(dut.io.ni_3_din, value = 2L)
  poke(dut.io.ni_4_din, value = 2L)
  poke(dut.io.ni_5_din, value = 2L)
  poke(dut.io.ni_6_din, value = 2L)
  poke(dut.io.ni_7_din, value = 2L)
  poke(dut.io.ni_8_din, value = 2L)
  poke(dut.io.ni_9_din, value = 2L)
  */

  step(1)
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
  poke(dut.io.ni_9_ready_in, value = 1L) //Outputs to NI are OPEN

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
  //za 0.25

  step(1)
  println("Step 6")
  //za 0.2

  step(1)
  println("Step 7")

  step(1)
  println("Step 8")

  step(1)
  println("Step 9")
  //za 0.25

  step(1)
  println("Step 10")

  step(1)
  println("Step 11")
  //za 0.1

  step(1)
  println("Step 12")

  step(1)
  println("Step 13")
  //za 0.25

  step(1)
  println("Step 14")

  /*
  step(1)
  println("Step 15")

  step(1)
  println("Step 16")


  step(1)
  println("Step 17")

  step(1)
  println("Step 18")

  step(1)
  println("Step 19")

  step(1)
  println("Step 20")

  step(1)
  println("Step 21")
  //za 0.1 i 0.05

  step(1)
  println("Step 22")

  step(1)
  println("Step 23")

  step(1)
  println("Step 24")

  step(1)
  println("Step 25")

  step(1)
  println("Step 26")

  step(1)
  println("Step 27")

  step(1)
  println("Step 28")

  step(1)
  println("Step 29")

  step(1)
  println("Step 30")

   */


}

object nocTest extends App {
  chisel3.iotesters.Driver(() => new noc()) {
    m => new nocTest(m)
  }
}