module multiplier(x,y,z);
input[3:0]x,y;
output [7:0] z;
wire p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15; //partial products
wire [3:0] s0,s1,s2; // partial sums
wire c0,c1,c2; // partial carry
assign p0=x[0]&y[0];
assign p1=x[1]&y[0]; 
assign p2=x[2]&y[0];
assign p3=x[3]&y[0];
assign p4=x[0]&y[1];
assign p5=x[1]&y[1];
assign p6=x[2]&y[1];
assign p7=x[3]&y[1];
assign p8=x[0]&y[2];
assign p9=x[1]&y[2];
assign p10=x[2]&y[2];
assign p11=x[3]&y[2];
assign p12=x[0]&y[3];
assign p13=x[1]&y[3];
assign p14=x[2]&y[3];
assign p15=x[3]&y[3];
wire [3:0] w1={1'b0,p3,p2,p1};
wire [3:0] w2={p7,p6,p5,p4};
ripple_carry r1(w1,w2,1'b0,s0,c0);
wire [3:0] w3={c0,s0[3:1]};
wire [3:0] w4={p11,p10,p9,p8};
ripple_carry r2(w3,w4,1'b0,s1,c1);
wire [3:0] w5={c1,s1[3:1]};
wire [3:0] w6={p15,p14,p13,p12};
ripple_carry r3(w5,w6,1'b0,s2,c2);
assign z={c2,s2,s1[0],s0[0],p0};
endmodule
