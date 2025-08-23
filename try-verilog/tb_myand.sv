`timescale 1ns/1ps

module tb_myand();
    reg a, b;      // inputs
    wire out;      // output

    // instantiate your myand module
    myand uut (
        .x(a),
        .y(b),
        .z(out)
    );

    initial begin
        $display("Time | a b | out");
        $monitor("%4t | %b %b | %b", $time, a, b, out);

        // test cases
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
