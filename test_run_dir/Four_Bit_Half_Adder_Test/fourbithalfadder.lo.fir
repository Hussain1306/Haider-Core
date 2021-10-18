circuit fourbithalfadder :
  module fourbithalfadder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_e : UInt<1>
    input io_f : UInt<1>
    input io_g : UInt<1>
    input io_h : UInt<1>
    output io_i : UInt<1>
    output io_j : UInt<1>
    output io_k : UInt<1>
    output io_l : UInt<1>
    output io_m : UInt<1>
    output io_n : UInt<1>
    output io_o : UInt<1>
    output io_p : UInt<1>

    node _io_i_T = xor(io_a, io_b) @[fourbithalfadder.scala 25:18]
    node _io_j_T = and(io_a, io_b) @[fourbithalfadder.scala 26:18]
    node _io_k_T = xor(io_c, io_d) @[fourbithalfadder.scala 27:18]
    node _io_l_T = and(io_c, io_d) @[fourbithalfadder.scala 28:18]
    node _io_m_T = xor(io_e, io_f) @[fourbithalfadder.scala 29:18]
    node _io_n_T = and(io_e, io_f) @[fourbithalfadder.scala 30:18]
    node _io_o_T = xor(io_g, io_h) @[fourbithalfadder.scala 31:18]
    node _io_p_T = and(io_g, io_h) @[fourbithalfadder.scala 32:18]
    io_i <= _io_i_T @[fourbithalfadder.scala 25:10]
    io_j <= _io_j_T @[fourbithalfadder.scala 26:10]
    io_k <= _io_k_T @[fourbithalfadder.scala 27:10]
    io_l <= _io_l_T @[fourbithalfadder.scala 28:10]
    io_m <= _io_m_T @[fourbithalfadder.scala 29:10]
    io_n <= _io_n_T @[fourbithalfadder.scala 30:10]
    io_o <= _io_o_T @[fourbithalfadder.scala 31:10]
    io_p <= _io_p_T @[fourbithalfadder.scala 32:10]
