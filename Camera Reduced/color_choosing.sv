module color_choosing (clk, reset, button_right, color);
 input logic clk, reset, button_right;
 output logic [6:0] color;
 
 enum {white, black, red, blue, yellow, green, purple} ps, ns;
 
 always_comb begin
  case(ps)
   white: if(button_right) ns = black;
		else ns = white;
	black: if(button_right) ns = red;
		else ns = black;
	red: if(button_right) ns = blue;
		else ns = red;
	blue: if(button_right) ns = yellow;
		else ns = blue;
	yellow: if(button_right) ns = green;
		else ns = yellow;
	green: if(button_right) ns = purple;
		else ns = green;
	purple: if(button_right) ns = white;
		else ns = purple;
  endcase
 end
 
 always_ff @(posedge clk) begin
  if (reset)
   ps <= white;
  else
   ps <= ns;
 end
 
 always_comb begin
  if(ps== white)
   color = 7'b1000000;
  else if (ps == black)
   color = 7'b0100000;
  else if (ps == red)
   color = 7'b0010000;
  else if (ps == blue)
   color = 7'b0001000;
  else if (ps == yellow)
   color = 7'b0000100; 
  else if (ps == green)
   color = 7'b0000010;
  else
   color = 7'b0000001;
 end
endmodule