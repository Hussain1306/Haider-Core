package RISC_V


import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chiseltest.experimental.TestOptionBuilder._
import chiseltest.internal.VerilatorBackendAnnotation._
import scala.util.Random
import funct3._

class BranchTest extends FreeSpec with ChiselScalatestTester{
    "SB" in {
        test( new Branch){c => 
        val array_op = Array(BEQ, BNE, BGE, BLT, BGEU, BLTU)

        for (i <- 0 until 1000){
            val a = Random.nextLong() & 0xFFFFFFFFL
            val b = Random.nextLong() & 0xFFFFFFFFL
            val branch_ind = Random.nextBoolean() 
            val opr = Random.nextInt(6)
            val func3 = array_op(opr)
            val result = func3 match {
            case BEQ => if (a.toInt == b.toInt) 1 else 0
            case BNE => if (a.toInt != b.toInt) 1 else 0
            case BGE => if (a.toInt >= b.toInt) 1 else 0
            case BLT => if (a.toInt < b.toInt) 1 else 0
            case BGEU => if (a >= b) 1 else 0
            case BLTU => if (a < b) 1 else 0
        }

        val result1 = if(branch_ind === true) result else 0
        println(func3,a,b,result1,result, branch_ind)
        c.io.arg_x.poke(a.U)
        c.io.arg_y.poke(b.U)
        c.io.branch.poke(branch_ind.B)
        c.io.func3.poke(func3)
        c.clock.step(1)
        c.io.br_taken.expect(result1.B)
        }        
        c.clock.step(2)
        }
    }
}