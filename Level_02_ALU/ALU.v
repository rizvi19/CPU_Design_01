`include "../Level_01_BASIC/and16.v"
`include "../Level_01_BASIC/or16.v"
`include "../Level_01_BASIC/xor16.v"
`include "left_shift_16bit.v"
`include "right_shift_16bit.v"
`include "add_sub_16bit.v"
`include "left_shift_rotate_16bit.v"
`include "right_shift_rotate_16bit.v"
`include "../Level_01_BASIC/not16.v"


module ALU(
    input [15:0] A, B,
    input [3:0] opcode,
    output reg [15:0] R,
    output CF, SF, ZF

);

reg sel;
wire andw, orw, xorw, lshw, rshw, addsub, cf_, lshrw, rshrw, notw; 

and16 and1(
    .in0(A),
    .in1(B),
    .out(andw)
);

or16 or1(
    .in0_16b(A),
    .in1_16b(B),
    .out_16b(orw)
);

xor16 xor1(
    .in0_16b(A),
    .in1_16b(B),
    .out_16b(xorw)
);

left_shift_16bit LSH1(
    .in(A),
    .shift(B[3:0]),
    .out(lshw)
);

right_shift_16bit RSH1(
    .in(A),
    .shift(B[3:0]),
    .out(rshw)
);

add_sub_16bit as(
    .in0(A),
    .in1(B),
    .sel(sel),
    .res(addsub),
    .cout(cf_)
);

left_shift_rotate_16bit LSHR1(
    .in(A),
    .shift(B[3:0]),
    .out(lshrw)
);

right_shift_rotate_16bit RSHR1(
    .in(A),
    .shift(B[3:0]),
    .out(rshrw)
);

not16 not1(
    .in(A),
    .out(notw)
);



always @(*) begin
    case(opcode)
        // SELECT AND GATE
        4'b0000: begin
            R = andw;
        end

        //SELECT OR GATE
        4'b0001: begin
            R = orw;
        end

        //SELECT XOR GATE
        4'b0010: begin
            R = xorw;
        end

        //SELECT LEFT SHIFT
        4'b0011: begin
            R = lshw;
        end

        //SELECT RIGHT SHIFT
        4'b0100: begin
            R = rshw;
        end

        //SELECT ADD
        4'b0101: begin
            sel=0;
            R = addsub;
        end

        //SELECT SUB
        4'b0110: begin
            sel=1;
            R = addsub;
        end

        // HERE WILL BE MULT

        //SELECT LEFT SHIFT ROTATE
        4'b1000: begin
            R = lshrw;
        end

        //SELECT RIGHT SHIFT ROTATE
        4'b1001: begin
            R = rshrw;
        end

        //SELECT NOT GATE
        4'b1010: begin
            R = notw;
        end

        //SELECT CMP
        4'b1011: begin
            sel=1;
        end

        // HERE WILL BE DIV

        default: begin
            R = 16'b0000_0000_0000_0000;
        end
    endcase
end

//FLAGS
assign CF = ((opcode==4'b0101 || opcode==4'b0110)?cf_:1'b0);
assign SF = R[15];
assign ZF = ~(R[15] || R[14] || R[13] || R[12] || R[11] || R[10] || R[9] || R[8] || R[7] || R[6] || R[5] || R[4] || R[3] || R[2] || R[1] || R[0]);




endmodule