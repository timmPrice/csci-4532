module xorgate(x,y,z);
input x,y;
output z;
xor (z,x,y); // basic gate definitions have module <modulename> (output,input,input) -- show the inout coercion error
endmodule
