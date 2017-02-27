`include "./tristate.v"
module multiplexer2 (input [3:0] a, b,
                     input        s,
                     output [3:0] y);
    
    tristate tristate1(a, ~s, y);
    tristate tristate2(b, s, y);
endmodule // multiplexer2
