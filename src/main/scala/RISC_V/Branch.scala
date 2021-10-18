package RISC_V


import chisel3._
import chisel3.util._

object funct3{
   val BEQ = 0.U(3.W)
   val BNE = 1.U(3.W)
   val BLT = 4.U(3.W)
   val BGE = 5.U(3.W)
   val BLTU = 6.U(3.W)
   val BGEU = 7.U(3.W)
}

import funct3._
class LM_IO_Interface_BranchControl(x : UInt, y : UInt) extends Bundle {
    val func3 = Input(x)
    val branch = Input(Bool())
    val arg_x = Input(y)
    val arg_y = Input(y)
    val br_taken = Output(Bool())
}

class Branch extends Module with Config {
    val io = IO(new LM_IO_Interface_BranchControl(fn3, operands))
    
    val Equalto = Mux((io.arg_x.asSInt === io.arg_y.asSInt), 1.B , 0.B)
    val Greterthan = Mux((io.arg_x.asSInt > io.arg_y.asSInt), 1.B, 0.B)
    val Lessthan = Mux((io.arg_x.asSInt < io.arg_y.asSInt), 1.B ,0.B)

    val Equalto_U = Mux((io.arg_x === io.arg_y), 1.B , 0.B)
    val Greterthan_U = Mux((io.arg_x > io.arg_y), 1.B, 0.B)
    val Lessthan_U = Mux((io.arg_x < io.arg_y), 1.B ,0.B)

    val out = Mux((io.branch === 1.B), Mux((io.func3 === BEQ), Equalto, Mux((io.func3 === BNE), ~Equalto, Mux((io.func3 === BLT), Lessthan, Mux((io.func3 === BGE), (Greterthan | Equalto), Mux((io.func3 === BLTU), Lessthan_U, Mux((io.func3 === BGEU), (Greterthan_U | Equalto_U) , 0.U )))))), 0.U)

    io.br_taken := out
}