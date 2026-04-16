module all_gates(input [3:0] a,b, output [3:0] y0,y1,y2,y3,y4,y5,y6,y7);
assign y0=a&b;
assign y1=a|b;
assign y2=~a;
assign y3=~b;
assign y4=~y0;
assign y5=~y1;
assign y6= a^b;
assign y7= ~y6;
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
end
endmodule
