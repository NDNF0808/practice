`include "./fulladder.v"
`timescale 1ns /1ns
module test;
    reg  a, b;
    reg        cin;
    wire y;
    wire       cout;
    reg        clk;
    
    initial 
      begin
          a = 0;
          b = 1;
          cin = 1;
          
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
          b = {$random} % 2;
          cin = {$random} % 2;
      end
    fulladder fulladder(
                 .a(a),
                 .y(y),
                 .b(b),
                 .cin(cin),
                 .cout(cout)
                        
                 );
    
    initial
      begin
          $dumpfile("fulladder.vcd");
          $dumpvars(0,test);
      end
endmodule