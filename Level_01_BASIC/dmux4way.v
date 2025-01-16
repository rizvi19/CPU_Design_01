`include "dmux.v"

module dmux4way(
    input in, 
    input [1:0] sel,
    output out0, out1, out2, out3
);

wire w1, w2;

dmux mux1(
    .in(in),
    .sel(sel[1]),
    .out0(w1),
    .out1(w2)
);

dmux mux2(
    .in(w1),
    .sel(sel[0]),
    .out0(out0),
    .out1(out1)
);

dmux mux3(
    .in(w2),
    .sel(sel[0]),
    .out0(out2),
    .out1(out3)
);

endmodule