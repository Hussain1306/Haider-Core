circuit twobithalfadder :
  module twobithalfadder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    output io_e : UInt<1>
    output io_f : UInt<1>
    output io_g : UInt<1>
    output io_h : UInt<1>

    node _io_e_T = xor(io_a, io_b) @[twobithalfadder.scala 17:18]
    node _io_f_T = and(io_a, io_b) @[twobithalfadder.scala 18:18]
    node _io_g_T = xor(io_c, io_d) @[twobithalfadder.scala 19:18]
    node _io_h_T = and(io_c, io_d) @[twobithalfadder.scala 20:18]
    io_e <= _io_e_T @[twobithalfadder.scala 17:10]
    io_f <= _io_f_T @[twobithalfadder.scala 18:10]
    io_g <= _io_g_T @[twobithalfadder.scala 19:10]
    io_h <= _io_h_T @[twobithalfadder.scala 20:10]
