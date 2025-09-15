module tb_sub();
reg[3:0] a,b;
wire[7:0] c;
integer i,j;
multiplier m1(a,b,c);
initial
begin
    a=0;
    b=0;
    $dumpfile("multiplier.vcd");
    $dumpvars(0);
end

initial
begin
$monitor("time: %t,a=%b,b=%b,c=%b",$time,a,b,c);
for (i=0;i<16;i=i+1) begin
    for(j=0;j<16;j=j+1) begin
        a=i;
        b=j;
        #10;
    end
end
end
endmodule
