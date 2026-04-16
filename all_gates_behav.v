module all_gates(input [3:0] a,b, output reg [3:0] y0,y1,y2,y3,y4,y5,y6,y7);
always @(a,b) begin
y0=a&b;
y1=a|b;
y2=~a;
y3=~b;
y4=~y0;
y5=~y1;
y6= a^b;
y7= ~y6;
end
endmodule

module all_gates_tb;
reg [3:0] a,b;
wire [3:0] y0,y1,y2,y3,y4,y5,y6,y7;
all_gates dut(a,b,y0,y1,y2,y3,y4,y5,y6,y7);
initial begin
$monitor("a=%b b=%b AND=%b OR=%b NOT_A=%b NOT_B=%b NAND=%b NOR=%b XOR=%b XNOR=%b",a,b,y0,y1,y2,y3,y4,y5,y6,y7);
a=4'b0110; b=4'b0110; #10;
a=4'b1010; b=4'b0101; #10;
a=4'b0110; b=4'b1010; #10;
a=4'b1010; b=4'b0100; #10;
$finish;
end
endmodule
