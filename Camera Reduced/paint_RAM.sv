module paint_RAM #(parameter N = 10) (clk, reset, wr_addr, wren, rd_addr, wr_data, rd_data);
 input logic clk, reset, wren;
 input logic [N-1:0] wr_addr, rd_addr;
 input logic [23:0] wr_data;
 output logic [23:0] rd_data;
 
 logic [23:0] RAM [0:640*480];
 
 integer i;
 always_ff @(posedge clk) begin
  if(reset) begin
   for(i = 0; i < 640*480; i++) begin
	 RAM[i] <= 0;
	end //for
  end //if
  else if (wren) begin
   RAM[wr_addr] <= wr_data;
  end //else if
 end // always
endmodule