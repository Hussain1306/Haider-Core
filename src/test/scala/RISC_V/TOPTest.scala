package RISC_V

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class TOPTest extends FreeSpec with ChiselScalatestTester{
    "TOP" in{
        test(new Top){ c=>
        c.clock.step(700)
        
        }
    }
}