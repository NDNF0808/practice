`include "./decoder2_4.v"
module test;
    reg [1:0] a1;
    wire [3:0] y1;
    reg        clk;
    
    initial
      begin
          a1 = 2'b01;
      end
    initial
      begin
          #0 clk = 0;
          repeat(20)
            #1 clk = ~clk;
      end
    always @ (posedge clk)
      a1  = {$random} % 2;
    
    initial
      begin
          $dumpfile("decoder2_4.vcd");
          $dumpvars(0,test);
      end
    decoder2_4 decoder2_4(.a1(a1),
                          .y1(y1));
    
endmodule // test
