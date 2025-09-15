module tb_and();
reg a,b;
wire o;
andgate a1 (a,b,o);
initial 
    begin
        $monitor("time: %t, a: %b, b: %b, o: %b",$time,a,b,o);
        a=0;
        b=0;
    end
initial
    begin
        #10 b=1;
        #20 a=1;
            b=0;
        #30 a=1;
            b=1;
        #60 $finish(0);
    end
endmodule

