`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:40 06/22/2023 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
	 input [5:0] key,
	 input start,
	 output reg sel,stop
    );
	 
	 reg [5:0] counts;
	always @(posedge clk) begin
		if(start) begin
		counts <= 0;
		stop <= 0;
		sel <= 0;
		end
		else if(stop == 0) begin
		counts <= counts + 6'b000001;
		sel <= 1;
		end
		if(counts == key - 2) begin
		stop <= 1;
		end
	end

endmodule
