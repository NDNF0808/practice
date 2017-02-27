`include "./multiplexer4.v"
module test;
    reg [3:0] d0, d1, d2, d3;
    reg [1:0] s;
    wire [3:0] y;
    reg        clk;
    
    initial
      begin
        //  {d0,d1,d2,d3,s} = {$random} % 2;
          d0 = 4'b 0001;
          d1 = 4'b 0010;
          d2 = 4'b 0101;
          d3 = 4'b 1110;
          s = 2'b11;
          
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
          d0 = {$random} % 2;
          d1 = {$random} % 2;
          d2 = {$random} % 2;
          d3 = {$random} % 2;
          s = {$random} % 2;

      end
    multiplexer4 multiplexer4( .d0(d0),
                               .d1(d1),
                               .d2(d2),
                               .d3(d3),
                               .y(y),
                               .s(s));
    initial
      begin
          $dumpfile("multiplexer4.vcd");
          $dumpvars(0,test);
      end
    
endmodule // tets


    