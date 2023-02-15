`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:41 02/13/2023 
// Design Name: 
// Module Name:    seven_seg 
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
module seven_segment(
	output wire [7:0] seven_seg
    );

reg[7:0] seg;

parameter digit = 5;

always @ (*) begin
case(digit)    
	 4'h0: seg = 8'b11000000;
    4'h1: seg = 8'b11111001;
    4'h2: seg = 8'b10100100;
    4'h3: seg = 8'b10110000;
    4'h4: seg = 8'b10011001;
    4'h5: seg = 8'b10010010;
    4'h6: seg = 8'b10000010;
    4'h7: seg = 8'b11111000;
    4'h8: seg = 8'b10000000;
    4'h9: seg = 8'b10010000;
    default: seg = 8'b11111111;
endcase
end
assign seven_seg = seg;


endmodule
