package RISC_V

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class JALRTest extends FreeSpec with ChiselScalatestTester{
	"JALR" in{
		test(new JALR){ c=>
		c.io.a.poke(34.S)
		c.io.b.poke(24.S)
		c.clock.step(2)
		}
	}
}