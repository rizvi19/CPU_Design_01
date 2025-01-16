`include "or_gate.v"

module or8way(
    input [7:0] in_8b,
    output out
);

wire w0, w1, w2, w3, w4, w5, w6, w7;

or_gate or0(
    .in0(in_8b[0]),
    .in1(in_8b[1]),
    .out(w0)
);

or_gate or1(
    .in0(w0),
    .in1(in_8b[2]),
    .out(w1)
);

or_gate or2(
    .in0(w1),
    .in1(in_8b[3]),
    .out(w2)
);

or_gate or3(
    .in0(w2),
    .in1(in_8b[4]),
    .out(w3)
);

or_gate or4(
    .in0(w3),
    .in1(in_8b[5]),
    .out(w4)
);

or_gate or5(
    .in0(w4),
    .in1(in_8b[6]),
    .out(w5)
);

or_gate or6(
    .in0(w5),
    .in1(in_8b[7]),
    .out(out)
);


endmodule