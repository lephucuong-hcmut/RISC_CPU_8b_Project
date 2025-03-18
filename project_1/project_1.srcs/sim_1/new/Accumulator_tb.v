`timescale 1ns / 1ps

module Accumulator_tb;

    // Khai báo tín hiệu testbench
    reg clk;
    reg rst;
    reg load_ac;
    reg [7:0] data_in;
    wire [7:0] data_out;

    // Kết nối với module Accumulator
    Accumulator uut (
        .clk(clk),
        .rst(rst),
        .load_ac(load_ac),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Tạo xung clock
    always #5 clk = ~clk;

    initial begin
        // Khởi tạo giá trị ban đầu
        clk = 0;
        rst = 0;
        load_ac = 0;
        data_in = 8'h00;
        
        // Reset hệ thống
        #10 rst = 1;
        #10 rst = 0;
        
        // Nạp giá trị mới
        #10 data_in = 8'hA5; load_ac = 1;
        #10 load_ac = 0;
        
        // Giữ nguyên giá trị khi load_ac = 0
        #10 data_in = 8'h3C; load_ac = 0;
        
        // Nạp giá trị khác
        #10 data_in = 8'hFF; load_ac = 1;
        #10 load_ac = 0;
        
        // Reset lần nữa để kiểm tra
        #10 rst = 1;
        #10 rst = 0;
        
        // Kết thúc mô phỏng
        #20 $finish;
    end

    // In kết quả để theo dõi dễ dàng
    initial begin
        $monitor("Time = %0t | clk = %b | rst = %b | load_ac = %b | data_in = %h | data_out = %h", 
                 $time, clk, rst, load_ac, data_in, data_out);
    end

endmodule

