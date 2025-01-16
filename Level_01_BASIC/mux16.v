`include "mux.v"

module mux16(
    input [15:0] in0, in1,
    input sel,
    output [15:0] out
);

mux m0(
    .in0(in0[0]),
    .in1(in1[0]),
    .sel(sel),
    .out(out[0])
);

mux m1(
    .in0(in0[1]),
    .in1(in1[1]),
    .sel(sel),
    .out(out[1])
);

mux m2(
    .in0(in0[2]),
    .in1(in1[2]),
    .sel(sel),
    .out(out[2])
);

mux m3(
    .in0(in0[3]),
    .in1(in1[3]),
    .sel(sel),
    .out(out[3])
);

mux m4(
    .in0(in0[4]),
    .in1(in1[4]),
    .sel(sel),
    .out(out[4])
);

mux m5(
    .in0(in0[5]),
    .in1(in1[5]),
    .sel(sel),
    .out(out[5])
);

mux m6(
    .in0(in0[6]),
    .in1(in1[6]),
    .sel(sel),
    .out(out[6])
);

mux m7(
    .in0(in0[7]),
    .in1(in1[7]),
    .sel(sel),
    .out(out[7])
);

mux m8(
    .in0(in0[8]),
    .in1(in1[8]),
    .sel(sel),
    .out(out[8])
);

mux m9(
    .in0(in0[9]),
    .in1(in1[9]),
    .sel(sel),
    .out(out[9])
);

mux m10(
    .in0(in0[10]),
    .in1(in1[10]),
    .sel(sel),
    .out(out[10])
);

mux m11(
    .in0(in0[11]),
    .in1(in1[11]),
    .sel(sel),
    .out(out[11])
);

mux m12(
    .in0(in0[12]),
    .in1(in1[12]),
    .sel(sel),
    .out(out[12])
);

mux m13(
    .in0(in0[13]),
    .in1(in1[13]),
    .sel(sel),
    .out(out[13])
);

mux m14(
    .in0(in0[14]),
    .in1(in1[14]),
    .sel(sel),
    .out(out[14])
);

mux m15(
    .in0(in0[15]),
    .in1(in1[15]),
    .sel(sel),
    .out(out[15])
);

endmodule