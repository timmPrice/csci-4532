module twos(a,b);
input [3:0] a;
output [3:0] b;
wire [3:0]x;
assign x=~a;
assign b=x+1'b1;
endmodule
