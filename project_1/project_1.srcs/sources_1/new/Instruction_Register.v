`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 08:05:21 PM
// Design Name: 
// Module Name: Instruction_Register
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


module Instruction_Register #(parameter N = 5)(
    input clk,
    input rst,
    input load_ir,
    input [7:0] data_in,        // Dữ liệu 8-bit từ bộ nhớ
    output reg [2:0] opcode,    // Opcode 3-bit
    output reg [N-1:0] operand    // Operand 5-bit
);

always @(posedge clk) begin
    if (rst) begin
        opcode  <= 3'b000;    
        operand <= 0;    
    end else if (load_ir) begin
        opcode  <= data_in[7:N]; // Lấy 3 bit cao làm opcode
        operand <= data_in[N-1:0]; // Lấy 5 bit thấp làm operand
    end
end

endmodule
