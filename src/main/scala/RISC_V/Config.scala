package RISC_V


import chisel3._
import chisel3.util._

trait Config{
// Ins_Mem
    val addr = UInt(12.W)
    val data = UInt(32.W)

//Imm.Gen
    val immOutType = SInt(32.W)
    val immInType = UInt(32.W)

// ALU control
    val op = UInt(3.W)
    val cont = UInt(4.W) 

// ALU
   val alu_op = UInt(5.W)
   val operand = SInt(32.W)

// Branch 
   val fn3 = UInt(3.W)
   val operands = UInt(32.W)

// Control dec
   val one = UInt(1.W)
   val two = UInt(2.W)
   val three = UInt(3.W)

// Control typ dec
   val o = UInt(1.W)
   val s = UInt(7.W)

// Data Memory
   val sda = SInt(32.W)

// Register File
   val raddr = UInt(5.W)
}