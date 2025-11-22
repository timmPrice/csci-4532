module fourdf (
    input  wire clk,
    output wire q
);

  always @(posedge clk) begin
    dff1 <= dff2 | dff3;
    dff2 <= dff1;
    dff3 <= dff2;
    q = dff3;
  end

endmodule
