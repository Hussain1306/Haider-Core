package RISC_V


import chisel3._
import chisel3.util._

class Imm_Gen_IO(u: UInt, s: SInt) extends Bundle {
	val instr = Input(u)
	val immd_se = Output(s)
    val pc = Input(u)
}

class Immediate_Gen extends Module with Config{
	val io = IO(new Imm_Gen_IO(data, sda))
	io.immd_se := 0.S

	when(io.instr(6,0)==="b0100011".U){                 //S_Immediate
		io.immd_se := (Cat(Fill(20,io.instr(31)),io.instr(31,25),io.instr(11,7))).asSInt
	}
    
    .elsewhen(io.instr(6,0)==="b0010111".U){              //U_Immediate
		io.immd_se := (Cat(io.instr(31),io.instr(30,25),io.instr(24,21),io.instr(20),io.instr(19,12)) << 12.U).asSInt
	}
    
    .elsewhen(io.instr(6,0)==="b0010011".U | io.instr(6,0)=== "b0000011".U){            //I_Immediate
		io.immd_se := (Cat(Fill(20,io.instr(31)),io.instr(31,20))).asSInt
	}
    
    .elsewhen(io.instr(6,0)==="b1100011".U){           //SB_Immediate
		io.immd_se := (Cat(Fill(19,io.instr(31)),io.instr(31),io.instr(7),io.instr(30,25),io.instr(11,8), 0.U)+io.pc.asUInt).asSInt
	}
    
    .elsewhen(io.instr(6,0)==="b1101111".U){      //UJ_Immediate
		val uj_imm21 = Cat (io.instr(31),io.instr(19,12),io.instr(20),io.instr(30,21),"b0".U)
	    io.immd_se := ((Cat(Fill(12,uj_imm21(20)),uj_imm21)) + io.pc).asSInt
}
}