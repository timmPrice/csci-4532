module andor (
    input  wire a,
    input  wire b,
    input  wire c,
    output wire logic_out
);

  assign logic_out = (a | b) & c;

endmodule
