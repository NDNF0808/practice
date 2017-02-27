`include "./decoder.v"
module decoder2_4(input [1:0] a1,
                  output  [3:0] y1);
    decoder # (.N(2))  decoder(a1, y1);
endmodule