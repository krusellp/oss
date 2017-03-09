module bit_adder(sum, carryout, in1, in2, carryin);
	output sum; 		// 1 bit sum
	output carryout; 	// carryout of sum
	input in1, in2; 	// the inputs
	input carryin; 		// the carryin

	wire w1; // from 1 xor gate to the other
	wire sum;			// the final sum
	wire w2, w3; 		// from and gates or gate
	wire carryout; 		// the carryout

	xor (w1, in1, in2);
	xor (sum, carryin, w1);
	and (w2, carryin, w1), (w3, in1, in2);
	or (carryout, w2, w3);

endmodule

