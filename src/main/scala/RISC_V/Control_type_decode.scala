package RISC_V


import chisel3._
import chisel3.util._

class Parameter(width : UInt, owidth : UInt) extends Bundle{
    val opcode = Input(owidth)
    val R_type = Output(width)
	val Load = Output(width)
	val S_type = Output(width)
	val SB_type = Output(width)
	val I_type = Output(width)
	val JALR = Output(width)
	val JAL = Output(width)
	val LUI = Output(width)
	val AUIPC = Output(width)
}

class Control_type_decode extends Module with Config{
    val io = IO(new Parameter(one,s){
    })
    when(io.opcode === "b0110011".U){     //r
        io.R_type := 1.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }.elsewhen(io.opcode === "b0010011".U){   //i
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 1.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }.elsewhen(io.opcode === "b0100011".U){   //s
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 1.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }.elsewhen(io.opcode === "b0010111".U){   //auipc
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 1.U
    }.elsewhen(io.opcode === "b1100011".U){   //sb
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 1.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }.elsewhen(io.opcode === "b1100111".U){   //jalr
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 1.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }.elsewhen(io.opcode === "b0110111".U){   //lui
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 1.U
        io.AUIPC := 0.U
    }.elsewhen(io.opcode === "b1101111".U){   //uj
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 1.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }.elsewhen(io.opcode === "b0000011".U){   //load
        io.R_type := 0.U
        io.Load := 1.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }.otherwise{                         //defult
        io.R_type := 0.U
        io.Load := 0.U
        io.I_type := 0.U
        io.SB_type := 0.U
        io.S_type := 0.U
        io.JALR := 0.U
        io.JAL := 0.U
        io.LUI := 0.U
        io.AUIPC := 0.U
    }
}
