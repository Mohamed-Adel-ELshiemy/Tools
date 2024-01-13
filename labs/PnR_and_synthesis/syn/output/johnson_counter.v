
module johnson_counter ( clk, Reset, Count_out );
  output [3:0] Count_out;
  input clk, Reset;
  wire   n1;

  DFFR_X1 Count_temp_reg_0_ ( .D(n1), .CK(clk), .RN(Reset), .Q(Count_out[0])
         );
  DFFR_X1 Count_temp_reg_1_ ( .D(Count_out[0]), .CK(clk), .RN(Reset), .Q(
        Count_out[1]) );
  DFFR_X1 Count_temp_reg_2_ ( .D(Count_out[1]), .CK(clk), .RN(Reset), .Q(
        Count_out[2]) );
  DFFR_X1 Count_temp_reg_3_ ( .D(Count_out[2]), .CK(clk), .RN(Reset), .Q(
        Count_out[3]), .QN(n1) );
endmodule

