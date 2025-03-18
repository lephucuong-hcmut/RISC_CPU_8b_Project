`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 04:35:48 PM
// Design Name: 
// Module Name: Program_counter
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


module Program_Counter #(parameter N = 5)(
input clk,
input rst,
input [N-1:0] pc_in,
input inc_pc,
input load_pc,
output reg [N-1:0] pc_out
    );
always@(posedge clk) begin
    if(rst) begin
        pc_out <= 0;
    end else begin
        if(load_pc) begin
            pc_out <= pc_in;
        end else if(inc_pc) begin
           pc_out <= pc_out + 1; 
        end
    end
end
endmodule
