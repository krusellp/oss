// tests out registers
`include "registers.v"

module test_pc ();
	reg[31:0] in;
	reg wrenable, clk, start;
	wire[31:0] out;

	reg_32_neg dut(in, wrenable, clk, start, out);

	initial begin
	$dumpfile("pc_reg_test.vcd");
	$dumpvars;
	// testing the start function
	in = 32'h00022200;
	wrenable = 1;
	clk = 0;
	start = 1;
	#20
	clk = 1;
	#30
	start = 0;
	#20
	clk = 0;
	#30
	clk = 1;
	wrenable = 1; in = 32'h00011100;
	#30
	clk = 0;
	end
endmodule

