package RISC_V

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class ControlTest extends FreeSpec with ChiselScalatestTester {
    "Control " in {
        test(new Control){ c=>
        c.io.opcode.poke("b0010011".U)
        c.clock.step(2)
        c.io.MemWrite.expect(false.B)
	    c.io.branch.expect(false.B)
	    c.io.RegWrite.expect(true.B)
	    c.io.MemtoReg.expect(true.B)
		c.io.MemRead.expect(false.B)
	    c.io.ALUoperation.expect("b001".U)
	    c.io.operand_A_sel.expect("b00".U)
	    c.io.operand_B_sel.expect(true.B)
	    c.io.extend_sel.expect("b00".U)
	    c.io.Next_pc.expect("b00".U)            
        }
    }
}