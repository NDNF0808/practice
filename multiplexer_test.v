`timescale 1ns/1ns
`include "./multiplexer.v"
module test;
    reg [3:0] a, b;
    reg       s;
    
    wire [3:0] y;
    reg       clk;
    initial
      begin
          #0 clk=0;
          repeat(50)
            #1 clk = ~clk;
      end
    initial
      begin
          a = 4'b1110;
          b = 4'b0101;
          s = 1;
          
          
      end
    always@(posedge clk)
      begin
          a = {$random}%2;
          b = {$random}%2;
          s = {$random}%2;
          
          
      end
    multiplexer multiplexer(
                    .a(a),
                    .b(b),
                    .s(s),
                    .y(y)
                    );
    initial
      begin
          $dumpfile("multiplexer.vcd");
          $dumpvars(0,test);
      end
endmodule // test

