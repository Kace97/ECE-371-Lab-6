/*
Summary:
This module is responsible for reseting all the values stored in the paint ram module
the module does this by outputing a count that will be used as an address
the counter will count through all values in  15 bit range, which will all be 
set to 0, in the paint RAM module

*/
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