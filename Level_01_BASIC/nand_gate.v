module nand_gate(
    input in0, in1,
    output reg out
);

always @(*) begin
    if(in0==1 && in1==1)
        out=0;
    else    
        out=1;
end


endmodule