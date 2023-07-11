`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:29 07/04/2023 
// Design Name: 
// Module Name:    tb 
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
`timescale 1ns/1ps
module tb;
	parameter clk_period = 10;
	/*
	reg clkp = 0;
	reg clkn = 1;
	always #(clk_period/2) clkp = ~ clkp;
	always #(clk_period/2) clkn = ~ clkn;
	*/
	
	reg clk = 0;
	always #(clk_period/2) clk = ~ clk;
	reg start_tb;
	reg [5:0] data_tb,N_tb,key_tb;
	wire[5:0] result_tb;
	wire Done_tb;
	
	top dut (
    .start(start_tb), 
    .clk(clk),
    .data(data_tb), 
    .N(N_tb), 
    .key(key_tb), 
    .result(result_tb), 
    .Done(Done_tb)
    );
	 
	initial begin
		start_tb = 1;
		data_tb = 6'b101011;
		N_tb = 6'b010100;
		key_tb = 6'b001010;
		#(3*clk_period);
		start_tb = 0;
		#(30*clk_period);
		$finish();
	end

endmodule
