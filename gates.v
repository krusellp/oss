
module XOR(in1, in2, out);
	input in1, in2;
	output out;
	xor #100 (out, in1, in2);

endmodule