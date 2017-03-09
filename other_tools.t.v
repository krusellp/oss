// other tools test bench
`include "other_tools.v"

module test_extender ();
	reg[15:0] unextended;
	wire[31:0] extended;

	sign_extender dut (
		.unextended (unextended),
		.extended (extended)
		);

	initial begin
	unextended = 16'hf00f;
	#30
	if (extended != 32'hfffff00f) begin
		$display("test 1 failed. wanted %h recieved %h", 32'hfffff00f, extended);
	end
	unextended = 16'h0007;
	#30
	if (extended != 32'h00000007) begin
		$display("test 2 failed. wanted %h recieved %h", 32'h00000007, extended);
	end
	end
endmodule

module test_shifter ();
	reg[31:0] unshifted;
	wire[31:0] shifted;

	left_shifter dut2(
		.unshifted (unshifted),
		.shifted (shifted)
		);

	initial begin
	unshifted = 32'hffffffff;
	#30
	if (shifted != 32'hfffffffc) begin
		$display("shifter test failed. wanted %h received %h", 32'h1111111c, shifted);
	end
	end
endmodule