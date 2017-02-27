module shift(input signed [7:0] a ,
             output signed  [7:0] y1,
             output signed  [7:0] y2,
             output signed  [7:0] y3,
             output signed  [7:0] y4,
             output signed  [7:0] y5);
    //////////////////逻辑左移////////////
    assign y1 = a << 2;
    //////////////////算术右移///对于无符号数仍是左面补0///////////////
    assign y2 = a >>> 2;
    //////////////////算术左移//////////////
    assign y3 = a <<< 2;
    //////////////////循环左移///////////
    assign y4 = {a[6:0], a[7]};
    //////////////////循环右移///////////
    assign y5 = {a[0], a[7:1]};
    
    endmodule