module sub(x,y,cin,diff,c_out);
input [3:0] x,y;
input cin;
output [3:0] diff;
output c_out;
wire [3:0] w_y;
assign w_y=~y+1;
ripple_carry r1(x,w_y,cin,diff,c_out);
endmodule
