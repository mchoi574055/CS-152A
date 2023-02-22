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
						input rst,
						input sel,
						input adj,
						input pause,
						output reg[7:0] seven_seg,
						output reg[3:0] an);//, first_seg, second_seg);

wire clk_1hz, clk_2hz, clk_blinkAdj, clk_display; //clocks
wire clean_rst, clean_pause; //debounced button inputs
wire[2:0] first_dig;
wire[3:0] second_dig;
wire[7:0] seven_seg_digi1;
wire[7:0] seven_seg_digi2;
wire[7:0] seven_seg_digi3;
wire[7:0] seven_seg_digi4;
reg[3:0] first = 5;
reg[3:0] second = 3;
reg[3:0] third = 2;
reg[3:0] fourth = 9;

debouncer rst_debouncer(clk, rst, clean_rst);
debouncer pause_debouncer(clk, pause, clean_pause);

clk_divider clk_splitter(clk, clean_rst, clk_1hz, clk_2hz, clk_blinkAdj, clk_display);
//counter sec_counter(clk_1hz, rst, first_dig, second_dig);

reg [1:0] count = 2'b00;

seven_segment first_num(first, seven_seg_digi1);
seven_segment second_num(second, seven_seg_digi2);
seven_segment third_num(third, seven_seg_digi3);
seven_segment fourth_num(fourth, seven_seg_digi4);
always @(posedge clk_display) begin
	if (count == 0) begin
		an <= 4'b1110;
		seven_seg <= seven_seg_digi1;
		count <= count + 1;
	end
	
	if (count == 1) begin
		an <= 4'b1101;
		seven_seg <= seven_seg_digi2;
		count <= count + 1;
	end
	
	if (count == 2) begin
		an <= 4'b1011;
		seven_seg <= seven_seg_digi3;
		count <= count + 1;
	end
	
	if (count == 3) begin
		an <= 4'b0111;
		seven_seg <= seven_seg_digi4;
		count <= count + 1;
	end
	
end


//seven_segment second_num(clk_display, seven_seg, an, first_dig);
//seven_segment third_num(clk_display, seven_seg, an, first_dig);
//seven_segment fourth_num(clk_display, seven_seg, an, first_dig);
// seven_segment second_num(clk_display, seven_seg);

endmodule
