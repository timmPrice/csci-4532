module tb_rc();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire c_out;
integer i,j;
ripple_carry r1(a,b,cin,sum,c_out);
initial
begin
    a=0;
    b=0;
    cin=0;
    $dumpfile("ripple.vcd");
    $dumpvars(0);
end
initial
    begin
        $monitor("time: %t, a=%d,b=%d,cin=%d,sum=%d,cout=%d",$time,a,b,cin,sum,c_out);
        for(i=0;i<16;i=i+1) begin
            for(j=0;j<16;j=j+1) begin
                a=i;
                b=j;
                #10;
            end

        end
        #100 $finish(0);
end
endmodule

