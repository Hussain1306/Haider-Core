circuit adderwithoffset :
  module adderwithoffset :
    input clock : Clock
    input reset : UInt<1>
    input io_a : SInt<16>
    input io_b : UInt<16>
    output io_c : UInt<16>

    node y1 = asSInt(UInt<5>("h17")) @[adderwithoffset.scala 13:21]
    node _in1_T = add(io_a, y1) @[adderwithoffset.scala 14:20]
    node _in1_T_1 = tail(_in1_T, 1) @[adderwithoffset.scala 14:20]
    node in1 = asSInt(_in1_T_1) @[adderwithoffset.scala 14:20]
    node _io_c_T = asUInt(in1) @[adderwithoffset.scala 15:17]
    node _io_c_T_1 = add(_io_c_T, io_b) @[adderwithoffset.scala 15:24]
    node _io_c_T_2 = tail(_io_c_T_1, 1) @[adderwithoffset.scala 15:24]
    io_c <= _io_c_T_2 @[adderwithoffset.scala 15:10]
