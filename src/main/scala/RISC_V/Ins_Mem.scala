package RISC_V

import chisel3._
import chisel3.util.experimental.loadMemoryFromFile

class Ins_Mem_IO(address : UInt, data_out : UInt) extends Bundle{
	val rAdder = Input(address)
	val wData = Output(data_out)
}

class Ins_Mem extends Module with Config{
	val io = IO(new Ins_Mem_IO (addr, data) {
		
	})

	val ins_mem = Mem(1024, data)
	io.wData := ins_mem(io.rAdder)
	loadMemoryFromFile(ins_mem, "/home/hussainnaqvi/files/Ins_mem.txt")
}