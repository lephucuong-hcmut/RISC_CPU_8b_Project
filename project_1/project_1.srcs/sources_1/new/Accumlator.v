`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 08:10:45 PM
// Design Name: 
// Module Name: Accumlator
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

module Accumulator (
    input clk,
    input rst,
    input load_ac,
    input [7:0] data_in,       // Dữ liệu đầu vào 8-bit
    output reg [7:0] data_out  // Dữ liệu đầu ra 8-bit
);

always @(posedge clk) begin
    if (rst) begin
        data_out <= 8'b00000000;  // Reset accumulator về 0
    end else if (load_ac) begin
        data_out <= data_in;      // Nạp giá trị mới vào AC
    end
end

endmodule
