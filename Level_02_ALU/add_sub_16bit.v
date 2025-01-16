`include "../Level_01_BASIC/not16.v"
`include "full_adder_1bit.v"

module add_sub_16bit(
    input [15:0] in0, in1,
    input sel,
    output [15:0] sum, 
    output cout
);

// ################## Approach 1 #########################
wire [15:0] w1;

not16 cir1(
    .in(in1),
    .out(w1)
);

assign {cout, sum} = (sel? in0 + w1 + sel : in0 + in1 + sel);



// ################### Aproach 2: Using pre-made Modules and Gates #########################

// wire notb0, cout0;

// xor_gate xor0(
//     .in0(in1[0]),
//     .in1(sel),
//     .out(notb0)
// );

// full_adder_1bit cir0(
//     .in0(in0[0]),
//     .in1(notb0),
//     .cin(sel),
//     .sum(sum[0]),
//     .cout(cout0)
// );


// wire notb1, cout1;

// xor_gate xor1(
//     .in0(in1[1]),
//     .in1(sel),
//     .out(notb1)
// );

// full_adder_1bit cir1(
//     .in0(in0[1]),
//     .in1(notb1),
//     .cin(cout0),
//     .sum(sum[1]),
//     .cout(cout1)
// );



// wire notb2, cout2;

// xor_gate xor2(
//     .in0(in1[2]),
//     .in1(sel),
//     .out(notb2)
// );

// full_adder_1bit cir2(
//     .in0(in0[2]),
//     .in1(notb2),
//     .cin(cout1),
//     .sum(sum[2]),
//     .cout(cout2)
// );


// wire notb3, cout3;

// xor_gate xor3(
//     .in0(in1[3]),
//     .in1(sel),
//     .out(notb3)
// );

// full_adder_1bit cir3(
//     .in0(in0[3]),
//     .in1(notb3),
//     .cin(cout2),
//     .sum(sum[3]),
//     .cout(cout3)
// );



// wire notb4, cout4;

// xor_gate xor4(
//     .in0(in1[4]),
//     .in1(sel),
//     .out(notb4)
// );

// full_adder_1bit cir4(
//     .in0(in0[4]),
//     .in1(notb4),
//     .cin(cout3),
//     .sum(sum[4]),
//     .cout(cout4)
// );



// wire notb5, cout5;

// xor_gate xor5(
//     .in0(in1[5]),
//     .in1(sel),
//     .out(notb5)
// );

// full_adder_1bit cir5(
//     .in0(in0[5]),
//     .in1(notb5),
//     .cin(cout4),
//     .sum(sum[5]),
//     .cout(cout5)
// );


// wire notb6, cout6;

// xor_gate xor6(
//     .in0(in1[6]),
//     .in1(sel),
//     .out(notb6)
// );

// full_adder_1bit cir6(
//     .in0(in0[6]),
//     .in1(notb6),
//     .cin(cout5),
//     .sum(sum[6]),
//     .cout(cout6)
// );


// wire notb7, cout7;

// xor_gate xor7(
//     .in0(in1[7]),
//     .in1(sel),
//     .out(notb7)
// );

// full_adder_1bit cir7(
//     .in0(in0[7]),
//     .in1(notb7),
//     .cin(cout6),
//     .sum(sum[7]),
//     .cout(cout7)
// );


// wire notb8, cout8;

// xor_gate xor8(
//     .in0(in1[8]),
//     .in1(sel),
//     .out(notb8)
// );

// full_adder_1bit cir8(
//     .in0(in0[8]),
//     .in1(notb8),
//     .cin(cout7),
//     .sum(sum[8]),
//     .cout(cout8)
// );



// wire notb9, cout9;

// xor_gate xor9(
//     .in0(in1[9]),
//     .in1(sel),
//     .out(notb9)
// );

// full_adder_1bit cir9(
//     .in0(in0[9]),
//     .in1(notb9),
//     .cin(cout8),
//     .sum(sum[9]),
//     .cout(cout9)
// );


// wire notb10, cout10;

// xor_gate xor10(
//     .in0(in1[10]),
//     .in1(sel),
//     .out(notb10)
// );

// full_adder_1bit cir10(
//     .in0(in0[10]),
//     .in1(notb10),
//     .cin(cout9),
//     .sum(sum[10]),
//     .cout(cout10)
// );



// wire notb11, cout11;

// xor_gate xor11(
//     .in0(in1[11]),
//     .in1(sel),
//     .out(notb11)
// );

// full_adder_1bit cir11(
//     .in0(in0[11]),
//     .in1(notb11),
//     .cin(cout10),
//     .sum(sum[11]),
//     .cout(cout11)
// );


// wire notb12, cout12;

// xor_gate xor12(
//     .in0(in1[12]),
//     .in1(sel),
//     .out(notb12)
// );

// full_adder_1bit cir12(
//     .in0(in0[12]),
//     .in1(notb12),
//     .cin(cout11),
//     .sum(sum[12]),
//     .cout(cout12)
// );


// wire notb13, cout13;

// xor_gate xor13(
//     .in0(in1[13]),
//     .in1(sel),
//     .out(notb13)
// );

// full_adder_1bit cir13(
//     .in0(in0[13]),
//     .in1(notb13),
//     .cin(cout12),
//     .sum(sum[13]),
//     .cout(cout13)
// );



// wire notb14, cout14;

// xor_gate xor14(
//     .in0(in1[14]),
//     .in1(sel),
//     .out(notb14)
// );

// full_adder_1bit cir14(
//     .in0(in0[14]),
//     .in1(notb14),
//     .cin(cout13),
//     .sum(sum[14]),
//     .cout(cout14)
// );


// wire notb15;

// xor_gate xor15(
//     .in0(in1[15]),
//     .in1(sel),
//     .out(notb15)
// );

// full_adder_1bit cir15(
//     .in0(in0[15]),
//     .in1(notb15),
//     .cin(cout14),
//     .sum(sum[15]),
//     .cout(cout)
// );



endmodule