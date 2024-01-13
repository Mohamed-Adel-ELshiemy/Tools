------------------------------------------------------------------------
-----------------------------Ripple_adder_seq--------------------------
///---Top_module_Ripple_Adder--///
module Topmodule_Rip(clk ,rst_n,A,B,Cin,Sum,Cout);

//----inputs----//
input clk ,rst_n;
input [15:0] A,B;
input Cin ;


//---outputs---//
output [15:0] Sum;
output Cout;


//---internal_signals---//
wire [15:0] operand_A,operand_B;
wire 	Carry_Cin;
wire  [15:0] Sum_out;
wire   Carry_Cout;


//Flip_Flop_Multi_input//
	//OPerand_1//
flip_flop_M U1(
.clk(clk),
.rst_n(rst_n),
.q(A),
.d(operand_A)
);

	//operand_2//
flip_flop_M U2(
.clk(clk),
.rst_n(rst_n),
.q(B),
.d(operand_B)
);


//Flip_Flop_Single_input//
	//OPerand_1//
flip_flop_S U3(
.clk(clk),
.rst_n(rst_n),
.qs(Cin),
.ds(Carry_Cin)
);

///---Ripple_Adder---//
Ripple_Adder U4
(.A(operand_A),
.B(operand_B),
.Cin(Carry_Cin),
.Sum(Sum_out),
.Cout(Carry_Cout)
);

	
//Flip_Flop_Multi_input//
	//OPerand_out//
flip_flop_M U5(
.clk(clk),
.rst_n(rst_n),
.q(Sum_out),
.d(Sum)
);



//Flip_Flop_Single_input//
	//OPerand_Carry//
flip_flop_S U6(
.clk(clk),
.rst_n(rst_n),
.qs(Carry_Cout),
.ds(Cout)
);

endmodule 