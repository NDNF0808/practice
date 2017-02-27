`timescale 1ns/1ns
module test;
    reg [7:0] a;
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
          a = 8'b11111111;
      end
    always@(posedge clk)
      begin
          a = {$random}%2;
      end
    andself andself(
                .a(a),
                .y(y)
                );
    initial
      begin
          $dumpfile("andself.vcd");
          $dumpvars(0,test);
      end
endmodule // test



























