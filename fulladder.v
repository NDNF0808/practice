/*module fulladder(input  a, b,
                 input        cin,
                 output  y,
                 output       cout );
    wire                      p, g;
    assign p = a ^ b;
    assign g = a&b;
    assign y = p ^ cin;
    assign cout = g | (p&cin);
endmodule // fulladder*/
 ///用此公式实现的仅仅是一位的全加器，要实现多位加法应串行进位 或者超前进位
module fulladder(input  a, b,
                 input  cin,
                 output reg y,
                 output reg cout );
    reg                     p, g;
    always @ (*)
      begin
          p = a ^ b;
          g = a & b;
          y = p ^ cin;
          cout = g | (p&cin);
      end
    
endmodule // fulladder
      