;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab6ex2 : 
  module lab6ex2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<2>}
    
    reg counter : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[lab6ex2.scala 12:26]
    node _count_buffer_T = add(counter, UInt<1>("h01")) @[lab6ex2.scala 14:68]
    node _count_buffer_T_1 = tail(_count_buffer_T, 1) @[lab6ex2.scala 14:68]
    node _count_buffer_T_2 = eq(counter, UInt<3>("h04")) @[lab6ex2.scala 15:17]
    node _count_buffer_T_3 = add(counter, UInt<1>("h01")) @[lab6ex2.scala 15:45]
    node _count_buffer_T_4 = tail(_count_buffer_T_3, 1) @[lab6ex2.scala 15:45]
    node _count_buffer_T_5 = mux(_count_buffer_T_2, UInt<1>("h00"), _count_buffer_T_4) @[lab6ex2.scala 15:8]
    node count_buffer = mux(UInt<1>("h01"), _count_buffer_T_1, _count_buffer_T_5) @[lab6ex2.scala 14:27]
    counter <= count_buffer @[lab6ex2.scala 17:13]
    io.out <= counter @[lab6ex2.scala 18:12]
    
