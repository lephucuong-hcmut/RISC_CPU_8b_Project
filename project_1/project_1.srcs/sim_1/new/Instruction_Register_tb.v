`timescale 1ns / 1ps

module Instruction_Register_tb;

    // Tín hiệu testbench
    reg clk;
    reg rst;
    reg load_ir;
    reg [7:0] data_in;
    wire [2:0] opcode;
    wire [4:0] operand;

    // Kết nối với module Instruction_Register
    Instruction_Register uut (
        .clk(clk),
        .rst(rst),
        .load_ir(load_ir),
        .data_in(data_in),
        .opcode(opcode),
        .operand(operand)
    );

    // Tạo xung clock
    always #5 clk = ~clk;

    initial begin
        // Khởi tạo tín hiệu ban đầu
        clk = 0;
        rst = 1;
        load_ir = 0;
        data_in = 8'b00000000;
        
        // Reset thanh ghi
        #10 rst = 0;
        
        // Load mã lệnh 101_01100
        #10 data_in = 8'b10101100; load_ir = 1;
        #10 load_ir = 0;
        
        // Load mã lệnh khác 010_11111
        #10 data_in = 8'b01011111; load_ir = 1;
        #10 load_ir = 0;
        
        // Giữ giá trị khi load_ir = 0
        #10 data_in = 8'b11000000; load_ir = 0;
        
        // Thử reset lại lần nữa
        #10 rst = 1;
        #10 rst = 0;
        
        // Kết thúc mô phỏng
        #20 $finish;
    end

    // In kết quả để theo dõi dễ dàng
    initial begin
        $monitor("Time = %0t | clk = %b | rst = %b | load_ir = %b | data_in = %b | opcode = %b | operand = %b", 
                 $time, clk, rst, load_ir, data_in, opcode, operand);
    end

endmodule
