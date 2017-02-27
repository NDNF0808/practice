module inverter(input [3:0] a,
       output reg [3:0] y);
     always @ (*) y = ~a;//组合逻辑一般用always @(*）比 assign更好 
    endmodule 





 