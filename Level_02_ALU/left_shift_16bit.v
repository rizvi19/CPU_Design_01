`include "../Level_01_BASIC/mux16way_1bit.v"

module left_shift_16bit(
    input [15:0] in,
    input [3:0] shift,
    // output [15:0] out        //Approach 2
    output reg [15:0] out       //Approach 1
);

// ################## Approach 1 ######################

always @(*) begin
    
    case(shift)
        4'b0000: out = in;
        4'b0001: out = {in[14:0], 1'b0};
        4'b0010: out = {in[13:0], 2'b00};
        4'b0011: out = {in[12:0], 3'b000};
        4'b0100: out = {in[11:0], 4'b0000};
        4'b0101: out = {in[10:0], 5'b0000_0};
        4'b0110: out = {in[9:0], 6'b0000_00};
        4'b0111: out = {in[8:0], 7'b0000_000};
        4'b1000: out = {in[7:0], 8'b0000_0000};
        4'b1001: out = {in[6:0], 9'b0000_0000_0};
        4'b1010: out = {in[5:0], 10'b0000_0000_00};
        4'b1011: out = {in[4:0], 11'b0000_0000_000};
        4'b1100: out = {in[3:0], 12'b0000_0000_0000};
        4'b1101: out = {in[2:0], 13'b0000_0000_0000_0};
        4'b1110: out = {in[1:0], 14'b0000_0000_0000_00};
        4'b1111: out = {in[0], 15'b0000_0000_0000_000};
    endcase
end



// ################# Approach 2 #######################

// mux16way_1bit mux0(
//     .in0(in[15]),
//     .in1(in[14]),
//     .in2(in[13]),
//     .in3(in[12]),
//     .in4(in[11]),
//     .in5(in[10]),
//     .in6(in[9]),
//     .in7(in[8]),
//     .in8(in[7]),
//     .in9(in[6]),
//     .in10(in[5]),
//     .in11(in[4]),
//     .in12(in[3]),
//     .in13(in[2]),
//     .in14(in[1]),
//     .in15(in[0]),
//     .sel(shift),
//     .out(out[15])
// );

// mux16way_1bit mux1(
//     .in0(in[14]),
//     .in1(in[13]),
//     .in2(in[12]),
//     .in3(in[11]),
//     .in4(in[10]),
//     .in5(in[9]),
//     .in6(in[8]),
//     .in7(in[7]),
//     .in8(in[6]),
//     .in9(in[5]),
//     .in10(in[4]),
//     .in11(in[3]),
//     .in12(in[2]),
//     .in13(in[1]),
//     .in14(in[0]),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[14])
// );

// mux16way_1bit mux2(
//     .in0(in[13]),
//     .in1(in[12]),
//     .in2(in[11]),
//     .in3(in[10]),
//     .in4(in[9]),
//     .in5(in[8]),
//     .in6(in[7]),
//     .in7(in[6]),
//     .in8(in[5]),
//     .in9(in[4]),
//     .in10(in[3]),
//     .in11(in[2]),
//     .in12(in[1]),
//     .in13(in[0]),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[13])
// );

// mux16way_1bit mux3(
//     .in0(in[12]),
//     .in1(in[11]),
//     .in2(in[10]),
//     .in3(in[9]),
//     .in4(in[8]),
//     .in5(in[7]),
//     .in6(in[6]),
//     .in7(in[5]),
//     .in8(in[4]),
//     .in9(in[3]),
//     .in10(in[2]),
//     .in11(in[1]),
//     .in12(in[0]),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[12])
// );

// mux16way_1bit mux4(
//     .in0(in[11]),
//     .in1(in[10]),
//     .in2(in[9]),
//     .in3(in[8]),
//     .in4(in[7]),
//     .in5(in[6]),
//     .in6(in[5]),
//     .in7(in[4]),
//     .in8(in[3]),
//     .in9(in[2]),
//     .in10(in[1]),
//     .in11(in[0]),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[11])
// );

// mux16way_1bit mux5(
//     .in0(in[10]),
//     .in1(in[9]),
//     .in2(in[8]),
//     .in3(in[7]),
//     .in4(in[6]),
//     .in5(in[5]),
//     .in6(in[4]),
//     .in7(in[3]),
//     .in8(in[2]),
//     .in9(in[1]),
//     .in10(in[0]),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[10])
// );

// mux16way_1bit mux6(
//     .in0(in[9]),
//     .in1(in[8]),
//     .in2(in[7]),
//     .in3(in[6]),
//     .in4(in[5]),
//     .in5(in[4]),
//     .in6(in[3]),
//     .in7(in[2]),
//     .in8(in[1]),
//     .in9(in[0]),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[9])
// );

// mux16way_1bit mux7(
//     .in0(in[8]),
//     .in1(in[7]),
//     .in2(in[6]),
//     .in3(in[5]),
//     .in4(in[4]),
//     .in5(in[3]),
//     .in6(in[2]),
//     .in7(in[1]),
//     .in8(in[0]),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[8])
// );

// mux16way_1bit mux8(
//     .in0(in[7]),
//     .in1(in[6]),
//     .in2(in[5]),
//     .in3(in[4]),
//     .in4(in[3]),
//     .in5(in[2]),
//     .in6(in[1]),
//     .in7(in[0]),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[7])
// );

// mux16way_1bit mux9(
//     .in0(in[6]),
//     .in1(in[5]),
//     .in2(in[4]),
//     .in3(in[3]),
//     .in4(in[2]),
//     .in5(in[1]),
//     .in6(in[0]),
//     .in7(1'b0),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[6])
// );

// mux16way_1bit mux10(
//     .in0(in[5]),
//     .in1(in[4]),
//     .in2(in[3]),
//     .in3(in[2]),
//     .in4(in[1]),
//     .in5(in[0]),
//     .in6(1'b0),
//     .in7(1'b0),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[5])
// );

// mux16way_1bit mux11(
//     .in0(in[4]),
//     .in1(in[3]),
//     .in2(in[2]),
//     .in3(in[1]),
//     .in4(in[0]),
//     .in5(1'b0),
//     .in6(1'b0),
//     .in7(1'b0),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[4])
// );

// mux16way_1bit mux12(
//     .in0(in[3]),
//     .in1(in[2]),
//     .in2(in[1]),
//     .in3(in[0]),
//     .in4(1'b0),
//     .in5(1'b0),
//     .in6(1'b0),
//     .in7(1'b0),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[3])
// );

// mux16way_1bit mux13(
//     .in0(in[2]),
//     .in1(in[1]),
//     .in2(in[0]),
//     .in3(1'b0),
//     .in4(1'b0),
//     .in5(1'b0),
//     .in6(1'b0),
//     .in7(1'b0),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[2])
// );

// mux16way_1bit mux14(
//     .in0(in[1]),
//     .in1(in[0]),
//     .in2(1'b0),
//     .in3(1'b0),
//     .in4(1'b0),
//     .in5(1'b0),
//     .in6(1'b0),
//     .in7(1'b0),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[1])
// );

// mux16way_1bit mux15(
//     .in0(in[0]),
//     .in1(1'b0),
//     .in2(1'b0),
//     .in3(1'b0),
//     .in4(1'b0),
//     .in5(1'b0),
//     .in6(1'b0),
//     .in7(1'b0),
//     .in8(1'b0),
//     .in9(1'b0),
//     .in10(1'b0),
//     .in11(1'b0),
//     .in12(1'b0),
//     .in13(1'b0),
//     .in14(1'b0),
//     .in15(1'b0),
//     .sel(shift),
//     .out(out[0])
// );



endmodule