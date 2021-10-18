circuit Top :
  module adderinputs :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<48>
    input io_in_bundle_in1 : UInt<20>
    input io_in_bundle_in2 : UInt<20>

    node _io_out_T = add(io_in_bundle_in1, io_in_bundle_in2) @[Top.scala 19:32]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Top.scala 19:32]
    io_out <= _io_out_T_1 @[Top.scala 19:12]

  module Top :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<48>
    input io_in : UInt<20>

    inst m of adderinputs @[Top.scala 28:19]
    node inBundle_in1 = validif(UInt<1>("h0"), UInt<20>("h0"))
    node inBundle_in2 = validif(UInt<1>("h0"), UInt<20>("h0"))
    io_out <= m.io_out @[Top.scala 31:12]
    m.clock <= clock
    m.reset <= reset
    m.io_in_bundle_in1 <= io_in @[Top.scala 29:24]
    m.io_in_bundle_in2 <= io_in @[Top.scala 30:24]
