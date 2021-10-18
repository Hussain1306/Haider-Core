package RISC_V

import chisel3._
import chisel3.util._

class Top extends Module{
	val io = IO(new Bundle{
		val ins_out = Output(UInt(32.W))
	})

    val control = Module(new Control)
    val register = Module(new Reg_File)
    val immediate = Module(new Immediate_Gen)
    val alu = Module(new ALU)
    val ins_mem = Module(new Ins_Mem)
    val jalr = Module(new JALR)
    val data_mem = Module(new Data_Mem)
    val branch = Module(new Branch)
    val pc = Module(new PC)
    val alu_con = Module(new Alu_Control)



    

    ins_mem.io.rAdder := pc.io.pc(11, 2)
    io.ins_out := ins_mem.io.wData


    control.io.opcode := io.ins_out(6, 0)


    register.io.Reg_en := control.io.RegWrite
    register.io.rs1 := io.ins_out(19, 15)
    register.io.rs2 := io.ins_out(24, 20)
    register.io.rd  := io.ins_out(11, 7)


    immediate.io.instr := io.ins_out
    immediate.io.pc := pc.io.pc

    pc.io.input := pc.io.PC_4

    branch.io.branch := control.io.branch
    branch.io.func3 := io.ins_out(14, 12)
    branch.io.arg_x := io.ins_out(19, 15)
    branch.io.arg_y := io.ins_out(24, 20)


    when(control.io.operand_A_sel === "b01".U){
        alu.io.arg_x := (pc.io.pc).asSInt
    }.elsewhen(control.io.operand_A_sel === "b10".U){
        alu.io.arg_x := (pc.io.PC_4).asSInt
    }.elsewhen(control.io.operand_A_sel === "b00".U){
        alu.io.arg_x := register.io.ws1
    }.otherwise{
        alu.io.arg_x := 0.S
    }



    when(control.io.extend_sel === "b00".U & control.io.operand_B_sel === "b00".U){
        alu.io.arg_y := register.io.ws2
    }.otherwise{
        alu.io.arg_y := immediate.io.immd_se
    }


    alu_con.io.ALUop := control.io.ALUoperation
    alu_con.io.func3 := io.ins_out(14, 12)
    alu_con.io.func7 := io.ins_out(30)


    alu.io.alu_op := alu_con.io.ALUcont


    when(control.io.Next_pc === "b11".U){
        pc.io.input := (jalr.io.out).asUInt
    }.elsewhen(control.io.Next_pc === "b10".U){
        pc.io.input := (immediate.io.immd_se).asUInt
    }.elsewhen(control.io.Next_pc === "b01".U & (control.io.branch & branch.io.br_taken) === 1.U){
        pc.io.input := (immediate.io.immd_se).asUInt
    }.otherwise{
        pc.io.input := pc.io.PC_4
    }


    data_mem.io.addr := (alu.io.alu_out(13,2))
    data_mem.io.load := control.io.MemRead
    data_mem.io.store := control.io.MemWrite
    data_mem.io.data_in := register.io.ws2


    when(control.io.MemtoReg === 0.U ){
        register.io.wd := data_mem.io.data_out
    }.otherwise{
        register.io.wd := alu.io.alu_out
    }


    jalr.io.a := register.io.ws1
    jalr.io.b := immediate.io.immd_se
}