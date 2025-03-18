`timescale 1ns / 1ps

module Controller_tb;

    // Tín hiệu testbench
    reg clk;
    reg rst;
    reg [2:0] opcode;
    reg zero_flag;
    wire sel, rd, ld_ir, halt, inc_pc, ld_ac, ld_pc, wr, data_e;

    // Kết nối với module Controller
    Controller uut (
        .clk(clk),
        .rst(rst),
        .opcode(opcode),
        .zero_flag(zero_flag),
        .sel(sel),
        .rd(rd),
        .ld_ir(ld_ir),
        .halt(halt),
        .inc_pc(inc_pc),
        .ld_ac(ld_ac),
        .ld_pc(ld_pc),
        .wr(wr),
        .data_e(data_e)
    );

    // Tạo clock
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        zero_flag = 0;
        opcode = 3'b000;
        
        // Reset hệ thống
        #10 rst = 0;
        
        // Test lệnh HLT
        opcode = 3'b000; #20;
        
        // Test lệnh SKZ khi zero_flag = 0
        opcode = 3'b001; zero_flag = 0; #20;
        
        // Test lệnh SKZ khi zero_flag = 1
        zero_flag = 1; #20;
        
        // Test lệnh ADD
        opcode = 3'b100; zero_flag = 0; #20;
        
        // Test lệnh AND
        opcode = 3'b011; #20;
        
        // Test lệnh XOR
        opcode = 3'b100; #20;
        
        // Test lệnh LDA
        opcode = 3'b101; #20;
        
        // Test lệnh STO
        opcode = 3'b110; #20;
        
        // Test lệnh JMP
        opcode = 3'b111; #20;
        
        // Dừng mô phỏng
        $finish;
    end

    // In kết quả để theo dõi
    initial begin
        $monitor("Time=%0t | Opcode=%b | Zero Flag=%b | sel=%b | rd=%b | ld_ir=%b | halt=%b | inc_pc=%b | ld_ac=%b | ld_pc=%b | wr=%b | data_e=%b",
                 $time, opcode, zero_flag, sel, rd, ld_ir, halt, inc_pc, ld_ac, ld_pc, wr, data_e);
    end

endmodule
