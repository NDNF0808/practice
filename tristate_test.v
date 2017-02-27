`timescale 1ns/1ns
`include "./tristate.v"
module test;
    reg [3:0] a;
    reg       en;
    wire [3:0] y;
    reg        clk;
    
    initial
      begin
          a = 4'b1110;
          en = 1;
      end
    initial
      begin
          #0 clk = 0;
          repeat(40)
            #1 clk = ~clk;
      end
    always@(posedge clk)
      begin
          a = {$random} % 2;
          en  = {$random} % 2;
      end
    tristate tristate( .a(a),
                       .en(en),
                       .y(y)
                       );
    initial
      begin
          $dumpfile("tristate.vcd");
          $dumpvars(0,test);
      end
    endmodule
    
    