module all_gates(input a,b, output y0,y1,y2,y3,y4,y5,y6,y7);
//and, or, etc. are primitive gates
//They are meant for single-bit (scalar) signals
and(y0,a,b);
or(y1,a,b);
not n1 (y2,a);
not n2 (y3,b);
nand(y4,a,b);
nor(y5,a,b);
xor(y6,a,b);
xnor(y7,a,b);
endmodule

module all_gates_tb;
reg a,b;
wire y0,y1,y2,y3,y4,y5,y6,y7;
all_gates dut(a,b,y0,y1,y2,y3,y4,y5,y6,y7);
initial begin
$monitor("a=%b b=%b AND=%b OR=%b NOT_A=%b NOT_B=%b NAND=%b NOR=%b XOR=%b XNOR=%b",a,b,y0,y1,y2,y3,y4,y5,y6,y7);
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
end
endmodule
