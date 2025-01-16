`include "not_gate.v"

module not_gate_tb();

reg in;
wire out;

not_gate cir1(
    .in(in), 
    .out(out)
);



initial begin
    $dumpfile("not_gate_tb_vcd.vcd");
    $dumpvars(0, not_gate_tb);
end

initial begin
    // #10;
    in=1;


    #10;
    in=0;

    #10;
   
    // $finish;
end

initial begin
    $monitor("in  = %b, \n out = %b",  in, out);
end

endmodule
