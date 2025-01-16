`include "or_gate.v"

module or16(
    input [15:0] in0_16b, in1_16b,
    output [15:0] out_16b
);

or_gate or0(
    .in0(in0_16b[0]),
    .in1(in1_16b[0]),
    .out(out_16b[0])
);

or_gate or1(
    .in0(in0_16b[1]),
    .in1(in1_16b[1]),
    .out(out_16b[1])
);

or_gate or2(
    .in0(in0_16b[2]),
    .in1(in1_16b[2]),
    .out(out_16b[2])
);

or_gate or3(
    .in0(in0_16b[3]),
    .in1(in1_16b[3]),
    .out(out_16b[3])
);

or_gate or4(
    .in0(in0_16b[4]),
    .in1(in1_16b[4]),
    .out(out_16b[4])
);

or_gate or5(
    .in0(in0_16b[5]),
    .in1(in1_16b[5]),
    .out(out_16b[5])
);

or_gate or6(
    .in0(in0_16b[6]),
    .in1(in1_16b[6]),
    .out(out_16b[6])
);

or_gate or7(
    .in0(in0_16b[7]),
    .in1(in1_16b[7]),
    .out(out_16b[7])
);

or_gate or8(
    .in0(in0_16b[8]),
    .in1(in1_16b[8]),
    .out(out_16b[8])
);

or_gate or9(
    .in0(in0_16b[9]),
    .in1(in1_16b[9]),
    .out(out_16b[9])
);

or_gate or10(
    .in0(in0_16b[10]),
    .in1(in1_16b[10]),
    .out(out_16b[10])
);

or_gate or11(
    .in0(in0_16b[11]),
    .in1(in1_16b[11]),
    .out(out_16b[11])
);

or_gate or12(
    .in0(in0_16b[12]),
    .in1(in1_16b[12]),
    .out(out_16b[12])
);

or_gate or13(
    .in0(in0_16b[13]),
    .in1(in1_16b[13]),
    .out(out_16b[13])
);

or_gate or14(
    .in0(in0_16b[14]),
    .in1(in1_16b[14]),
    .out(out_16b[14])
);

or_gate or15(
    .in0(in0_16b[15]),
    .in1(in1_16b[15]),
    .out(out_16b[15])
);


endmodule