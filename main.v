`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:24 01/30/2023 
// Design Name: 
// Module Name:    main 
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
module main(D, S);

input wire [11:0] D;
output wire S;

wire [11:0] out;

FPCVT absolute (
	.Data(D),
	.o(out),
	.sign(S)
);

leadingZero zeros(
	.D(out)
);


endmodule


