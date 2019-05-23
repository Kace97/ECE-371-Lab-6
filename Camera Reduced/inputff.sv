/* This module deals with metastability for the input. It takes in the 
input and send it to 2 D flip-flops in series. */
module inputff #(width = 1) (clk, reset, in, out);
 input logic clk, reset; 
 input logic [width -1:0] in;
 output logic [width -1:0] out;
 logic [width -1:0] DFF;
 
 //Sends the input to 2 D flip-flop in series
 always_ff @(posedge clk) begin
 if (reset) begin 
 DFF <= 0;
 out <= 0;
 end
 else begin 
 out <= DFF;
 DFF <= in;
 end
 end
endmodule

module inputff_testbench();
 logic clk, reset, in, out;
 
 inputff dut (clk, reset, in, out);
 
 parameter CLOCK_PERIOD = 100;
 initial begin
 clk <= 0;
 forever #(CLOCK_PERIOD/2) clk <= ~clk;
 end
 
 //Test if input is delayed by 2 clock cycle
 initial begin
 @(posedge clk);
 reset <=1; @(posedge clk); 
 reset <= 0; @(posedge clk);
 @(posedge clk);
 @(posedge clk);
 in <= 1; @(posedge clk);
 @(posedge clk);
 in <= 0; @(posedge clk);
 @(posedge clk);
 @(posedge clk);
 $stop;
 end
endmodule