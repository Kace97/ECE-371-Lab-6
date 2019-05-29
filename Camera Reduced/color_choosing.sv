module color_choosing (clk, reset, button_right, color);
 input logic clk, reset, button_right;
 output logic [2:0] color;
 
 //seperate the right clicks of the machine
 logic in, hold;
 always_ff @(posedge clk) begin
	hold <= button_right;//hold always holds the previous value of button right
	if (~button_right & hold) in <= 1'b1;
	else in <= 1'b0;
	end//ff
 
 enum {white, black, red, blue, yellow, green, purple, erase} ps, ns;
 
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