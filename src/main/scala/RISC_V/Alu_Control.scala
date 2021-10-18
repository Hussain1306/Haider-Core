package RISC_V

import chisel3._
import chisel3.util._


class ALU_IO(three : UInt, four : UInt) extends Bundle{
	val ALUop = Input(three)
	val func7 = Input(Bool())
	val func3 = Input(three)
	val ALUcont = Output(four)
}

class Alu_Control extends Module with Config{
	val io = IO(new ALU_IO(alu_op, cont))
		when(io.ALUop === "b000".U){        //r
			   when(io.func7 === false.B){
				   io.ALUcont := MuxCase(false.B , Array(
				   (io.func3 === "b000".U) -> "b0000".U,
				   (io.func3 === "b111".U) -> "b0010".U,
				   (io.func3 === "b110".U) -> "b0011".U,
				   (io.func3 === "b100".U)-> "b0100".U,
				   (io.func3 === "b001".U)-> "b0111".U,
				   (io.func3 === "b101".U)-> "b0101".U,
				   (io.func3 === "b010".U)-> "b1000".U,
				   (io.func3 === "b011".U)-> "b1001".U)
				   )
			   }.otherwise{
				   io.ALUcont := DontCare
			   }
		}.elsewhen(io.ALUop === "b001".U){        //r
			   when(io.func7 === false.B){
				   io.ALUcont := MuxCase(false.B , Array(
				   (io.func3 === "b000".U) -> "b0000".U,
				   (io.func3 === "b111".U) -> "b0010".U,
				   (io.func3 === "b110".U) -> "b0011".U,
				   (io.func3 === "b100".U)-> "b0100".U,
				   (io.func3 === "b001".U)-> "b0111".U,
				   (io.func3 === "b101".U)-> "b0101".U,
				   (io.func3 === "b010".U)-> "b1000".U,
				   (io.func3 === "b011".U)-> "b1001".U)
				   )
			   }.otherwise{
				   io.ALUcont := DontCare
			   }
		}.elsewhen(io.ALUop === "b101".U){                       //store
			io.ALUcont := "b00000".U 		
		}.elsewhen(io.ALUop === "b100".U){                       //load
			io.ALUcont := "b00000".U	 
		}.elsewhen(io.ALUop === "b110".U){                       //lui
			io.ALUcont := "b00000".U		
		}.elsewhen(io.ALUop === "b011".U){                      //jal
			io.ALUcont := "b11111".U 				
		}.otherwise{
			io.ALUcont := DontCare		
		}
}