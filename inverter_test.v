`include "./inverter.v"
`timescale 1ns /1ns
module test;
    reg  [3:0] a;
    wire [3:0] y;
    reg      clk;
    
    initial 
      begin
          a = 4'b1110;
      end
    initial
      begin
          #0 clk = 0;
          repeat (50)
            #1 clk = ~clk;
      end
    always@(posedge clk)
      begin
          a = {$random}%2;
      end
   inverter inv(
                .a(a),
                .y(y)
                );
    
     initial
       begin
           $dumpfile("inverter.vcd");
           $dumpvars(0,test);
       end
    endmodule 