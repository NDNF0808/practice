`include "./decoder3_8.v"
module test;
    reg [2:0] a;
    wire [7:0] y;
    reg        clk;
    
    initial
      begin
          a = 3'b110;
      end
    initial
      begin
          #0 clk = 0;
          repeat(30)
            #1 clk = ~clk;
      end
    always @ (posedge clk)
      a = {$random} % 2;
decoder3_8 decoder3_8(.a(a),
                      .y(y));
    
initial
      begin
          $dumpfile("decoder3_8.vcd");
          $dumpvars(0,test);
      end
endmodule // test
