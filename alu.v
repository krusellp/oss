// alu's and such
// alu for if stage
module if_alu(in, out);
	input[31:0] in;
	output[31:0] out;

	assign out = in + 4;
endmodule

// big alu

module big_alu(in1, in2, ctrl, zero, carryout, overflow, result);
	input[31:0] in1, in2;
	input[2:0] ctrl;
	output reg [31:0] result;
	output zero, carryout, overflow;

	localparam 	ADD = 3'd0,
				SUB = 3'd1,
				XOR = 3'd2,
				SLT = 3'd3,
				AND = 3'd4,
				NAND = 3'd5,
				NOR = 3'd6,
				OR = 3'd7;

	always @(ctrl) begin
		case(ctrl)
			ADD: begin
			result <= in1 + in2; // add overflow?
			end
		endcase
	end

endmodule