module CDC_Check(
		input  wire [7:0] data1,data2,
		input  wire       clk1_fast,clk2_slow,rst
		output reg  [7:0] data_out1,data_out2
);

reg [7:0] Q0, Q1;

wire [7:0] wire0, wire1;

wire [7:0] qualifier0,qualifier1;

always @(posedge clk1_fast)
begin
		Q0 <= data1;
end

always @(posedge clk2_slow)
begin
		qualifier0 <= Q0;
		wire0     <= qualifier0;
		data_out1 <= wire0;
end

always @(posedge clk2_slow)
begin
		Q1<= data2;
end

always @(posedge clk1_fast)
begin
		qualifier1 <= Q1;
		wire1     <= qualifier1;
		data_out2 <= wire1;
end

endmodule