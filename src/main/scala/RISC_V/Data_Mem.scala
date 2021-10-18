package RISC_V

import chisel3._
import chisel3.util._

class Data_Mem_IO(add : UInt, sdata : SInt) extends Bundle{
    	val addr = Input(add)
		val data_in = Input(sdata)
		val data_out = Output(sdata)
		val store = Input(Bool())
		val load = Input(Bool())
}

class Data_Mem extends Module with Config{
	val io = IO(new Data_Mem_IO(addr,sda){
	
	})

	val data_Mem = Mem(1024,SInt(32.W))
	io.data_out := 0.S

	when(io.load === 1.U){
		io.data_out := data_Mem.read(io.addr)
	}.elsewhen(io.store === 1.U){
		data_Mem.write(io.addr, io.data_in)
    }.otherwise{
		io.data_out := DontCare
	}
}