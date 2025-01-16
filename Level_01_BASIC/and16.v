`include "and_gate.v"

module and16(
    input [15:0] in0, in1, 
    output [15:0] out
);

and_gate and0 (
    .in0(in0[0]), 
    .in1(in1[0]), 
    .out(out[0])
);

and_gate and1 (
    .in0(in0[1]), 
    .in1(in1[1]), 
    .out(out[1])
);

and_gate and2 (
    .in0(in0[2]), 
    .in1(in1[2]), 
    .out(out[2])
);

and_gate and3 (
    .in0(in0[3]), 
    .in1(in1[3]), 
    .out(out[3])
);

and_gate and4 (
    .in0(in0[4]), 
    .in1(in1[4]), 
    .out(out[4])
);

and_gate and5 (
    .in0(in0[5]), 
    .in1(in1[5]), 
    .out(out[5])
);

and_gate and6 (
    .in0(in0[6]), 
    .in1(in1[6]), 
    .out(out[6])
);

and_gate and7 (
    .in0(in0[7]), 
    .in1(in1[7]), 
    .out(out[7])
);

and_gate and8 (
    .in0(in0[8]), 
    .in1(in1[8]), 
    .out(out[8])
);

and_gate and9 (
    .in0(in0[9]), 
    .in1(in1[9]), 
    .out(out[9])
);

and_gate and10 (
    .in0(in0[10]), 
    .in1(in1[10]), 
    .out(out[10])
);

and_gate and11 (
    .in0(in0[11]), 
    .in1(in1[11]), 
    .out(out[11])
);

and_gate and12 (
    .in0(in0[12]), 
    .in1(in1[12]), 
    .out(out[12])
);

and_gate and13 (
    .in0(in0[13]), 
    .in1(in1[13]), 
    .out(out[13])
);

and_gate and14 (
    .in0(in0[14]), 
    .in1(in1[14]), 
    .out(out[14])
);

and_gate and15 (
    .in0(in0[15]), 
    .in1(in1[15]), 
    .out(out[15])
);

endmodule