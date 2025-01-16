`include "add_sub_16bit.v"

module add_sub_16bit_tb();

reg [15:0] in0, in1;
reg  sel;
wire [15:0] res; 
wire cout;

add_sub_16bit cir1(
    .in0(in0),
    .in1(in1),
    .sel(sel),
    .sum(res), 
    .cout(cout)
);



initial begin
    $dumpfile("add_sub_16bit_tb_vcd.vcd");
    $dumpvars(0, add_sub_16bit_tb);
end

initial begin
    // #10;
    in0=0001_1001_0111_0101;
    in1=0000_0000_0000_0001;
    sel=0;

    #10;
    in0=0001_1001_0111_0101;
    in1=0000_0000_0000_0001;
    sel=0;

    #10;
    in0=1111_1001_0111_0101;
    in1=1111_0000_0000_0001;
    sel=0;

    #10;
    in0=0001_1001_0111_0101;
    in1=0000_0000_0000_0001;
    sel=1;

    #10;

    // $finish;
end

initial begin
    $monitor("in0  = %b, \n in1  = %b, \n sel  = %b, \n res  = %b, \n cout = %b",  in0, in1, sel, res, cout);
end

endmodule
