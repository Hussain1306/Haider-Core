circuit onebithalfadder :
  module onebithalfadder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_c : UInt<1>
    output io_d : UInt<1>

    node _io_c_T = xor(io_a, io_b) @[onebithalfadder.scala 13:18]
    node _io_d_T = and(io_a, io_b) @[onebithalfadder.scala 14:18]
    io_c <= _io_c_T @[onebithalfadder.scala 13:10]
    io_d <= _io_d_T @[onebithalfadder.scala 14:10]
