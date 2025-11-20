module ha (
    input  a,
    input  b,
    output sum,
    output cout
);

  assign sum  = x ^ y;
  assign cout = x & y;

endmodule

module fulladder (
    input  clk,
    input  rst,
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);

  wire s1, c1, c2;
  ha h1 (
      a,
      b,
      s1,
      c1
  );

  ha h2 (
      s1,
      cin,
      sum,
      c2
  );

  assign cout = c1 | c2;

endmodule
