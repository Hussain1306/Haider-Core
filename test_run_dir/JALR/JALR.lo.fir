circuit JALR :
  module JALR :
    input clock : Clock
    input reset : UInt<1>
    input io_a : SInt<32>
    input io_b : SInt<32>
    output io_out : SInt<32>

    node _io_out_T = add(io_a, io_b) @[JALR.scala 17:25]
    node _io_out_T_1 = tail(_io_out_T, 1) @[JALR.scala 17:25]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[JALR.scala 17:25]
    node _io_out_T_3 = and(_io_out_T_2, asSInt(UInt<37>("h842b560d0"))) @[JALR.scala 17:33]
    node _io_out_T_4 = asSInt(_io_out_T_3) @[JALR.scala 17:33]
    io_out <= asSInt(bits(_io_out_T_4, 31, 0)) @[JALR.scala 17:16]
