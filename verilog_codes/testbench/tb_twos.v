module tb_twos();
reg[3:0] a;
wire [3:0] b;
integer i;
twos t1(a,b);
initial begin
    a=0;
    $dumpfile("twos.vcd");
    $dumpvars(0);
end
initial begin
$monitor("time: %t,a= %b,b= %b",$time,a,b);
for(i=0;i<16;i=i+1) begin
    a=i;
    #10;
end
end
endmodule


