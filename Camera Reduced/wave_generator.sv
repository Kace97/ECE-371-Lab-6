/*
this module is responsible for generating a steady sound wave to be sent to the 
audio codec in order to allow the speaker to produce a sound.
*/
module wave_generator #(parameter N = 16) (clk, reset, en, wave);
	input logic clk, reset, en;
	output logic signed [23:0] wave;
	
	logic [N:0] count;
	
	always_ff @(posedge clk) begin
	 if (reset)
	  count <= 0;
	 else if (en)
	  count <= count + 1;
	end
	
	assign wave = (count[N] == 0) ? 24'h7fffff : 24'h800000;
endmodule