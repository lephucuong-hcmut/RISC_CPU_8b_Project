`timescale 1ns / 1ps

module ALU_tb;

    // Tín hiệu testbench
    reg [7:0] inA, inB;
    reg [2:0] opcode;
    wire [7:0] result;
    wire is_zero;

    // Khởi tạo module ALU
    ALU uut (
        .inA(inA),
        .inB(inB),
        .opcode(opcode),
        .result(result),
        .is_zero(is_zero)
    );

    initial begin
        // Test lệnh HLT
        inA = 8'h05; inB = 8'h00; opcode = 3'b000; #10;
        
        // Test lệnh SKZ (skip if zero)
        inA = 8'h00; opcode = 3'b001; #10;
        inA = 8'h01; opcode = 3'b001; #10;
        
        // Test lệnh ADD
        inA = 8'h05; inB = 8'h03; opcode = 3'b010; #10;
        inA = 8'hFF; inB = 8'h01; opcode = 3'b010; #10; // Kiểm tra tràn số
        
        // Test lệnh AND
        inA = 8'b11001100; inB = 8'b10101010; opcode = 3'b011; #10;
        
        // Test lệnh XOR
        inA = 8'b11001100; inB = 8'b10101010; opcode = 3'b100; #10;
        
        // Test lệnh LDA
        inA = 8'h00; inB = 8'h3F; opcode = 3'b101; #10;
        
        // Test lệnh STO
        inA = 8'h7A; opcode = 3'b110; #10;
        
        // Test lệnh JMP
        inA = 8'h1E; opcode = 3'b111; #10;
        
        // Kết thúc mô phỏng
        $finish;
    end

    // In kết quả để dễ theo dõi
    initial begin
        $monitor("Time=%0t | inA=%h | inB=%h | opcode=%b | result=%h | is_zero=%b",
                 $time, inA, inB, opcode, result, is_zero);
    end

endmodule
