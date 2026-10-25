//# Verlog 
module arthmatic_op (add, sub, mul, divd, mod, exp, a, b) ;
input [7:0]a, b;
output [7:0]add, sub, mul, divd, mod, exp;

assign add=a+b;
assign sub=a-b;
assign mul=a*b;
assign divd=(b == 0) ? 8'b0: (a/b) ;
assign mod=(b == 0) ? 8'b0: (a%b) ;
//assign exp=a ** b; (does not support Vivado Synthesis)
endmodule


//Test bench
module arthmatic_op_atb();
reg [7:0]a, b;
wire [7:0]add, sub, mul, divd, mod, exp;

arthmatic_op dude (add, sub, mul, divd, mod, exp, a, b) ;
initial begin
$monitor("A=$0d, B=$0d,ADD=$0d, SUB=0d, MUL=$0d, DIVD=$0d, MOD=$0d", a, b, add, sub, mul, divd, mod) ;

a=10; b=5; #5;
a=13; b=2; #5;
a=10; b=5; #5;
end
endmodule
