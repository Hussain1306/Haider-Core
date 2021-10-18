package RISC_V

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class Ins_MemTest extends FreeSpec with ChiselScalatestTester{
	"Ins_Mem " in{
        test(new Ins_Mem){ c=>
        c.io.rAdder.poke(0.U)
        c.clock.step(1)
        c.io.wData.expect(8.U)
        }
    }
}