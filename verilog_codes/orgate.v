/*
*
    * Behavioral model of orgate
    * always @(*) - to indicate that the code block should be triggered when
    * any of the signals (x,y) change state
    * a is a reg because instantiated in always block
    * can also be defined using case statement
* syntax case-endcase
*/

module orgate(x,y,z);
input x,y;
output z;
reg a;
always @(*)
begin
case({x,y})
    2'b00: a=0;
    2'b01: a=1;
    2'b10: a=1;
    2'b11: a=1;
endcase
end
assign z=a;
endmodule


