module xor_gate(
    input in0, in1,
    output reg out
);

always @(*) begin

    case({in0,in1})
        2'b00: out = 0;
        2'b01: out = 1;
        2'b10: out = 1;
        2'b11: out = 0;
    endcase
    
end

endmodule