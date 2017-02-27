
`include "./shift.v"
`timescale 1ns /1ns
module test;
    reg [7:0] a;
    wire [7:0] y1;
    wire [7:0] y2;
    wire [7:0] y3;
    wire [7:0] y4;
    wire [7:0] y5;
    reg  clk;
    
    initial 
      begin
          a = 8'b11110000;
          
          
      end
    initial
      begin
          #0 clk = 0;
          repeat (50)
            #1 clk = ~clk;
      end
    always@(posedge clk)
      begin
          a = {$random} % 2;
      end
    shift shift (        .a(a),
                         .y1(y1),
                         .y2(y2),
                         .y3(y3),
                         .y4(y4),
                         .y5(y5));
    
    initial
      begin
          $dumpfile("shift.vcd");
          
          $dumpvars(0,test);
      end
endmodule