`include "./delygate.v"
module test;
    reg a, b, c;
    wire y;
  //  reg  clk;
    
    initial
      begin
          {a, b, c} = 3'b001;
      end
  /*  initial
      begin
          #0 clk = 0;
          repeat(30)
            #2  clk = ~clk;
      end
    always@(posedge clk)
      begin
          {a, b, c} = {$random} % 2;
      end */
    delaygate delaygate(.a(a),
                        .b(b),
                        .c(c)
                        );
    initial
      begin
          $dumpfile("delaygate.vcd");
          $dumpvars(0,test);
      end
endmodule // test

      
    