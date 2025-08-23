module main();

initial
    begin
        $display("Hello, World");
        #100 $finish ;
    end
endmodule

// functional model of and gate
module myand(x, y, z);
    input x;
    input y;
    output z;
    assign z=x&y;
endmodule
