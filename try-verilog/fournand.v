module fournand (
    input  wire a,
    input  wire b,
    input  wire c,
    input  wire d,
    output wire nand_out
);

  always @* begin
    nand_out = a~&b~&c~&d;
  end

endmodule
