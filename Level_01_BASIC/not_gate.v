module not_gate(
    input in,
    output reg out
);

always @(*) begin
    out = ~in;
end

endmodule