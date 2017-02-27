
`include "./multiplexer2.v"
module test;
    reg [3:0] a, b;
    reg s;
    wire [3:0] y;
    reg        clk;
    
    initial
      begin
          a = 4'b 0001;
          b = 4'b 0010;
          s = 1;
          
      end
    initial
      begin
          #0 clk = 0;
          repeat(30)
            begin
                #1 clk = ~clk;
            end
      end
    always @ (posedge clk)
      begin
          a = {$random} % 2;
          b = {$random} % 2;
          s = {$random} % 2;

      end
    multiplexer2 multiplexer2(.a(a),
                              .b(b),
                              .y(y),
                              .s(s));
    initial
      begin
          $dumpfile("multiplexer2.vcd");
          $dumpvars(0,test);
      end
    
endmodule // tets


 