package RISC_V

import chisel3._
import chisel3.util._

class Reg_File_IO(r : UInt, s : SInt) extends Bundle{
    	val Reg_en = Input(Bool())
		val rs1 = Input(r)
		val rs2 = Input(r)
		val rd = Input(r)
		val ws1 = Output(s)
		val ws2 = Output(s)
        val wd = Input(s)
}

class Reg_File extends Module with Config{
	val io = IO(new Reg_File_IO(raddr,sda){
	
	})
	
	val reg_file = Reg(Vec(32,SInt(32.W)))	
	io.ws1 := reg_file(io.rs1)
	io.ws2 := reg_file(io.rs2)
	when(io.Reg_en === 1.U){
		when(io.rd === "b00000".U){
			reg_file(io.rd) := 0.S
		}.otherwise{
			reg_file(io.rd) := io.wd
		}
	}
}