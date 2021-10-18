package RISC_V


import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class Control_control_decodeTest extends FreeSpec with ChiselScalatestTester {
	"Control Decode" in{
		test(new Control_control_decode){ c=>
		c.io.R_type.poke(0.U)
	    c.io.Load.poke(0.U)
	    c.io.S_type.poke(0.U)
	    c.io.SB_type.poke(0.U)
	    c.io.I_type.poke(1.U)
	    c.io.JALR.poke(0.U)
	    c.io.JAL.poke(0.U)
	    c.io.LUI.poke(0.U)
	    c.io.AUIPC.poke(0.U)
	    c.clock.step(1)
	    c.io.MemWrite.expect(0.U)
	    c.io.branch.expect(0.U)
	    c.io.RegWrite.expect(1.U)
		c.io.MemRead.expect(0.U)
	    c.io.MemtoReg.expect(1.U)
	    c.io.ALUoperation.expect(1.U)
	    c.io.operand_A_sel.expect(0.U)
	    c.io.operand_B_sel.expect(1.U)
	    c.io.extend_sel.expect(0.U)
	    c.io.Next_pc.expect(0.U)
		}
	}
}
