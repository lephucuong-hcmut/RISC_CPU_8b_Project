`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 08:28:03 PM
// Design Name: 
// Module Name: ALU
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


`timescale 1ns / 1ps

module ALU (
    input [7:0] inA,          // Toán hạng A (8-bit)
    input [7:0] inB,          // Toán hạng B (8-bit)
    input [2:0] opcode,       // Mã lệnh (3-bit)
    output reg [7:0] result  // Kết quả (8-bit)         
);

// Mã lệnh opcode
localparam HLT  = 3'b000;
localparam SKZ  = 3'b001;
localparam ADD_ = 3'b010;
localparam AND_ = 3'b011;
localparam XOR_ = 3'b100;
localparam LDA  = 3'b101;
localparam STO  = 3'b110;
localparam JMP  = 3'b111;




always @(*) begin
        case (opcode)
            HLT:  result = inA;          
            SKZ:  result = inA;          
            ADD_: result = inA + inB;        
            AND_: result = inA & inB;        
            XOR_: result = inA ^ inB;         
            LDA:  result = inB;              
            STO:  result = inA;          
            JMP:  result = inA;          
            default: result = 8'b00000000;   // Mặc định về 0
        endcase
  
end

// Cờ zero
//assign is_zero = (inA == 8'b00000000);

endmodule

