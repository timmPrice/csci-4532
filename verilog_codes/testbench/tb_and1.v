module tb_and1();
reg a,b;
wire c;
andgate_if_else a1(a,b,c);
initial begin
    a=0;
    b=0;
    $dumpfile("and_if_else.vcd");
    $dumpvars(0);
end
initial begin
$monitor("time: %t,a: %b,b: %b,c :%b",$time,a,b,c);
#10 b=1;
#20 a=1;
    b=0;
#30 a=1;
    b=1;
end
endmodule
