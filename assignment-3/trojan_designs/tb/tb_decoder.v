module tb_decoder ();

  reg clk;
  reg reset;
  reg [3:0] in;
  wire [15:0] out;

  decoder dcd (
      clk,
      reset,
      in,
      out
  );

  initial clk = 0;
  initial reset = 1;
  always #5 clk = ~clk;
  initial begin
    reset = 0;
    $monitor("signals at time %t: in=%b, out=%b, rst=%b", $time, in, out, reset);
    in = 4'b0000;

    @(posedge clk);
    @(posedge clk);

    in = 4'b1000;

    @(posedge clk);
    @(posedge clk);

    in = 4'b0100;

    @(posedge clk);
    @(posedge clk);

    in = 4'b0010;

    @(posedge clk);
    @(posedge clk);

    in = 4'b0001;
    #100 $finish;
  end

endmodule
