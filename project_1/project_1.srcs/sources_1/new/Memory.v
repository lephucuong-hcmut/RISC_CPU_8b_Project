`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 07:59:49 PM
// Design Name: 
// Module Name: Memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Memory(
    input clk,
    input [4:0] address,         // 5-bit address (32 locations)
    input [7:0] data_in,         // 8-bit data input
    input wr,                    // Write enable
    input rd,                    // Read enable
    input data_e,                // Data enable
    output reg [7:0] instruction, // 8-bit instruction output
    output reg [7:0] data_out        // 8-bit data output
);

    reg [7:0] mem [0:31];
    
    initial begin
        // Instruction
        mem[5'h00] = 8'b11111110; // JMP TST_JMP
        mem[5'h01] = 8'b00000000; // HLT
        mem[5'h02] = 8'b00000000; // HLT
        mem[5'h03] = 8'b10111010; // LDA DATA_1
        mem[5'h04] = 8'b00100000; // SKZ
        mem[5'h05] = 8'b00000000; // HLT
        mem[5'h06] = 8'b10111011; // LDA DATA_2
        mem[5'h07] = 8'b00100000; // SKZ
        mem[5'h08] = 8'b11101010; // JMP SKZ_OK
        mem[5'h09] = 8'b00000000; // HLT
        mem[5'h0A] = 8'b11011100; // STO TEMP
        mem[5'h0B] = 8'b10111010; // LDA DATA_1
        mem[5'h0C] = 8'b11011100; // STO TEMP
        mem[5'h0D] = 8'b10111100; // LDA TEMP
        mem[5'h0E] = 8'b00100000; // SKZ
        mem[5'h0F] = 8'b00000000; // HLT
        mem[5'h10] = 8'b10011011; // XOR DATA_2
        mem[5'h11] = 8'b00100000; // SKZ
        mem[5'h12] = 8'b11110100; // JMP XOR_OK
        mem[5'h13] = 8'b00000000; // HLT
        mem[5'h14] = 8'b10011011; // XOR DATA_2
        mem[5'h15] = 8'b00100000; // SKZ
        mem[5'h16] = 8'b00000000; // HLT
        mem[5'h17] = 8'b00000000; // HLT
        mem[5'h18] = 8'b11100000; // JMP BEGIN
        
        // Data
        mem[5'h1A] = 8'b00000000; // DATA_1: 0x00
        mem[5'h1B] = 8'b11111111; // DATA_2: 0xFF
        mem[5'h1C] = 8'b10101010; // TEMP:   0xAA
        
        mem[5'h1E] = 8'b11100011; // JMP JMP_OK
        mem[5'h1F] = 8'b00000000; // HLT
    end
    
    always @(posedge clk) begin
        if (wr && rd) begin
            instruction <= 8'b00000000;
            data_out <= 8'b00000000;
        end else begin
            if (wr && data_e) begin
                mem[address] <= data_in;
            end
            if (rd) begin
                    instruction <= mem[address];
                    data_out <= mem[address];
            end
        end
    end

endmodule

