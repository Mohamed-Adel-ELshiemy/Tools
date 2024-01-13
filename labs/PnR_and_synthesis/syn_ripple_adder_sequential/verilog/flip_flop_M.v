//////////Flip_Flop_multi_bit///////////
module flip_flop_M(clk ,rst_n ,d,q);

///---inputs--////
input clk,rst_n;
input [15:0]  d;

///---outputs---///
output reg [15:0] q;


always @(posedge clk or negedge rst_n)
 begin 
	if(!rst_n)
		q<=0;
	else 
		q<=d;
 
 end 
 
 endmodule 
 