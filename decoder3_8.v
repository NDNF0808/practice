module decoder3_8(input [2:0] a,
                  output reg [7:0] y);
    always @ (*)
      case (a)
        0: y = 8'b0000_0001;
        1: y = 8'b0000_0010;
        2: y = 8'b0000_0100;
        3: y = 8'b0000_1000;
        4: y = 8'b0001_0000;
        5: y = 8'b0010_0000;
        6: y = 8'b0100_0000;
        7: y = 8'b1000_0000;
      endcase // case (a)
endmodule // decoder3_8
