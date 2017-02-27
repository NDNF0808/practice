`timescale 1ns/1ns
`include "./mul1_4.v"
module test;
    reg  a, b, c, d;
    reg [1:0] s;
    
    wire      y;
    reg       clk;
    initial
      begin
          #0 clk=0;
          repeat(50)
            #1 clk = ~clk;
      end
    initial
      begin
          a = 1;
          b = 0;
          c = 1;
          d = 1;
          s = 2'b11;
          
          
      end
    always@(posedge clk)
      begin
          a = {$random} % 2; 
          b = {$random} % 2; 
          c = {$random} % 2; 
          d = {$random} % 2;
          s = {$random} % 2;
      end
    mul mul( .a(a),
             .b(b),
             .c(c),
             .d(d), 
             .s(s),
             .y(y)
             );
    initial
      begin
          $dumpfile("mul1_4.vcd");
          $dumpvars(0,test);
      end
endmodule // test

