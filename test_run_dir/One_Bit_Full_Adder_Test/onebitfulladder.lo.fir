circuit onebitfulladder :
  module onebitfulladder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    output io_d : UInt<1>
    output io_e : UInt<1>

    node _io_d_T = xor(io_a, io_b) @[onebitfulladder.scala 14:19]
    node _io_d_T_1 = xor(_io_d_T, io_c) @[onebitfulladder.scala 14:27]
    node _io_e_T = and(io_a, io_b) @[onebitfulladder.scala 15:19]
    node _io_e_T_1 = xor(io_a, io_b) @[onebitfulladder.scala 15:36]
    node _io_e_T_2 = and(_io_e_T_1, io_c) @[onebitfulladder.scala 15:44]
    node _io_e_T_3 = or(_io_e_T, _io_e_T_2) @[onebitfulladder.scala 15:27]
    io_d <= _io_d_T_1 @[onebitfulladder.scala 14:10]
    io_e <= _io_e_T_3 @[onebitfulladder.scala 15:10]
