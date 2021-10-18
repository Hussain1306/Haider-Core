package RISC_V


import chisel3._
import chisel3.util._


class Control_control_IO(on : UInt, t : UInt, th : UInt) extends Bundle{
	    val R_type = Input(on)
		val Load = Input(on)
		val S_type = Input(on)
		val SB_type = Input(on)
		val I_type = Input(on)
		val JALR = Input(on)
		val JAL = Input(on)
		val LUI = Input(on)
		val AUIPC = Input(on)
		
		val RegWrite = Output(on)
		val MemWrite = Output(on)
		val branch = Output(on)
		val MemRead = Output(on)
		val MemtoReg = Output(on)
		val operand_A_sel = Output(t)
		val operand_B_sel = Output(on)
		val ALUoperation = Output(th)
		val extend_sel = Output(t)
		val Next_pc = Output(t)
}

class Control_control_decode extends Module with Config{
    val io = IO(new Control_control_IO (one,two, three) {
})
		when(io.R_type === 1.U){
			io.RegWrite := 1.U
			io.MemRead := 0.U
			io.MemWrite := 0.U
			io.branch := 0.U
			io.MemtoReg := 1.U
			io.operand_A_sel := "b00".U
			io.operand_B_sel := 0.U
			io.ALUoperation := "b000".U
			io.extend_sel := "b00".U
			io.Next_pc := "b00".U
		}.elsewhen(io.Load === 1.U){
			io.RegWrite := 1.U
			io.MemWrite := 0.U
			io.MemRead := 1.U
			io.branch := 0.U
			io.MemtoReg := 0.U
			io.operand_A_sel := "b00".U
			io.operand_B_sel := 1.U
			io.ALUoperation := "b100".U
			io.extend_sel := "b00".U
			io.Next_pc := "b00".U
		}.elsewhen(io.S_type === 1.U){
			io.RegWrite := 0.U
			io.MemRead := 0.U
			io.MemWrite := 1.U
			io.branch := 0.U
			io.MemtoReg := 0.U
			io.operand_A_sel := "b00".U
			io.operand_B_sel := 1.U
			io.ALUoperation := "b101".U
			io.extend_sel := "b10".U
			io.Next_pc := "b00".U
		}.elsewhen(io.SB_type === 1.U){
			io.RegWrite := 0.U
			io.MemRead := 0.U
			io.MemWrite := 0.U
			io.branch := 1.U
			io.MemtoReg := 0.U
			io.operand_A_sel := "b00".U
			io.operand_B_sel := 1.U
			io.ALUoperation := "b000".U
			io.extend_sel := "b00".U
			io.Next_pc := "b01".U
		}.elsewhen(io.I_type === 1.U){
			io.RegWrite := 1.U
			io.MemRead := 0.U
			io.MemWrite := 0.U
			io.branch := 0.U
			io.MemtoReg := 1.U
			io.operand_A_sel := "b00".U
			io.operand_B_sel := 1.U
			io.ALUoperation := "b001".U
			io.extend_sel := "b00".U
			io.Next_pc := "b00".U
		}.elsewhen(io.JALR === 1.U){
			io.RegWrite := 1.U
			io.MemRead := 0.U
			io.MemWrite := 0.U
			io.branch := 0.U
			io.MemtoReg := 0.U
			io.operand_A_sel := "b10".U
			io.operand_B_sel := 0.U
			io.ALUoperation := "b011".U
			io.extend_sel := "b00".U
			io.Next_pc := "b11".U
		}.elsewhen(io.JAL === 1.U){
			io.RegWrite := 1.U
			io.MemRead := 0.U
			io.MemWrite := 0.U
			io.branch := 0.U
			io.MemtoReg := 0.U
			io.operand_A_sel := "b10".U
			io.operand_B_sel := 0.U
			io.ALUoperation := "b011".U
			io.extend_sel := "b00".U
			io.Next_pc := "b10".U
		}.elsewhen(io.LUI === 1.U){
			io.RegWrite := 1.U
			io.MemRead := 0.U
			io.MemWrite := 0.U
			io.branch := 0.U
			io.MemtoReg := 0.U
			io.operand_A_sel := "b11".U
			io.operand_B_sel := 0.U
			io.ALUoperation := "b110".U
			io.extend_sel := "b01".U
			io.Next_pc := "b00".U
		}.elsewhen(io.AUIPC === 1.U){
			io.RegWrite := 1.U
			io.MemRead := 0.U
			io.MemWrite := 0.U
			io.branch := 0.U
			io.MemtoReg := 0.U
			io.operand_A_sel := "b10".U
			io.operand_B_sel := 0.U
			io.ALUoperation := "b110".U
			io.extend_sel := "b10".U
			io.Next_pc := "b00".U
		}.otherwise{
			io.MemWrite := 0.U
			io.MemRead := 0.U
			io.branch := 0.U
			io.RegWrite := 0.U
			io.MemtoReg := 0.U
			io.ALUoperation := "b000".U
			io.operand_A_sel := "b00".U
			io.operand_B_sel := 0.U
			io.extend_sel := "b00".U
			io.Next_pc := "b00".U
		}
}