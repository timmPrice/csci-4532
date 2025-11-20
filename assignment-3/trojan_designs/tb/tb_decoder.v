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

  integer i;
  initial clk = 0;
  initial reset = 1;
  always #5 clk = ~clk;
  initial begin

    reset = 1;
    @(posedge clk);
    @(posedge clk);

    reset = 0;
    in = 4'b0000;

    @(posedge clk);
    @(posedge clk);

    // $monitor("signals at time %t: in=%b, out=%b, rst=%b", $time, in, out, reset);

    for (i = 0; i < 16; i++) begin
      in = i;
      @(posedge clk);
      @(posedge clk);
      in = i;
      @(posedge clk);
      @(posedge clk);
      in = i;
      @(posedge clk);
      @(posedge clk);

      $display("signals at time %t: in=%b, out=%b, rst=%b", $time, in, out, reset);

    end
    #100 $finish;
  end

endmodule
