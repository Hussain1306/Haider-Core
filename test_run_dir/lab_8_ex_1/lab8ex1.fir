;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab8ex1 : 
  module lab8ex1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip enable : UInt<1>, flip write : UInt<1>, flip addr : UInt<10>, flip mask : UInt<1>[4], flip dataIn : UInt<8>[4], dataOut : UInt<8>[4]}
    
    smem mem : UInt<8>[4][1024], undefined @[lab8ex1.scala 18:26]
    reg a : UInt[4], clock @[lab8ex1.scala 19:17]
    node _a_0_T = and(io.dataIn[0], io.mask[0]) @[lab8ex1.scala 20:26]
    a[0] <= _a_0_T @[lab8ex1.scala 20:10]
    node _a_1_T = and(io.dataIn[1], io.mask[1]) @[lab8ex1.scala 21:26]
    a[1] <= _a_1_T @[lab8ex1.scala 21:10]
    node _a_2_T = and(io.dataIn[2], io.mask[2]) @[lab8ex1.scala 22:26]
    a[2] <= _a_2_T @[lab8ex1.scala 22:10]
    node _a_3_T = and(io.dataIn[3], io.mask[3]) @[lab8ex1.scala 23:26]
    a[3] <= _a_3_T @[lab8ex1.scala 23:10]
    when io.write : @[lab8ex1.scala 25:19]
      write mport MPORT = mem[io.addr], clock
      MPORT[0] <= a[0]
      MPORT[1] <= a[1]
      MPORT[2] <= a[2]
      MPORT[3] <= a[3]
      skip @[lab8ex1.scala 25:19]
    wire _WIRE : UInt @[lab8ex1.scala 29:27]
    _WIRE is invalid @[lab8ex1.scala 29:27]
    when io.enable : @[lab8ex1.scala 29:27]
      _WIRE <= io.addr @[lab8ex1.scala 29:27]
      node _T = or(_WIRE, UInt<10>("h00")) @[lab8ex1.scala 29:27]
      node _T_1 = bits(_T, 9, 0) @[lab8ex1.scala 29:27]
      read mport MPORT_1 = mem[_T_1], clock @[lab8ex1.scala 29:27]
      skip @[lab8ex1.scala 29:27]
    io.dataOut[0] <= MPORT_1[0] @[lab8ex1.scala 29:16]
    io.dataOut[1] <= MPORT_1[1] @[lab8ex1.scala 29:16]
    io.dataOut[2] <= MPORT_1[2] @[lab8ex1.scala 29:16]
    io.dataOut[3] <= MPORT_1[3] @[lab8ex1.scala 29:16]
    
