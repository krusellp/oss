// mux file
module two_input_mux (a, b, sel, out);
	input[31:0] a, b;
	input sel;
	output[31:0] out;

	assign out = sel ? a : b;	 
	
endmodule

module mux_2_input (out, a, b, sel);
	output out;
	input a, b, sel;

	wire nsel,	// inverted select symbol
		 asel, 	// from first and gate to or
		 bsel, 	// from second and gate to or
		 out;	// the output from the or gate

	not u1(nsel, sel); 		// the inverter on the select
	and u2(asel, a, nsel);	// a & sel
	and u3(bsel, b, sel);	// b & sel
	or u4(out, asel, bsel);	// asel | bsel

endmodule