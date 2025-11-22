module tb_multiplier ();

  reg clk;
  reg reset;
  reg [7:0] a;
  reg [7:0] b;
  wire [15:0] prod;

  multiplier mult (
      clk,
      reset,
      a,
      b,
      prod
  );

  integer i;
  integer y;
  integer product;
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    reset = 1;

    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);

    reset = 0;

    a = 8'b00000000;
    b = 8'b00000000;

    // $monitor("signals at time %t: a=%d, b=%d, prod=%d, rst=%b", $time, a, b, prod, reset);

    for (i = 0; i < 256; i++) begin
      for (y = 0; y < 256; y++) begin

        a = i;
        b = y;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);

        a = i;
        b = y;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);

        product = i * y;

        if (product != prod) begin
          $display("signals at time %t: a=%d, b=%d, prod=%d, rst=%b", $time, a, b, prod, reset);
        end

      end
    end
    #100 $finish(0);
  end

endmodule
