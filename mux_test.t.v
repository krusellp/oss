// test bench
`include "oss_muxes.v"
module mux_test ();
reg[31:0] a, b;
reg s;
wire[31:0] out;

two_input_mux test_mux(a, b, s, out);

initial begin
	//$dumpfile("mux_32.vcd");
	//$dumpvars;
	//$display("Test Case 1 Failed: NAND implementation failed");
	a <= 32'haaaaaaaa;
	b <= 32'hcccccccc;
	s <= 1;
	#100
	if (out != a) begin
		$display("failed. s = %b | out = %h", s, out);
	end
	a <= 32'haaaaaaaa;
	b <= 32'hcccccccc;
	s <= 0;
	#100
	if (out != b) begin
		$display("failed. s = %b | out = %h", s, out);
	end	
end
endmodule