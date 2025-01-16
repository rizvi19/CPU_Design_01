`include "../Level_01_BASIC/and_gate.v"
`include "../Level_01_BASIC/xor_gate.v"

module half_adder(
    input in0, in1,
    output sum, carry
);


// ################## Approach 1 #########################

assign {carry, sum} = in0 + in1;




// ################### Aproach 2: Using pre-made Modules and Gates #########################

// xor_gate s(
//     .in0(in0),
//     .in1(in1),
//     .out(sum)
// );

// and_gate a(
//     .in0(in0),
//     .in1(in1),
//     .out(carry)
// );

endmodule