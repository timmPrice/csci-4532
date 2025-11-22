module tb_anddf ();
  reg  clk;
  reg  in_a;
  reg  in_b;
  wire out_q;

  anddf dut (
      .clk(clk),
      .a  (in_a),
      .b  (in_b),
      .q  (out_q)
  );

  initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
  end

  initial begin
    $monitor("time = %t, in_a = %b, in_b = %b, out_q = %2b \n", $time, in_a, in_b, out_q);
    in_a = 1'b0;
    in_b = 1'b0;
    #20 in_a = 1'b1;
    #20 in_a = 1'b0;
    in_b = 1'b1;
    in_a = 1'b1;
    #20 $finish;
  end

  initial begin
    $dumpfile("anddf.vcd");  // name of the VCD file
    $dumpvars(0, tb_anddf);  // dump everything in tb_anddf hierarchy
  end
endmodule
