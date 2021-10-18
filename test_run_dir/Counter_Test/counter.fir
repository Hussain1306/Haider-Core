;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit counter : 
  module counter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {o : UInt<16>}
    
    node _max_T = dshl(UInt<1>("h01"), UInt<2>("h03")) @[counter.scala 9:20]
    node _max_T_1 = sub(_max_T, UInt<1>("h01")) @[counter.scala 9:36]
    node max = tail(_max_T_1, 1) @[counter.scala 9:36]
    reg count : UInt<16>, clock with : (reset => (reset, UInt<16>("h00"))) @[counter.scala 10:26]
    node _T = eq(count, max) @[counter.scala 12:18]
    when _T : @[counter.scala 12:28]
      count <= UInt<1>("h00") @[counter.scala 13:15]
      skip @[counter.scala 12:28]
    else : @[counter.scala 14:18]
      node _count_T = add(count, UInt<1>("h01")) @[counter.scala 15:24]
      node _count_T_1 = tail(_count_T, 1) @[counter.scala 15:24]
      count <= _count_T_1 @[counter.scala 15:15]
      skip @[counter.scala 14:18]
    node _io_o_T = dshr(count, UInt<4>("h0f")) @[counter.scala 17:19]
    node _io_o_T_1 = bits(_io_o_T, 0, 0) @[counter.scala 17:19]
    io.o <= _io_o_T_1 @[counter.scala 17:10]
    
