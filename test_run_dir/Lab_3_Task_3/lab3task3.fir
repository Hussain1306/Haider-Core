;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab3task3 : 
  module lab3task3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<2>, out : {valid : UInt<1>, bits : UInt<4>}}
    
    io.out.valid <= UInt<1>("h00") @[lab3task3.scala 14:18]
    io.out.bits <= UInt<1>("h00") @[lab3task3.scala 15:17]
    node _T = eq(UInt<1>("h00"), io.in) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      io.out.valid <= UInt<1>("h01") @[lab3task3.scala 19:18]
      io.out.bits <= UInt<1>("h01") @[lab3task3.scala 20:17]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.in) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        io.out.valid <= UInt<1>("h01") @[lab3task3.scala 23:18]
        io.out.bits <= UInt<2>("h02") @[lab3task3.scala 24:17]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.in) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          io.out.valid <= UInt<1>("h01") @[lab3task3.scala 27:18]
          io.out.bits <= UInt<3>("h04") @[lab3task3.scala 28:17]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.in) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            io.out.valid <= UInt<1>("h01") @[lab3task3.scala 31:18]
            io.out.bits <= UInt<4>("h08") @[lab3task3.scala 32:17]
            skip @[Conditional.scala 39:67]
    
