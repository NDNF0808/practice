module mul(input a, b, c, d,
           input [1:0] s,
           output      y      );
    assign y = s[1] ? (s[0] ? d : c)
      :( s[0] ? b : a);
    endmodule
    