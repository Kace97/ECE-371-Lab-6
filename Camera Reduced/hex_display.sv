/*
Summary:
This module is responsible for displaying the current color that is selecte by 
the system on the HEX displays. 

*/
module hex_display (data, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
 input logic [2:0] data;
 output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
 
 always_comb begin
  if(data == 3'b000) begin //erase
   HEX5 = ~7'b1111001;
	HEX4 = ~7'b1010000;
	HEX3 = ~7'b1110111;
	HEX2 = ~7'b1101101;
	HEX1 = ~7'b1111001;
	HEX0 = '1;
  end //if
  else if(data == 3'b001) begin //white
   HEX5 = ~7'b0111110;
	HEX4 = ~7'b0001110;
	HEX3 = ~7'b1110100;
	HEX2 = ~7'b0110000;
	HEX1 = ~7'b1111000;
	HEX0 = ~7'b1111001;
  end //else if
  else if(data == 3'b010) begin //black
   HEX5 = ~7'b1111100;
	HEX4 = ~7'b0111000;
	HEX3 = ~7'b1110111;
	HEX2 = ~7'b0111001;
	HEX1 = ~7'b1111010;
	HEX0 = '1;
  end //else if
  else if(data == 3'b011) begin //red
   HEX5 = ~7'b1010000;
	HEX4 = ~7'b1111001;
	HEX3 = ~7'b1011110;
	HEX2 = '1;
	HEX1 = '1;
	HEX0 = '1;
  end //else if
  else if(data == 3'b100) begin //blue
   HEX5 = ~7'b1111100;
	HEX4 = ~7'b0111000;
	HEX3 = ~7'b0111110;
	HEX2 = ~7'b1111001;
	HEX1 = '1;
	HEX0 = '1;
  end //else if
  else if(data == 3'b101) begin //yellow
   HEX5 = ~7'b1101110;
	HEX4 = ~7'b1111001;
	HEX3 = ~7'b0111000;
	HEX2 = ~7'b0111000;
	HEX1 = ~7'b0111111;
	HEX0 = '1;
  end //else if
  else if(data == 3'b110) begin //green
   HEX5 = ~7'b1101111;
	HEX4 = ~7'b1010000;
	HEX3 = ~7'b1111001;
	HEX2 = ~7'b1111001;
	HEX1 = ~7'b1010100;
	HEX0 = '1;
  end //else if
  else begin //purple
   HEX5 = ~7'b1110011;
	HEX4 = ~7'b0111110;
	HEX3 = ~7'b1010000;
	HEX2 = ~7'b1110011;
	HEX1 = ~7'b0111000;
	HEX0 = ~7'b1111001;
  end //else 
 end //always
endmodule