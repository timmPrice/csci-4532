module tb_xor();
reg a,b;
wire o;
integer i;
xorgate x1(a,b,o);
initial 
    begin
        $monitor("time: %t,a: %b, b: %b, c: %b",$time,a,b,o);
        for(i=0;i<4;i=i+1)
        begin
            {a,b}=i;
        #10;
    end

        #100 $finish(0);
    end
endmodule

