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