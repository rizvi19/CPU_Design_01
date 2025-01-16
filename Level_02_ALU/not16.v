`include "not_gate.v"

module not16(
    input [15:0] in, 
    output [15:0] out
);


not_gate not0(
    .in(in[0]), 
    .out(out[0])
);
not_gate not1(
    .in(in[1]), 
    .out(out[1])
);
not_gate not2(
    .in(in[2]), 
    .out(out[2])
);
not_gate not3(
    .in(in[3]), 
    .out(out[3])
);
not_gate not4(
    .in(in[4]), 
    .out(out[4])
);
not_gate not5(
    .in(in[5]), 
    .out(out[5])
);
not_gate not6(
    .in(in[6]), 
    .out(out[6])
);
not_gate not7(
    .in(in[7]), 
    .out(out[7])
);
not_gate not8(
    .in(in[8]), 
    .out(out[8])
);
not_gate not9(
    .in(in[9]), 
    .out(out[9])
);
not_gate not10(
    .in(in[10]), 
    .out(out[10])
);
not_gate not11(
    .in(in[11]), 
    .out(out[11])
);
not_gate not12(
    .in(in[12]), 
    .out(out[12])
);
not_gate not13(
    .in(in[13]), 
    .out(out[13])
);
not_gate not14(
    .in(in[14]), 
    .out(out[14])
);
not_gate not15(
    .in(in[15]), 
    .out(out[15])
);


endmodule