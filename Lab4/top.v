`timescale 1ns / 1ps

module top(
    input clk,          // 100MHz on Basys 3
    input reset,        // btnC on Basys 3
	 input letterSelect,
    output hsync,       // to VGA connector
    output vsync,       // to VGA connector
    output [7:0] rgb   // to DAC, to VGA connector
    );
    
    // signals
    wire [9:0] w_x, w_y;
    wire w_video_on, w_p_tick;
    reg [7:0] rgb_reg;
    wire [7:0] rgb_next;
	 
	 // ASCII letters
	 wire[6:0] ascii_1;
	 wire[6:0] ascii_2;
 	 wire[6:0] ascii_3;
	 wire[6:0] ascii_4;   
	 wire[6:0] ascii_5;
 	 wire[6:0] ascii_6;
	 wire[6:0] ascii_7;   
	 
    // VGA Controller
    vga_controller vga(.clk_100MHz(clk), .reset(reset), .hsync(hsync), .vsync(vsync),
                       .video_on(w_video_on), .p_tick(w_p_tick), .x(w_x), .y(w_y));
							  
	 assign ascii_1 = 7'b1000001;
	 assign ascii_2 = 7'b1000010;
	 assign ascii_3 = 7'b1000011;
	 assign ascii_4 = 7'b1000100;
	 assign ascii_5 = 7'b1000101;
	 assign ascii_6 = 7'b1000111;
	 assign ascii_7 = 7'b1001000;
    // Text Generation Circuit
    ascii_test at(.clk(clk), .video_on(w_video_on), .x(w_x), .y(w_y), 
	 .ascii_1(ascii_1), .ascii_2(ascii_2), .ascii_3(ascii_3), .ascii_4(ascii_4),
	 .ascii_5(ascii_5), .ascii_6(ascii_6), .ascii_7(ascii_7),
	 .rgb(rgb_next));
    
    // rgb buffer
    always @(posedge clk)
        if(w_p_tick)
            rgb_reg <= rgb_next;
            
    // output
    assign rgb = rgb_reg;
      
endmodule
