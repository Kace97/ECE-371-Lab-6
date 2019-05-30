module paint_reset(clk, reset, count);
 input logic clk, reset;
 output logic [14:0] count;
 
 always_ff @(posedge clk) begin
  if(reset)
   count <= count + 1;
  else 
   count <= 0;
 end
endmodule