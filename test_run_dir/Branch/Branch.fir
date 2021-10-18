;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Branch : 
  module Branch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip fnct3 : UInt<3>, flip branch : UInt<1>, flip arg_x : UInt<32>, flip arg_y : UInt<32>, br_taken : UInt<1>}
    
    io.br_taken <= UInt<1>("h00") @[Branch.scala 28:17]
    node _T = eq(UInt<1>("h01"), io.branch) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      node _io_br_taken_T = eq(io.arg_x, io.arg_y) @[Branch.scala 18:24]
      node _io_br_taken_T_1 = eq(io.fnct3, UInt<1>("h00")) @[Branch.scala 18:51]
      node _io_br_taken_T_2 = and(_io_br_taken_T, _io_br_taken_T_1) @[Branch.scala 18:38]
      node _io_br_taken_T_3 = neq(io.arg_x, io.arg_y) @[Branch.scala 19:24]
      node _io_br_taken_T_4 = eq(io.fnct3, UInt<1>("h01")) @[Branch.scala 19:51]
      node _io_br_taken_T_5 = and(_io_br_taken_T_3, _io_br_taken_T_4) @[Branch.scala 19:38]
      node _io_br_taken_T_6 = lt(io.arg_x, io.arg_y) @[Branch.scala 20:24]
      node _io_br_taken_T_7 = eq(io.fnct3, UInt<3>("h04")) @[Branch.scala 20:49]
      node _io_br_taken_T_8 = eq(io.fnct3, UInt<3>("h06")) @[Branch.scala 20:73]
      node _io_br_taken_T_9 = or(_io_br_taken_T_7, _io_br_taken_T_8) @[Branch.scala 20:62]
      node _io_br_taken_T_10 = and(_io_br_taken_T_6, _io_br_taken_T_9) @[Branch.scala 20:36]
      node _io_br_taken_T_11 = geq(io.arg_x, io.arg_y) @[Branch.scala 21:24]
      node _io_br_taken_T_12 = eq(io.fnct3, UInt<3>("h05")) @[Branch.scala 21:50]
      node _io_br_taken_T_13 = eq(io.fnct3, UInt<3>("h07")) @[Branch.scala 21:74]
      node _io_br_taken_T_14 = or(_io_br_taken_T_12, _io_br_taken_T_13) @[Branch.scala 21:63]
      node _io_br_taken_T_15 = and(_io_br_taken_T_11, _io_br_taken_T_14) @[Branch.scala 21:37]
      node _io_br_taken_T_16 = mux(_io_br_taken_T_15, UInt<1>("h01"), UInt<1>("h00")) @[Mux.scala 98:16]
      node _io_br_taken_T_17 = mux(_io_br_taken_T_10, UInt<1>("h01"), _io_br_taken_T_16) @[Mux.scala 98:16]
      node _io_br_taken_T_18 = mux(_io_br_taken_T_5, UInt<1>("h01"), _io_br_taken_T_17) @[Mux.scala 98:16]
      node _io_br_taken_T_19 = mux(_io_br_taken_T_2, UInt<1>("h01"), _io_br_taken_T_18) @[Mux.scala 98:16]
      io.br_taken <= _io_br_taken_T_19 @[Branch.scala 30:34]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h00"), io.branch) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        io.br_taken <= UInt<1>("h00") @[Branch.scala 31:35]
        skip @[Conditional.scala 39:67]
    
