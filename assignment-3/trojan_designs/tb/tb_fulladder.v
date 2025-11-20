module tb_fulladder ();

  reg  clk;
  reg  rst;
  reg  a;
  reg  b;
  reg  cin;
  wire sum;
  wire cout;

  fulladder fa (
      clk,
      rst,
      a,
      b,
      cin,
      sum,
      cout
  );

  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    $monitor("value of the signals at time %t is a=%b, b=%b, cin=%b, sum=%b, cout=%b, rst=%b",
             $time, a, b, cin, sum, cout, rst);

    rst = 0;
    a   = 0;
    b   = 0;
    cin = 0;

    @(posedge clk);
    @(posedge clk);

    rst = 0;
    a   = 1;
    b   = 0;
    cin = 0;

    @(posedge clk);
    @(posedge clk);

    rst = 0;
    a   = 0;
    b   = 1;
    cin = 0;

    @(posedge clk);
    @(posedge clk);

    rst = 0;
    a   = 0;
    b   = 0;
    cin = 1;

    @(posedge clk);
    @(posedge clk);

    rst = 0;
    a   = 1;
    b   = 0;
    cin = 1;

    @(posedge clk);
    @(posedge clk);

    rst = 0;
    a   = 0;
    b   = 1;
    cin = 1;

    @(posedge clk);
    @(posedge clk);

    rst = 0;
    a   = 1;
    b   = 1;
    cin = 0;

    @(posedge clk);
    @(posedge clk);

    rst = 0;
    a   = 1;
    b   = 1;
    cin = 1;

    // $dumpfile("out/fa_1.vcd");
    // $dumpvars(0, tb_fulladder);
    #100 $finish(0);
  end
endmodule
