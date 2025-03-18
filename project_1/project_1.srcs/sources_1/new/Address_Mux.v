`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 07:49:19 PM
// Design Name: 
// Module Name: Address_Mux
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


module Address_Mux #(parameter N = 5)(
    input [4:0] pc,              // Địa chỉ từ Program Counter
    input [N-1:0] operand,         // Địa chỉ từ operand 
    input sel,                   // Tín hiệu chọn (0: PC, 1: operand)
    output reg [N-1:0] address     // Địa chỉ gửi đến bộ nhớ
);

always @(*) begin
    if (!sel) 
        address = operand;       // Nếu sel = 0, chọn operand 
    else 
        address = pc;            // Nếu sel = 1, chọn PC (normal flow)
end
endmodule
