/*
Summary:
This module is responsible for making an external user input only return true for
one clock cycle rather than returning true every clock cycle

Inputs:
 clk - creates the timing for the circuit
 reset - resets the input, and all values in the module to zero
 in - the input that is to be seperated into a single input
Outputs:
 out - the seperated form of the input that is to be processed by the system
*/
module inpuT (clk, Reset, in, out);
 input logic clk, Reset, in;
 output logic out;
 enum {A, B} ps, ns;
 
 always_comb begin
 case(ps)
 A: if (in) ns = B;
 else ns = A;
 B: if (in) ns = B;
 else ns = A;
 endcase
 end
 
 assign out = (ps == A) & in;
 
 always_ff @(posedge clk) begin
 if (Reset) 
 ps <= A;
 else 
 ps <= ns;
 end
endmodule

module inpuT_testbench();
 logic clk, Reset, in, out;
 
 inpuT dut (clk, Reset, in, out);
 
 parameter CLOCK_PERIOD = 100;
 initial begin
 clk <= 0;
 forever #(CLOCK_PERIOD/2) clk <= ~clk;
 end
 
 initial begin
 @(posedge clk);
 Reset <=1; in <= 0; @(posedge clk);
 Reset <= 0; @(posedge clk);
 @(posedge clk);
 in <= 1; @(posedge clk);
 @(posedge clk);
 in <= 0; @(posedge clk);
 @(posedge clk);
 in <= 1; @(posedge clk);
 @(posedge clk);
 @(posedge clk);
 $stop;
 end
endmodule