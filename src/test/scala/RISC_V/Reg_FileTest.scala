package RISC_V

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class Reg_FileTest extends FreeSpec with ChiselScalatestTester{
    "Register File" in{
        test(new Reg_File){ c=>
        c.io.Reg_en.poke(true.B)
        c.io.rs1.poke(6.U)
        c.io.rs2.poke(7.U)
        c.io.rd.poke(19.U)
        c.io.wd.poke(36.S)
        c.clock.step(2)
        }
    }
}