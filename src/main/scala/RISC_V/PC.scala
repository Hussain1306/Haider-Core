package RISC_V

import chisel3._
import chisel3.util._

class PC_IO(width : UInt) extends Bundle{
    val input = Input(width)
    val PC_4 = Output(width)
    val pc = Output(width)
} 

class PC extends Module with Config{
	val io= IO(new PC_IO(data))

	val reg = RegInit(0.U(32.W))
	reg := io.input
	io.pc := reg
	io.PC_4 := reg + 4.U
}