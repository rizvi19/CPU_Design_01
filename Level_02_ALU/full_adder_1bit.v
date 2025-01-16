`include "../Level_01_BASIC/and_gate.v"
`include "../Level_01_BASIC/xor_gate.v"
`include "../Level_01_BASIC/or_gate.v"

module full_adder_1bit(
    input in0, in1, cin,
    output sum, cout
);


// ######################### Approach 1 ########################

assign {cout, sum} = in0 + in1 + cin;




// ################### Aproach 2: Using pre-made Modules and Gates #########################

// wire w1, w2, w3;

// xor_gate cir1(
//     .in0(in0),
//     .in1(in1),
//     .out(w1)
// );

// xor_gate cir2(
//     .in0(w1),
//     .in1(cin),
//     .out(sum)
// );

// and_gate cir3(
//     .in0(in0),
//     .in1(in1),
//     .out(w2)
// );

// and_gate cir4(
//     .in0(w1),
//     .in1(cin),
//     .out(w3)
// );

// or_gate cir5(
//     .in0(w2),
//     .in1(w3),
//     .out(cout)
// );


endmodule