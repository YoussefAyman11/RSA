`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:50 06/22/2023 
// Design Name: 
// Module Name:    multiplexer 
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

module multiplexer(
    input [5:0] D,
    input [5:0] R,
    input sel,
    output reg [5:0] mux_out
    );
	always @(*) begin
		if(sel)
			mux_out = R;
		else
			mux_out = D;
	end

endmodule
