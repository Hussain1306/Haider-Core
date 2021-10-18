;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit scounter : 
  module scounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {result : UInt<1>}
    
    node _max_T = asUInt(asSInt(UInt<4>("h04"))) @[scounter.scala 10:35]
    node _max_T_1 = dshl(UInt<1>("h01"), _max_T) @[scounter.scala 10:20]
    node _max_T_2 = asSInt(_max_T_1) @[scounter.scala 10:43]
    node _max_T_3 = sub(_max_T_2, asSInt(UInt<2>("h01"))) @[scounter.scala 10:50]
    node _max_T_4 = tail(_max_T_3, 1) @[scounter.scala 10:50]
    node max = asSInt(_max_T_4) @[scounter.scala 10:50]
    reg count : SInt<16>, clock with : (reset => (reset, asSInt(UInt<16>("h00")))) @[scounter.scala 11:24]
    node _T = eq(count, max) @[scounter.scala 13:17]
    when _T : @[scounter.scala 13:26]
      count <= asSInt(UInt<1>("h00")) @[scounter.scala 14:15]
      skip @[scounter.scala 13:26]
    else : @[scounter.scala 17:15]
      node _count_T = add(count, asSInt(UInt<2>("h01"))) @[scounter.scala 18:24]
      node _count_T_1 = tail(_count_T, 1) @[scounter.scala 18:24]
      node _count_T_2 = asSInt(_count_T_1) @[scounter.scala 18:24]
      count <= _count_T_2 @[scounter.scala 18:15]
      skip @[scounter.scala 17:15]
    node _io_result_T = dshr(count, UInt<4>("h0f")) @[scounter.scala 20:23]
    node _io_result_T_1 = bits(_io_result_T, 0, 0) @[scounter.scala 20:23]
    io.result <= _io_result_T_1 @[scounter.scala 20:15]
    
