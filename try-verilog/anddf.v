module anddf (
    input  wire a,
    input  wire b,
    input  reg  clk,
    output reg  q
);
  wire ab;
  assign ab = a & b;
  always @(posedge clk) begin
    q <= ab;
  end

endmodule

