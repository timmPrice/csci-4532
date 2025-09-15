module ha(x,y,s0,cout);
input x,y;
output s0,cout;
xorgate x1(x,y,s0);  // ask them for the equation
andgate a1(x,y,cout); 

endmodule
