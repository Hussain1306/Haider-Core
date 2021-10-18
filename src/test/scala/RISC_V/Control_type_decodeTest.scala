package RISC_V


import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class Control_type_decodeTest extends FreeSpec with ChiselScalatestTester{
    "Type Decode" in {
        test(new Control_type_decode()){ c=>
        c.io.opcode.poke("b0110011".U)
        c.clock.step(2)
        c.io.R_type.expect(1.U)
        c.io.I_type.expect(0.U)
        c.io.S_type.expect(0.U)
        c.io.SB_type.expect(0.U)
        c.io.JAL.expect(0.U)
        c.io.JALR.expect(0.U)
        c.io.LUI.expect(0.U)
        c.io.AUIPC.expect(0.U)
        c.io.Load.expect(0.U)
        }
    }
}