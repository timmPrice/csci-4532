module ripple_carry(x,y,cin,sum,c_out);
input [3:0] x,y;
input cin;
output [3:0] sum;
output c_out;
wire [3:0] w1;
fa f1(x[0],y[0],cin,sum[0],w1[0]);
fa f2(x[1],y[1],w1[0],sum[1],w1[1]);
fa f3(x[2],y[2],w1[1],sum[2],w1[2]);
fa f4(x[3],y[3],w1[2],sum[3],w1[3]);
assign c_out=w1[3];
endmodule
