module bank (
    input wire clk,
    input wire reset,
    input wire [6:0] row_address,
    input wire [2:0] col_address,
    input wire refresh,
    output reg [7:0] data_out
);

  reg [7:0] memory[0:127];
  reg [7:0] row_buffer;

  always @(posedge clk or posedge reset) begin : blockName

  end
endmodule
