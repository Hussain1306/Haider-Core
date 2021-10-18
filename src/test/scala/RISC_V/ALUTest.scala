package RISC_V

import chisel3._
import chisel3 . util._
import org.scalatest._
import chiseltest._

class ALUTest extends FreeSpec with ChiselScalatestTester {

  "ALU PARA" in {
    test(new ALU) { c =>
      c.io.arg_x.poke(12.S)
      c.io.arg_y.poke(45.S)
      c.io.alu_op.poke(1.U)
      c.io.alu_out.expect(45.S)
    }
  }
}