module or_gate(
    input in0, in1, 
    output reg out
);

always @(*) begin
    if(in0==0 && in1==0)
        out=0;
    else
        out=1;
end

endmodule