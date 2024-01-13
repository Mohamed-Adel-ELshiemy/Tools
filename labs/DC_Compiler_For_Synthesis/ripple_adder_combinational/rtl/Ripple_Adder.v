-----------------------------------------------------------
-----------------------Ripple_Adder--------------------
//////------Ripple_Adder---////
module Ripple_Adder(

input wire [15:0] A,B,
input wire Cin,
output wire [15:0] Sum,
output wire Cout
);
	
wire [15:0] carry;

Full_Adder F0(A[0],B[0],Cin,Sum[0],carry[0]);


genvar i;
generate 
for(i=1 ; i<16; i=i+1)
begin 
Full_Adder F0(A[i],B[i],carry[i-1],Sum[i],carry[i]);
end 
assign Cout=carry[15];

endgenerate



endmodule