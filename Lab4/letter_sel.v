`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:31:09 03/08/2023 
// Design Name: 
// Module Name:    letter_sel 
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
module letter_sel(input clk,
						input rst,
						output reg[6:0] ascii
    );
	 
	 always @(posedge clk) begin
		if(~rst)
			ascii <= 7'b1000001;
		if(ascii < 7'b1000001)
			ascii <= 7'b1000001;
		else if(ascii == 7'b1011010)
			ascii <= 7'b1000001;
		else
			ascii <= ascii + 1;
	 end


endmodule
