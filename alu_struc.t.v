`include "alu_struc.v"

module test_adder (); // tests the 1 bit adder
	reg in1, in2, carryin;
	wire sum, carryout;

	bit_adder dut
		(	.sum (sum),
			.carryout (carryout),
			.in1 (in1),
			.in2 (in2),
			.carryin (carryin)
		);

	initial begin
	$dumpvars();
	in1 = 0; in2 = 0; carryin = 0; #20
	if (sum != 0 | carryout != 0) begin
		$display("failed. wanted (a, b, ci): 0 + 0 + 0= 0, co = 0. recieved %b, %b", sum, carryout);
	end
	in1 = 1; in2 = 0; carryin = 0; #20
	if (sum != 1 | carryout != 0) begin
		$display("failed. wanted (a, b, ci) 1 + 0 + 0 = 1, co = 0. recieved %b, %b", sum, carryout);
	end
	in1 = 0; in2 = 1; carryin = 0; #20
	if (sum != 1 | carryout != 0) begin
		$display("failed. wanted (a, b, ci) 0 + 1 + 0 = 1, co = 0. recieved %b, %b", sum, carryout);
	end
	in1 = 1; in2 = 0; carryin = 1; #20
	if (sum != 0 | carryout != 1) begin
		$display("failed. wanted (a, b, ci) 1 + 0 + 1 = 0, co = 1. recieved %b, %b", sum, carryout);
	end
	in1 = 1; in2 = 1; carryin = 0; #20
	if (sum != 0 | carryout != 1) begin
		$display("failed. wanted (a, b, ci) 1 + 1 + 0= 0, co = 1. recieved %b, %b", sum, carryout);
	end
	in1 = 1; in2 = 1; carryin = 1; #20
	if (sum != 1 | carryout != 1) begin
		$display("failed. wanted (a, b, ci) 1 + 1 + 1 = 1, co = 1. recieved %b, %b", sum, carryout);
	end
	end
endmodule