module fa(x,y,cin,s0,cout);
input x,y,cin;
output s0,cout;
wire w1,w2,w3;
ha h1(x,y,w1,w2);
ha h2(cin,w1,s0,w3);
assign cout=w3|w2;
endmodule
