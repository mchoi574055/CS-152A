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
module leadingZero(D, zeros);

input wire [11:0] D;
output wire [3:0] zeros;
reg count = 1;
reg false = 0;

assign zeros = (D[11] == 0) ? ((D[10] == 0) ? ((D[9] == 0) ? ((D[8] == 0) ? ((D[7] == 0) ? ((D[6] == 0) ? ((D[5] == 0)? ((D[4] == 0) ? ((D[3] == 0) ? ((D[2] == 0) ? ((D[1] == 0) ? ((D[0] == 0) ? 4'b1100 : 4'b1011) : 4'b1010) : 4'b1001) : 4'b1000) : 3'b111) :3'b110) : 3'b101) : 3'b100) : 2'b11) : 2'b10) : 1'b1) : 1'b0 ;
/*
assign zeros = (D[11] == 0) ? (
					(D[10] == 0) ? (
					(D[9] == 0) ? (
					(D[8] == 0) ? (
					(D[7] == 0) ? (
					(D[6] == 0) ? (
					(D[5] == 0) ? (
					(D[4] == 0) ? (
					(D[3] == 0) ? (
					(D[2] == 0) ? (
					(D[1] == 0) ? (
					(D[0] == 0) ?
					4'b1100 : 
					4'b1011;
					): 4'b1010;
					): 4'b1001;
					): 4'b1000;
					): 3'b111;
					): 3'b110;
					): 3'b101;
					): 3'b100;
					): 2'b11;
					): 2'b10;
					): 1'b1;
					): 1'b0;
*/

/*
assign zeros = (D[11] == 0) ? 1 : 0;
assign zeros = ((D[10] == 0) & (zeros == 1)) ? 2 : 1;

assign zeros = ((D[9] == 0) & (zeros == 2)) ? 3 : 2'b10;
assign zeros = ((D[8] == 0) & (zeros == 3)) ? 4 : 3;
assign zeros = ((D[7] == 0) & (zeros == 4)) ? 5 : 4;
assign zeros = ((D[6] == 0) & (zeros == 5)) ? 6 : 5;
assign zeros = ((D[5] == 0) & (zeros == 6)) ? 7 : 6;
assign zeros = ((D[4] == 0) & (zeros == 7)) ? 8 : 7;
assign zeros = ((D[3] == 0) & (zeros == 8)) ? 9 : 8;
assign zeros = ((D[2] == 0) & (zeros == 9)) ? 10 : 9;
assign zeros = ((D[1] == 0) & (zeros == 10)) ? 11 : 10;
assign zeros = ((D[1] == 0) & (zeros == 11)) ? 12 : 11;
*/
endmodule
