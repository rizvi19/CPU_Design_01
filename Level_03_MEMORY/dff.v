module dff(
    input din, CLK, reset,
    output dout
);

always @(negedge CLK) begin
    CLK = ~CLK;
end

endmodule