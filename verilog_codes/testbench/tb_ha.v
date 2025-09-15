module tb_ha();
reg a,b;
wire s0,cout;
ha h1(a,b,s0,cout);
initial
    begin
        $dumpfile("halfadder.vcd");
        $dumpvars(0);
        a=0;
        b=0;
    end
initial
    begin
        $monitor("time: %t,a= %b, b= %b, s0= %b, cout= %b",$time,a,b,s0,cout);
        #10 b=1;
        #20 b=0;
            a=1;
        #30 a=1;
            b=1;
        #50 $finish(0);
    end
endmodule
