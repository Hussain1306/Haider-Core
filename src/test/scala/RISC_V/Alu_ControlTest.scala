package RISC_V


import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class Alu_ControlTest extends FreeSpec with ChiselScalatestTester{
    "ALU CONTROL"in {
        test(new Alu_Control){c =>
        c.io.ALUop.poke(0.U)
	    c.io.func3.poke(6.U)
	    c.io.func7.poke(false.B)
	    c.clock.step(5)
	    c.io.ALUcont.expect(3.U)
        }
    }
}