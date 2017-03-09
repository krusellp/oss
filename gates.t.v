`include "gates.v"

module test_xor_gate ();
	reg in1, in2;
	wire out;

	XOR dut
		(   .in1 (in1),
			.in2 (in2),
			.out (out)
		);

	initial begin
	$dumpvars();
	in1 = 0; in2 = 0; #120
	if (out != 0) begin
		$display("device failed, should see 1, intead recieving %b", out);
	end
	in1 = 1; in2 = 0; #120
	if (out != 1) begin
		$display("device failed, should see 0, instead receiving %b", out);
	end
	in1 = 0; in2 = 1; #120
	if (out != 1) begin
		$display("device failed, should see 0, instead receiving %b", out);
	end
	in1 = 1; in2 = 1; #120
	if (out != 0) begin
		$display("device failed, should see 0, instead receiving %b", out);
	end
	end
endmodule