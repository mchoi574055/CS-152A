`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:09 01/30/2023 
// Design Name: 
// Module Name:    FPCVT 
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
module FPCVT(Data, o, sign);

input [11:0] Data;
output [11:0] o;
output sign;

assign o = (Data[11] == 1) ? (~Data + 1'b1) : Data;
assign sign = Data[11];

endmodule
