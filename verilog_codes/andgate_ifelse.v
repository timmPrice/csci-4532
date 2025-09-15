module andgate_if_else(x,y,z);
input x,y;
output z;
reg a;
always @(*) begin
    if(x==0&&y==0) begin
        a=0;
    end
    else if(x==0&&y==1) begin
        a=0;
    end
    else if(x==1&&y==0) begin
        a=0;
    end
    else begin
        a=1;
    end
end
assign z=a;
endmodule
