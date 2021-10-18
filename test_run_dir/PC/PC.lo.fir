circuit PC :
  module PC :
    input clock : Clock
    input reset : UInt<1>
    input io_input : UInt<32>
    output io_PC_4 : UInt<32>
    output io_pc : UInt<32>

    reg reg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg) @[PC.scala 15:26]
    node _io_PC_4_T = add(reg, UInt<3>("h4")) @[PC.scala 18:24]
    node _io_PC_4_T_1 = tail(_io_PC_4_T, 1) @[PC.scala 18:24]
    io_PC_4 <= _io_PC_4_T_1 @[PC.scala 18:17]
    io_pc <= io_input @[PC.scala 17:15]
    reg <= mux(reset, UInt<32>("h0"), io_input) @[PC.scala 15:26 PC.scala 15:26 PC.scala 16:13]
