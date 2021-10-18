package RISC_V

import chisel3._
import chisel3.util._

class JALR_IO(s : SInt) extends Bundle{
		val a = Input(s)
		val b = Input(s)
		val out = Output(s)
}

class JALR extends Module with Config{
	val io = IO(new JALR_IO(sda) {
	
	})

	io.out := (io.a + io.b) & 35478921424L.S

}