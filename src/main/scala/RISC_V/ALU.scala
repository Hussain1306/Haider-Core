package RISC_V


import chisel3._
import chisel3.util._

class ALU_IO_Interface(width : UInt, wwidth : SInt) extends Bundle {
    val alu_op = Input(width)
    val arg_x = Input(wwidth)
    val arg_y = Input(wwidth)
    val alu_out = Output(wwidth)
}
class ALU extends Module with Config{
    val io = IO( new ALU_IO_Interface(alu_op, operand))
    io.alu_out := 0.S

    when( io.alu_op  === 0.U){
        io.alu_out := io.arg_x + io.arg_y

    }.elsewhen(io.alu_op  === 1.U){
        io.alu_out := io.arg_x - io.arg_y
       
    }.elsewhen(io.alu_op  === 2.U){
        io.alu_out := io.arg_x & io.arg_y

    }.elsewhen(io.alu_op  === 3.U){
         io.alu_out := io.arg_x | io.arg_y
    
    }.elsewhen(io.alu_op  === 4.U){
         io.alu_out := io.arg_x ^ io.arg_y

    }.elsewhen(io.alu_op  === 5.U){
        io.alu_out := io.arg_x >> io.arg_y(4,0)
        
    }.elsewhen(io.alu_op  === 6.U){
        io.alu_out := io.arg_x >> io.arg_y(4,0)

    }.elsewhen(io.alu_op  === 7.U){
        io.alu_out := io.arg_x << io.arg_y(4,0)


    // }.elsewhen(io.alu_op  === 7.U){
    //     io.alu_out := ( io.arg_x.asSInt << io.arg_y(4, 0)).asUInt

    // }.elsewhen(io.alu_op  ===  8.U){
    //     io.alu_out := io.arg_x < io.arg_y

    }.elsewhen(io.alu_op  === 10.U){
        io.alu_out := io.arg_x
    
    }.elsewhen(io.alu_op  ===  11.U){
        io.alu_out := io.arg_y

    // }.elsewhen(io.alu_op  === 9.U){
    //     io.alu_out := io.arg_x < io.arg_y

    }.otherwise{
            io.alu_out := 0.S
        }
}