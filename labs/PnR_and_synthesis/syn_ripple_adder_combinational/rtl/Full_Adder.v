//////---Full_Adder---////
module Full_Adder(

input wire x,y,

input wire c_in,

output wire S,
output wire c_out
);

wire Sum_1;
wire carry_1;
//--For_Sum--//

assign Sum_1= x ^ y ;

assign S= Sum_1 ^ c_in ; 


//--For_Carry--//

assign carry_1 = Sum_1 & c_in; 
assign c_out = ((x&y) | carry_1);
endmodule 
