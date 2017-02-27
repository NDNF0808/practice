`include "./multiplexer.v" 
module multiplexer4(input [3:0] d0, d1, d2, d3,
                    input [1:0]  s,
                    output [3:0] y);
    wire                       [3:0]  y1, y2;
    
    multiplexer #(4) multiplexer(d1, d0, s[0], y1 );
    multiplexer #(4) mul (d3, d2, s[0], y2);
    multiplexer #(4) mult(y2, y1, s[1], y);
endmodule // multiplexer4
 
        