`include "oss_muxes.v"

module test_1bit_mux ();
	reg a, b, sel;
	wire out;

	mux_2_input dut(	.a (a),
						.b (b),
						.sel (sel),
						.out (out) );

	initial begin
	//$dumpvars();
	a = 0; b = 0; sel = 0; #1
	if (out != 0) begin
		$display("test 1 failed. %b ? %b : %b should equal 0, output = %b",sel, a, b, out);
	end
	a = 1; b = 0; sel = 1; #1
	if (out != 0) begin
		$display("test 2 failed. %b ? %b : %b should equal 0, output = %b",sel, a, b, out);
	end
	a = 1; b = 0; sel = 0; #1
	if (out != 1) begin
		$display("test 3 failed. %b ? %b : %b should equal 1, output = %b",sel, a, b, out);
	end
	end
endmodule