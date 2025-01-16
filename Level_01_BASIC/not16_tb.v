`include "not16.v"

module not16_tb();

reg [15:0] in;
wire [15:0] out;

not16 cir1(
    .in(in), 
    .out(out)
);



initial begin
    $dumpfile("not16_tb_vcd.vcd");
    $dumpvars(0, not16_tb);
end

initial begin
    // #10;
    in=0001_1001_0111_0101;


    #10;
    in=1111_1001_0111_0101;

    #10;
    in=1111_1111_1111_1111;


    #10;
    in=0000_0000_0000_0000;


    #10;

    // $finish;
end

initial begin
    $monitor("in  = %b, \n out = %b",  in, out);
end

endmodule
