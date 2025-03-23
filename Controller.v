`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 08:36:22 PM
// Design Name: 
// Module Name: Controller
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


module Controller (
    input clk,                  // Tín hiệu clock
    input rst,                // Tín hiệu reset (active low)
    input [2:0] opcode,         // Opcode (3-bit)
    input zero_flag,            // Cờ zero từ ALU
    output reg [3:0] current_state,
    output reg sel,                  // Tín hiệu select
    output reg rd,                   // Tín hiệu đọc bộ nhớ
    output reg ld_ir,                // Load instruction register
    output reg halt,                 // Dừng chương trình
    output reg inc_pc,               // Tăng program counter
    output reg ld_ac,                // Load accumulator
    output reg ld_pc,                // Load program counter
    output reg wr,                   // Ghi bộ nhớ
    output reg data_e                // Data enable
);

// Định nghĩa trạng thái
localparam INST_ADDR = 4'b0000;
localparam INST_FETCH = 4'b0001;
localparam INST_LOAD = 4'b0010;
localparam IDLE = 4'b0011;
localparam OP_ADDR = 4'b0100;
localparam OP_FETCH = 4'b0101;
localparam ALU_OP = 4'b0110;
localparam STORE = 4'b0111;
localparam STOP = 4'b1111;

localparam HLT  = 3'b000;
localparam SKZ  = 3'b001;
localparam ADD_ = 3'b010;
localparam AND_  = 3'b011;
localparam XOR_ = 3'b100;
localparam LDA = 3'b101;
localparam STO  = 3'b110;
localparam JMP  = 3'b111;


reg [3:0] state, next_state;

// Bộ logic trạng thái
always @(posedge clk) begin
    if (rst)
        state <= INST_ADDR;
    else
        state <= next_state;
end

// Logic chuyển trạng thái
always @(*) begin
    case (state)
        INST_ADDR: next_state = INST_FETCH;
        INST_FETCH: next_state = INST_LOAD;
        INST_LOAD: next_state = IDLE;
        IDLE: next_state = OP_ADDR;
        OP_ADDR: next_state = (opcode == HLT) ? STOP : OP_FETCH;
        OP_FETCH: next_state = (opcode == STO) ? STORE : ALU_OP;
        ALU_OP: next_state = (opcode == SKZ && zero_flag) ? INST_ADDR : STORE;
        STORE: next_state = INST_ADDR;
        STOP: next_state = STOP;
        default: next_state = INST_ADDR;
    endcase
end

// Bộ giải mã output
//always @(*) begin
//    // Mặc định tất cả tín hiệu là 0
//    sel = 0; rd = 0; ld_ir = 0; halt = 0;
//    inc_pc = 0; ld_ac = 0; ld_pc = 0; wr = 0; data_e = 0;
//    current_state = state;
//    case (state)
//        INST_ADDR: begin
//         sel = 1; 
//         rd = 0; 
//         ld_ir = 0;
//         halt = 0;
//         inc_pc = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0; 
//         end
//        INST_FETCH: begin
//         sel = 1; 
//         rd = 1; 
//         ld_ir = 0;
//         halt = 0;
//         inc_pc = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0; 
//         end 
//        INST_LOAD: begin
//         sel = 1; 
//         rd = 1; 
//         ld_ir = 1;
//         halt = 0;
//         inc_pc = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0; 
//        end
//        IDLE: begin
//         sel = 1; 
//         rd = 1; 
//         ld_ir = 1;
//         halt = 0;
//         inc_pc = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0; 
//         end
//        OP_ADDR: begin
//         if(opcode == HLT) begin
//         halt = 1;
//         end else begin
//         halt = 0;
//         end
//         sel = 0;  
//         rd = 0; 
//         ld_ir = 0;
//         inc_pc = 1;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0;  
//        end
//        OP_FETCH: begin
//         sel = 0; 
//         ld_ir = 0;
//         halt = 0;
//         inc_pc = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0; 
//         case(opcode)
//         ADD_: rd = 1;
//         AND_: rd = 1;
//         XOR_: rd = 1;
//         LDA:  rd = 1;
//         default: rd = 0;
//         endcase
//         end
//        ALU_OP: begin
//         sel = 0; 
//         rd = 0;
//         ld_ir = 0;
//         halt = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0; 
//         inc_pc = 0;
//         case(opcode)
//         ADD_: rd = 1;
//         AND_: rd = 1;
//         XOR_: rd = 1;
//         LDA:  rd = 1;
//         JMP: ld_pc = 1;
//         STO: data_e = 1;
//         SKZ: begin
//              if(zero_flag) begin
//              inc_pc = 1;
//              end
//              else begin
//              inc_pc = 0;
//              end
//         end
//         default: begin
//         rd = 0;
//         ld_pc = 0;
//         data_e = 0;
//         inc_pc = 0;
//         end
//         endcase
//         end   
//         STORE: begin
//         sel = 0; 
//         rd = 0;
//         ld_ir = 0;
//         halt = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         inc_pc = 0;
//         wr = 0;
//         data_e = 0; 
//         case(opcode)
//         ADD_: begin rd = 1; ld_ac = 1;end
//         AND_: begin rd = 1; ld_ac = 1;end
//         XOR_: begin rd = 1; ld_ac = 1;end
//         LDA:  begin rd = 1; ld_ac = 1;end
//         JMP: ld_pc = 1;
//         STO: begin wr = 1; data_e = 1; end
//         default: begin
//         rd = 0;
//         ld_ac = 0;
//         wr = 0;
//         data_e = 0;
//         end
//         endcase
//         end
//         STOP: begin
//         sel = 0; 
//         rd = 0; 
//         ld_ir = 0;
//         halt = 1;
//         inc_pc = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0;      
//         end
//         default: begin
//         sel = 0; 
//         rd = 0; 
//         ld_ir = 0;
//         halt = 0;
//         inc_pc = 0;
//         ld_ac = 0;
//         ld_pc = 0;
//         wr = 0;
//         data_e = 0;    
//         end
//    endcase
//end
always @(*) begin
    // Giá trị mặc định
    sel = 0; rd = 0; ld_ir = 0; halt = 0;
    inc_pc = 0; ld_ac = 0; ld_pc = 0; wr = 0; data_e = 0;
    current_state = state;

    case (state)
        INST_ADDR: begin
            sel = 1;
        end
        INST_FETCH: begin
            sel = 1; 
            rd = 1;
        end
        INST_LOAD: begin
            sel = 1;
            rd = 1;
            ld_ir = 1;
        end
        IDLE: begin
            sel = 1;
            rd = 1;
            ld_ir = 1;
        end
        OP_ADDR: begin
            if (opcode == HLT) halt = 1;
            else inc_pc = 1;
        end
        OP_FETCH: begin
            case (opcode)
                ADD_, AND_, XOR_, LDA: rd = 1;
            endcase
        end
        ALU_OP: begin
            case (opcode)
                ADD_, AND_, XOR_, LDA: rd = 1;
                JMP: ld_pc = 1;
                STO: data_e = 1;
                SKZ: inc_pc = zero_flag;
            endcase
        end
        STORE: begin
            case (opcode)
                ADD_, AND_, XOR_, LDA: begin rd = 1; ld_ac = 1; end
                STO: begin wr = 1; data_e = 1; end
            endcase
        end
        STOP: begin
            halt = 1;
        end
    endcase
end

endmodule
          