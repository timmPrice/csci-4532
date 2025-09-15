module tb_fa();
reg a,b,c;
output s0,c_out;
integer i;
fa f1(a,b,c,s0,c_out);
initial
begin
a=0;
b=0;
c=0;
$dumpfile("fulladder.vcd");
$dumpvars(0);
end
initial
begin
    $monitor("time: %t,a: %b,b: %b,c: %b,s0: %b,c_out: %b",$time,a,b,c,s0,c_out);
    for(i=0;i<8;i=i+1)begin
        {a,b,c}=i;
        #10;
    end
    #100 $finish(0);
end
endmodule

