`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:44:08 06/22/2023 
// Design Name: 
// Module Name:    mult 
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
module mult(
    input [5:0] in1,
    input [5:0] in2,
	 input clk,
	 input stop,
	 output reg Done,
    output reg [11:0] mult_out
    );
	
	always @(posedge clk) begin
		if(!stop) begin
			mult_out <= in1*in2;
			Done <=0;
		end
		else
		Done <= 1;
	end

endmodule
