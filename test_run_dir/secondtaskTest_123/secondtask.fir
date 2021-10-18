;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit secondtask : 
  module secondtask : 
    input clock : Clock
    input reset : UInt<1>
    output io : {c : UInt<1>}
    
    reg indicate : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[secondtask.scala 12:27]
    reg count : UInt<12>, clock with : (reset => (reset, UInt<12>("h00"))) @[secondtask.scala 13:24]
    node _T = eq(indicate, UInt<1>("h01")) @[secondtask.scala 16:19]
    when _T : @[secondtask.scala 16:30]
      node _T_1 = eq(count, UInt<3>("h06")) @[secondtask.scala 17:20]
      when _T_1 : @[secondtask.scala 17:33]
        io.c <= UInt<1>("h01") @[secondtask.scala 18:18]
        indicate <= UInt<1>("h00") @[secondtask.scala 19:22]
        node _count_T = sub(count, UInt<1>("h01")) @[secondtask.scala 20:28]
        node _count_T_1 = tail(_count_T, 1) @[secondtask.scala 20:28]
        count <= _count_T_1 @[secondtask.scala 20:19]
        skip @[secondtask.scala 17:33]
      else : @[secondtask.scala 22:19]
        node _count_T_2 = add(count, UInt<1>("h01")) @[secondtask.scala 23:28]
        node _count_T_3 = tail(_count_T_2, 1) @[secondtask.scala 23:28]
        count <= _count_T_3 @[secondtask.scala 23:19]
        skip @[secondtask.scala 22:19]
      skip @[secondtask.scala 16:30]
    else : @[secondtask.scala 26:15]
      node _T_2 = eq(count, UInt<1>("h00")) @[secondtask.scala 27:16]
      when _T_2 : @[secondtask.scala 27:24]
        io.c <= UInt<1>("h01") @[secondtask.scala 28:14]
        indicate <= UInt<1>("h01") @[secondtask.scala 29:18]
        node _count_T_4 = add(count, UInt<1>("h01")) @[secondtask.scala 30:24]
        node _count_T_5 = tail(_count_T_4, 1) @[secondtask.scala 30:24]
        count <= _count_T_5 @[secondtask.scala 30:15]
        skip @[secondtask.scala 27:24]
      else : @[secondtask.scala 32:15]
        node _count_T_6 = sub(count, UInt<1>("h01")) @[secondtask.scala 33:24]
        node _count_T_7 = tail(_count_T_6, 1) @[secondtask.scala 33:24]
        count <= _count_T_7 @[secondtask.scala 33:15]
        skip @[secondtask.scala 32:15]
      skip @[secondtask.scala 26:15]
    node _io_c_T = bits(count, 0, 0) @[secondtask.scala 36:18]
    io.c <= _io_c_T @[secondtask.scala 36:10]
    
