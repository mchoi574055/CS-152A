`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:39 01/30/2023 
// Design Name: 
// Module Name:    leadingZero 
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
module leadingZero(D);

input [11:0] D;
reg zeros;

assign zeros = 0;

assign zeros = (D[11] == 0) ? zeros + 1 : zeros;




endmodule
