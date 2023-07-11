`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:50:06 07/08/2023 
// Design Name: 
// Module Name:    results 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module results(
    input Done,clk,
	 input [5:0] data_out,
    output reg [5:0] result
    );
	 reg x=0;
	always @(posedge clk) begin
		if(x==1)
		result = data_out;

		if(Done == 1) begin
			x=1;
		end
		else begin
			x=0;
			result=0;
		end
		end
		
		

endmodule
