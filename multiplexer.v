module multiplexer
  #(parameter width = 8)
(input [width-1:0] a,b,
       input s,                       
       output [width-1:0] y);
assign y = s ? a:b;
endmodule
