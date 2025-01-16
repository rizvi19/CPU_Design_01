`include "mux16.v"

module mux8way16(
    input [15:0] in0, in1, in2, in3, in4, in5, in6, in7,
    input [2:0] sel,
    output [15:0] out
);

wire [15:0] w1, w2, w3, w4, w5, w6;

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
    .in0(in4),
    .in1(in5),
    .sel(sel[0]),
    .out(w3)
);

mux16 mux4(
    .in0(in6),
    .in1(in7),
    .sel(sel[0]),
    .out(w4)
);

mux16 mux5(
    .in0(w1),
    .in1(w2),
    .sel(sel[1]),
    .out(w5)
);

mux16 mux6(
    .in0(w3),
    .in1(w4),
    .sel(sel[1]),
    .out(w6)
);

mux16 mux7(
    .in0(w5),
    .in1(w6),
    .sel(sel[2]),
    .out(out)
);


endmodule