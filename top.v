`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:22 06/22/2023 
// Design Name: 
// Module Name:    top 
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
module top(
    input start,
	 input clk,
	 //input clk_p,
    //input clk_n,
    input [5:0] data,
    input [5:0] N,
    input [5:0] key,
    output [5:0] result,
	 output Done
    );

wire [5:0] out_mux;
wire [11:0] out_mult;
wire [5:0] out_mem;
wire select,stop_sig;

	
wire [5:0] input_data,input_N,input_key;
//wire clk;

//Put your numbers
assign input_data = 6'b110111; 
assign input_N = 6'b010101;
assign input_key = 6'b001111;

/*

clk clk_sig
   (// Clock in ports
    .CLK_IN1_P(clk_p),    // IN
    .CLK_IN1_N(clk_n),    // IN
    // Clock out ports
    .CLK_OUT1(clk),     // OUT
    // Status and control signals
    .RESET(start));
*/
multiplexer mux123 (
    .D(input_data), 
    .R(out_mem), 
    .sel(select), 
    .mux_out(out_mux)
    );
	 
mult multiplier (
    .in1(input_data), 
    .in2(out_mux),
    .clk(clk), 
	 .stop(stop_sig),
    .Done(Done), 
    .mult_out(out_mult)
    );	  
	 
wire [17:0] address;
assign address = {input_N-6'b000001,out_mult};
	 
RAM mem (
    .clk(clk), 
    .addr(address), 
    .data_out(out_mem)
    );
	 
counter count (
    .clk(clk), 
    .key(input_key), 
    .start(start), 
    .sel(select), 
    .stop(stop_sig)
    );

results res (
    .Done(stop_sig), 
	 .clk(clk),
	 .data_out(out_mem),
    .result(result)
    );

endmodule
