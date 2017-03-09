// mux file
module two_input_mux (a, b, sel, out);
	input[31:0] a, b;
	input sel;
	output[31:0] out;

	assign out = sel ? a : b;	 
	
endmodule