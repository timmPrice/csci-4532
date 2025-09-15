module tb_sub();
reg[3:0] a,b;
reg c;
wire[3:0] diff;
wire c_out;
integer i,j;
sub s1(a,b,c,diff,c_out);
initial
begin
    a=0;
    b=0;
    c=0;
    $dumpfile("subtractor.vcd");
    $dumpvars(0);
end

initial
begin
$monitor("time: %t,a=%b,b=%b,c=%b,diff=%b,c_out=%b",$time,a,b,c,diff,c_out);
for (i=0;i<16;i=i+1) begin
    for(j=0;j<16;j=j+1) begin
        a=i;
        b=j;
        #10;
    end
end
end
endmodule
