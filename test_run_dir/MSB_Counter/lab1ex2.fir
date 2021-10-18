;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab1ex2 : 
  module lab1ex2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {result : UInt<1>}
    
    node _max_T = shl(UInt<1>("h01"), 8) @[lab1ex2.scala 10:20]
    node _max_T_1 = sub(_max_T, UInt<1>("h01")) @[lab1ex2.scala 10:36]
    node max = tail(_max_T_1, 1) @[lab1ex2.scala 10:36]
    reg count : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[lab1ex2.scala 11:24]
    node _T = eq(count, max) @[lab1ex2.scala 13:16]
    when _T : @[lab1ex2.scala 13:24]
      skip @[lab1ex2.scala 13:24]
    else : @[lab1ex2.scala 16:16]
      node _count_T = add(count, UInt<1>("h01")) @[lab1ex2.scala 17:24]
      node _count_T_1 = tail(_count_T, 1) @[lab1ex2.scala 17:24]
      count <= _count_T_1 @[lab1ex2.scala 17:15]
      skip @[lab1ex2.scala 16:16]
    node _T_1 = dshr(count, UInt<2>("h03")) @[lab1ex2.scala 19:15]
    node _T_2 = bits(_T_1, 0, 0) @[lab1ex2.scala 19:15]
    node _T_3 = eq(_T_2, UInt<1>("h01")) @[lab1ex2.scala 19:21]
    when _T_3 : @[lab1ex2.scala 19:29]
      count <= UInt<1>("h00") @[lab1ex2.scala 20:15]
      skip @[lab1ex2.scala 19:29]
    node _io_result_T = dshr(count, UInt<2>("h03")) @[lab1ex2.scala 22:23]
    node _io_result_T_1 = bits(_io_result_T, 0, 0) @[lab1ex2.scala 22:23]
    io.result <= _io_result_T_1 @[lab1ex2.scala 22:15]
    
