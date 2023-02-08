`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:51 02/08/2023 
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
module counter(input clk, 
					input rst, 
					output reg[5:0] count);
always @ (posedge clk) begin
	if (rst == 1 || count == 59)
		count <= 0;
	else
		count <= count + 1;
	end
endmodule
