`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2025 08:48:54 PM
// Design Name: 
// Module Name: RISC_CPU_8b
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


module RISC_CPU_8b #(parameter N = 5)(
    input clk,
    input rst,
    output reg [7:0] result,
    output reg is_zero
);

// Internal wires
wire [7:0] data_bus, instruction, ac_data_out;
wire [N-1:0] pc_out, address, operand;
wire [2:0] opcode;
wire [7:0] alu_result;
wire alu_result_zero_flag;
wire [3:0] current_state;

localparam INST_ADDR = 4'b0000;
localparam INST_FETCH = 4'b0001;
localparam INST_LOAD = 4'b0010;
localparam IDLE = 4'b0011;
localparam OP_ADDR = 4'b0100;
localparam OP_FETCH = 4'b0101;
localparam ALU_OP = 4'b0110;
localparam STORE = 4'b0111;

// Control signals
wire sel, halt, data_e, load_ir, load_ac, load_pc, inc_pc, rd, wr;

assign alu_result_zero_flag = (alu_result == 8'b00000000) ? 1 : 0;


//clock clock_divider(.clk_in(clk), .clk_out(clk_out) );
// Program Counter
Program_Counter PC (
    .clk(clk), .rst(rst), .load_pc(load_pc), .inc_pc(inc_pc), 
    .pc_in(operand), .pc_out(pc_out)
);

// Address Mux
Address_Mux AddrMux (
    .pc(pc_out), .operand(operand), .sel(sel), 
    .address(address)
);

// Memory
Memory MEM (
    .clk(clk), .address(address), .data_in(ac_data_out), .data_out(data_bus),
    .rd(rd), .wr(wr), .data_e(data_e), .instruction(instruction)
);

// Instruction Register
Instruction_Register IR (
    .clk(clk), .rst(rst), .load_ir(load_ir), .data_in(instruction),
    .opcode(opcode), .operand(operand)
);

// Accumulator
Accumulator AC (
    .clk(clk), .rst(rst), .load_ac(load_ac), .data_in(alu_result),
    .data_out(ac_data_out)
);

// ALU
ALU alu (
    .inA(ac_data_out), .inB(data_bus), .opcode(opcode),
    .result(alu_result)
);

// Controller
Controller ctrl (
    .clk(clk), .rst(rst), .opcode(opcode), .zero_flag(alu_result_zero_flag),
    .ld_ir(load_ir), .ld_ac(load_ac), .ld_pc(load_pc), .inc_pc(inc_pc),
    .rd(rd), .wr(wr), .sel(sel), .data_e(data_e), .halt(halt), .current_state(current_state)
);
always @(posedge clk) begin
    if (rst) begin
        result <= 8'b0;
        is_zero <= 1'b1;
    end else if (current_state == ALU_OP) begin // ALU_OP là mã trạng thái EX
        result <= alu_result;
    end 
    if(halt) begin
        $display("CPU halted!");
    end
    is_zero <= (ac_data_out == 0) ? 1 : 0;
end
endmodule

