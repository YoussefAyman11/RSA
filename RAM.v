`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:23 06/22/2023 
// Design Name: 
// Module Name:    RAM 
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

module RAM(
    input clk,
    input [17:0] addr,
    output reg [5:0] data_out
    );
	 
	reg [5:0] memory [0 : (2**18) - 1];
	
	initial begin
		$readmemb("binary.txt", memory);
	end
	
	always @(posedge clk) begin
		data_out <= memory[addr];
	end

endmodule
