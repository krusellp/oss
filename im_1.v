//------------------------------------------------------------------------
// Instruction Memory
//   Stores up to 32 instructions
//   PC picks which instruction to do next
//------------------------------------------------------------------------

module instructionmemory
(
    input[31:0] address,
    output[31:0] dataOut
);
	reg[7:0] byte[4095:0];
	assign dataOut = {byte[address], byte}
    reg[31:0] memory[1023:0];
    initial $readmemh("mem.txt", memory);
    assign dataOut = memory[address >> 2]; // Shifts by 2 bits (divide by 4)
endmodule