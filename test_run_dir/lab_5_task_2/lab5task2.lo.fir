circuit lab5task2 :
  module lab5task2 :
    input clock : Clock
    input reset : UInt<1>
    output io_out_datafield : UInt<5>
    output io_out_addrfield : UInt<10>
    input io_in_datafield : UInt<5>
    input io_in_addrfield : UInt<10>

    io_out_datafield <= io_in_datafield @[lab5task2.scala 18:12]
    io_out_addrfield <= io_in_addrfield @[lab5task2.scala 18:12]
