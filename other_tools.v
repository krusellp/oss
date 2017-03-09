// sign extender and other functions?

module sign_extender(unextended, extended);
	input[15:0] unextended;
	output[31:0] extended;

	assign extended =  { {16{unextended[15]}}, unextended };

endmodule

module left_shifter(unshifted, shifted);
	// shifts stuff left by 2
	input[31:0] unshifted;
	output[31:0] shifted;
	assign shifted = unshifted<<2;
endmodule