`include "dmux.v"

module dmux8way(
    input in,
    input [2:0] sel,
    output out0, out1, out2, out3, out4, out5, out6, out7
);

wire w1, w2;

dmux mux1(
    .in(in),
    .sel(sel[2]),
    .out0(w1),
    .out1(w2)
);

dmux mux2(
    .in(w1),
    .sel(sel[1]),
    .out0(w3),
    .out1(w4)
);

dmux mux3(
    .in(w3),
    .sel(sel[0]),
    .out0(out0),
    .out1(out1)
);

dmux mux4(
    .in(w4),
    .sel(sel[0]),
    .out0(out2),
    .out1(out3)
);

dmux mux5(
    .in(w2),
    .sel(sel[1]),
    .out0(w5),
    .out1(w6)
);

dmux mux6(
    .in(w5),
    .sel(sel[0]),
    .out0(out4),
    .out1(ou5)
);

dmux mux7(
    .in(w6),
    .sel(sel[0]),
    .out0(out6),
    .out1(out7)
);




endmodule