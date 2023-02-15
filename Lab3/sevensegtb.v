`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:07 02/15/2023
// Design Name:   seven_segment
// Module Name:   C:/Users/Student/Documents/Group5Lab3/Lab3Stopwatch/sevensegtb.v
// Project Name:  Lab3Stopwatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_segment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sevensegtb;

	// Inputs
	reg [3:0] digit;

	// Outputs
	wire [7:0] seven_seg;

	// Instantiate the Unit Under Test (UUT)
	seven_segment uut (
		.digit(digit), 
		.seven_seg(seven_seg)
	);

	initial begin
		// Initialize Inputs
		digit = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

