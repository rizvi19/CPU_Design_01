module dmux(
    input in, sel,
    output reg out0, out1
);

always @(*) begin
    if(!sel)
        {out0, out1} = {in, 1'b0};
    else    
        {out0, out1} = {1'b0, in};
        
end

endmodule