//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:15 03/09/2023 
// Design Name: 
// Module Name:    ascii_comparor 
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
module ascii_comparor(
		input [6:0] ascii_1,
		input [6:0] ascii_2,
		input [6:0] ascii_3,
		input [6:0] ascii_4,   
		input [6:0] ascii_5,
		input [6:0] ascii_6,
		input [6:0] ascii_7,
		input [6:0] selection,
		input rst,
		output reg[6:0] out_ascii_1,
		output reg[6:0] out_ascii_2,
		output reg[6:0] out_ascii_3,
		output reg[6:0] out_ascii_4,   
		output reg[6:0] out_ascii_5,
		output reg[6:0] out_ascii_6,
		output reg[6:0] out_ascii_7
    );
	  
	reg[6:0] set;
	always @(*) begin
	
		if(rst) begin
			set <= 7'b0000000;
		end
		
		if(set == 7'b0000000) begin
			out_ascii_1 <= 7'b1000001;
			out_ascii_2 <= 7'b0101101;
			out_ascii_3 <= 7'b0101101;
			out_ascii_4 <= 7'b0101101;
			out_ascii_5 <= 7'b0101101;
			out_ascii_6 <= 7'b0101101;
			out_ascii_7 <= 7'b0101101;
		end
		
		out_ascii_1 <= ascii_1 + 1;

	/*
		if (ascii_1 == selection && set[0] == 0) begin
			out_ascii_1 <= ascii_1;
			set[0] <= 1; 
		end
		else if (set[0] == 1)
			out_ascii_1 <= ascii_1;
	
		if (ascii_2 == selection && set[1] == 0) begin
			out_ascii_2 <= ascii_2;
			set[1] <= 1;
		end
		else if (set[1] == 1)
			out_ascii_2 <= ascii_2;
			
		if (ascii_3 == selection && set[2] == 0) begin
			out_ascii_3 <= ascii_3;
			set[2] <= 1;
		end
		else if (set[2] == 1)
			out_ascii_3 <= ascii_3;
			
		if (ascii_4 == selection && set[3] == 0) begin
			out_ascii_4 <= ascii_4;
			set[3] <= 1;
		end
		else if (set[3] == 1)
			out_ascii_4 <= ascii_4;
		
		if (ascii_5 == selection && set[4] == 0) begin
			out_ascii_5 <= ascii_5;
			set[4] <= 1;
		end
		else if (set[4] == 1)
			out_ascii_5 <= ascii_5;
			
		if (ascii_6 == selection && set[5] == 0) begin
			out_ascii_6 <= ascii_6;
			set[5] <= 1;
		end
		else if (set[5] == 1)
			out_ascii_6 <= ascii_6;
			
		if (ascii_7 == selection && set[6] == 0) begin
			out_ascii_7 <= ascii_7;
			set[6] <= 1;
		end
		else if (set[6] == 1)
			out_ascii_7 <= ascii_7;
		*/
	end
	
endmodule

