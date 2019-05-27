module paint_RAM #(parameter N = 10) (clk, reset, wr_addr, wren, rd_addr, wr_data, rd_data);
 input logic clk, reset, wren;
 input logic [N-1:0] wr_addr, rd_addr;
 input logic [6:0] wr_data;
 output logic [23:0] rd_data;
 
 logic [6:0] RAM [0:640*480];
 logic rd_color;
 logic [19:0] count;
 
 always_ff @(posedge clk) begin
  if(reset)
   count <= count + 1;
  else
   count <= 0;
 end
 
 integer i;
 always_ff @(posedge clk) begin
  if(reset) begin
	RAM[count] <= 0;
  end //if
  else if (wren) begin
   RAM[wr_addr] <= wr_data;
  end //else if
 end // always
 
 assign rd_color = RAM[rd_addr];
 
 //output the desired color
 always_comb begin
  if(rd_color == 7'b1000000)
   rd_data = 24'hFFFFFF;
  else if(rd_color == 7'b0100000)
   rd_data = 24'h000001;
  else if(rd_color == 7'b0010000)
   rd_data = 24'hFF0000;
  else if(rd_color == 7'b0001000)
   rd_data = 24'h0000FF;
  else if(rd_color == 7'b0000100)
   rd_data = 24'hFFFF00;
  else if(rd_color == 7'b0000010)
   rd_data = 24'h00FF00;
  else
   rd_data = 24'hFF00FF;
 end
endmodule