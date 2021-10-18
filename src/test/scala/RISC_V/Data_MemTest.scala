package RISC_V

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec

class Data_MemTest extends FreeSpec with ChiselScalatestTester{
    "Data Memory " in{
        test(new Data_Mem){ c=>
        c.io.addr.poke(15.U)
        c.io.data_in.poke(57.S)
        c.io.store.poke(true.B)
        c.io.load.poke(false.B)
        c.clock.step(2)
        //c.io.data_out.expect(57.S)
        //c.clock.step(2)
        //c.clock.step(2)
        c.io.addr.poke(15.U)
        c.io.store.poke(false.B)
        c.io.load.poke(true.B)
        c.clock.step(2)
        c.io.data_out.expect(57.S)
        }
    }
}