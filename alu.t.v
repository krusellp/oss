// testing alu.v

`include "alu.v"

//module test_small_alu (); // testing small alu for +4
	//reg[31:0] in;
	//wire[31:0] out;

	//if_alu dut(in, out);

	//initial begin
		//in = 32'h00004000;
		//#100
		//$display("in = %h", out);
	//end
//endmodule

module test_adder ();
	reg[31:0] in1, in2;
	reg[2:0] ctrl;
	wire zero, carryout, overflow;
	wire[31:0] result;

	big_alu dut
		(
		.in1 (in1),
		.in2 (in2),
		.ctrl (ctrl),
		.zero (zero),
		.carryout (carryout),
		.overflow (overflow),
		.result (result)
		);

	initial begin
		in1 = 32'h00000001;
		in2 = 32'h00000001;
		if (result == 32'h00000010) begin
			$display("test failed. expected 32'h00000010 recieved %h",result);
		end
	end
endmodule 