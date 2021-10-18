package RISC_V

import chisel3._
import chisel3.util._

class Control_IO(se : UInt, tw : UInt, thr : UInt) extends Bundle{
    val opcode = Input(se)
	
	
		val MemWrite = Output(Bool())
		val branch = Output(Bool())
		val RegWrite = Output(Bool())
		val MemRead = Output(Bool())
		val MemtoReg = Output(Bool())
		val ALUoperation = Output(thr)
		val operand_A_sel = Output(tw)
		val operand_B_sel = Output(Bool())
		val extend_sel = Output(tw)
		val Next_pc = Output(tw)
}


class Control extends Module with Config{
	val io = IO(new Control_IO(s, two, three){
		
	})

		val typ_dec = Module(new Control_type_decode())
		val con_dec = Module(new Control_control_decode())
		
		
		typ_dec.io.opcode := io.opcode


		con_dec.io.R_type := typ_dec.io.R_type
		con_dec.io.Load := typ_dec.io.Load
		con_dec.io.S_type := typ_dec.io.S_type
		con_dec.io.SB_type := typ_dec.io.SB_type
		con_dec.io.I_type := typ_dec.io.I_type
		con_dec.io.JALR := typ_dec.io.JALR
		con_dec.io.JAL := typ_dec.io.JAL
		con_dec.io.LUI := typ_dec.io.LUI
        con_dec.io.AUIPC := typ_dec.io.AUIPC
		
		io.MemWrite := con_dec.io.MemWrite
		io.branch := con_dec.io.branch
		io.RegWrite := con_dec.io.RegWrite
		io.MemRead:= con_dec.io.MemRead
		io.MemtoReg := con_dec.io.MemtoReg
		io.ALUoperation := con_dec.io.ALUoperation
		io.operand_A_sel := con_dec.io.operand_A_sel
		io.operand_B_sel := con_dec.io.operand_B_sel
		io.extend_sel := con_dec.io.extend_sel
		io.Next_pc := con_dec.io.Next_pc

}