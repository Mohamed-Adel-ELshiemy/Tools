//declare the Verilog module - The inputs and output port names.
module johnson_counter(
    clk,
    Reset,
    Count_out
    );

    //what are the input ports and their sizes.
    input clk;
    input Reset;
    //what are the output ports and their sizes.
    output [3:0] Count_out;
    //Internal variables
    reg [3:0] Count_temp;

    //Whenever the Clock changes from 0 to 1(positive edge) or 
    //a change in Reset, execute the always block.
    always @(posedge(clk) or negedge Reset)
    begin
        if(!Reset)   begin  //when Reset is low
            Count_temp = 4'b0000;   end  //The Count value is reset to "0000".
        else  begin  //When the Clock is high
            //Left shift the Count value and at the same time
            //negate the least significant bit.
            Count_temp = {Count_temp[2:0],~Count_temp[3]};  end 
    end
    
    //The Count value is assigned to final output port.
    assign Count_out = Count_temp;
    
endmodule
