`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:29:24 02/13/2023 
// Design Name: 
// Module Name:    stopwatch 
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
module stopwatch(input clk,
						input rst);

wire[2:0] first_dig;
wire[3:0] second_dig;

wire[7:0] first_seg;
wire[7:0] second_seg;

counter sec_counter(clk, rst, first_dig, second_dig);
seven_segment first_num(first_dig, first_seg);
seven_segment second_num(second_dig, second_seg);

endmodule
