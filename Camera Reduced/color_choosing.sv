/*
Summary:
This module is meant to use inputs to increment between 3 bit color codes, to
allow a user to select one of several outputs.
Inputs:
	clk - creates the timing for the module
	reset - resets the output color to white
	in - when this signal is true the color output increments
Outputs:
	Color - the color code output

*/
module color_choosing (clk, reset, in, color);
 input logic clk, reset, in;
 output logic [2:0] color;
 
 enum {white, black, red, blue, yellow, green, purple, erase} ps, ns;
 //increment between colors on inputs.
 always_comb begin
  case(ps)
   white: if(in) ns = black;
		else ns = white;
	black: if(in) ns = red;
		else ns = black;
	red: if(in) ns = blue;
		else ns = red;
	blue: if(in) ns = yellow;
		else ns = blue;
	yellow: if(in) ns = green;
		else ns = yellow;
	green: if(in) ns = purple;
		else ns = green;
	purple: if(in) ns = erase;
		else ns = purple;
	erase: if(in) ns = white;
		else ns = erase;
  endcase
 end
 //if reset go back to choosing white.
 always_ff @(posedge clk) begin
  if (reset)
   ps <= white;
  else
   ps <= ns;
 end
 //creeate a 3-bit code for each color
 always_comb begin
  if(ps== erase)
   color = 3'b000;
  else if (ps == white)
   color = 3'b001;
  else if (ps == black)
   color = 3'b010;
  else if (ps == red)
   color = 3'b011;
  else if (ps == blue)
   color = 3'b100; 
  else if (ps == yellow)
   color = 3'b101;
  else if (ps == green)
   color = 3'b110;
  else
   color = 3'b111;
 end
endmodule