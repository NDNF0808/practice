`timescale 1ns/1ns
`include "./logicgate.v"
module test;
    reg [3:0] a, b;
    wire [3:0] y1, y2, y3, y4, y5;
    reg        clk;
    initial
      begin
          #0 clk = 0;
          repeat(50)
            #1 clk = ~clk;
      end
    initial
      begin
          a = 4'b1110;
          b = 4'b1000;
      end
    always@(posedge clk)
      begin
          a = {$random} % 2;
          b = {$random} % 2;
      end
    logicgate log(
                  .a(a),
                  .b(b),
                  .y1(y1),
                  .y2(y2),
                  .y3(y3),
                  .y4(y4),
                  .y5(y5)
                  );
    initial
      begin
          $dumpfile("logic.vcd");
          $dumpvars(0,test);
      end
endmodule // test

    
          
          