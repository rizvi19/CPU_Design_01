`include "mux16.v"

module mux4way16(
    input [15:0] in0, in1, in2, in3,
    input [1:0] sel,
    output [15:0] out
);

wire [15:0] w1, w2;

mux16 mux1(
    .in0(in0),
    .in1(in1),
    .sel(sel[0]),
    .out(w1)
);

mux16 mux2(
    .in0(in2),
    .in1(in3),
    .sel(sel[0]),
    .out(w2)
);

mux16 mux3(
    .in0(w1),
    .in1(w2),
    .sel(sel[1]),
    .out(out)
);


endmodule