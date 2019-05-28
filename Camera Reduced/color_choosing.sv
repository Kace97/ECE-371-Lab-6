module color_choosing (clk, reset, button_right, color);
 input logic clk, reset, button_right;
 output logic [2:0] color;
 
 enum {white, black, red, blue, yellow, green, purple, erase} ps, ns;
 
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
	purple: if(button_right) ns = erase;
		else ns = purple;
	erase: if(button_right) ns = white;
		else ns = erase;
  endcase
 end
 
 always_ff @(posedge clk) begin
  if (reset)
   ps <= white;
  else
   ps <= ns;
 end
 
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