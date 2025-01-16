module mux(
    input in0, in1, sel,
    output reg out
);

always @(*) begin
    if(sel)
        out = in1;
    else 
        out = in0;
end

endmodule