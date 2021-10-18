package RISC_V


import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class PCTest extends FreeSpec with ChiselScalatestTester{
	"PC " in{
        test(new PC){ c=>
        c.io.input.poke(16.U)
        c.clock.step(2)
        c.io.pc.expect(16.U)
        c.io.PC_4.expect(20.U)
        
        }
    }
}
