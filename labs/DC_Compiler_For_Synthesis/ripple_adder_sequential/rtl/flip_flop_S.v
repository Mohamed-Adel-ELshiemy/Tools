//////////Flip_Flop_Single_bit///////////
module flip_flop_S(clk ,rst_n ,qs,ds);

///---inputs--////
input clk,rst_n;
input  ds;

///---outputs---///
output reg qs;


always @(posedge clk or negedge rst_n)
 begin 
	if(!rst_n)
		qs<=0;
	else 
		qs<=ds;
 
 end 
 
 endmodule 
 