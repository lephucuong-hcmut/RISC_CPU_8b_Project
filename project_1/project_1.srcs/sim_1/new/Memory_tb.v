`timescale 1ns / 1ps

module Memory_tb;

    reg clk;
    reg [4:0] address;
    reg [7:0] data_in;
    reg wr;
    reg rd;
    reg data_e;
    wire [7:0] instruction;
    wire [7:0] data;

    Memory uut (
        .clk(clk),
        .address(address),
        .data_in(data_in),
        .wr(wr),
        .rd(rd),
        .data_e(data_e),
        .instruction(instruction),
        .data(data)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        address = 0;
        data_in = 0;
        wr = 0;
        rd = 0;
        data_e = 0;

        // Ghi dữ liệu vào ô nhớ 5 khi data_e = 1
        #10 address = 5; data_in = 8'hA5; wr = 1; data_e = 1;
        #10 wr = 0;

        // Đọc dữ liệu từ ô nhớ 5 khi data_e = 1
        #10 rd = 1; data_e = 1;
        #10 rd = 0;

        // Kiểm tra đọc instruction khi data_e = 0
        #10 rd = 1; data_e = 0;
        #10 rd = 0;

        // Kết thúc mô phỏng
        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | addr=%d | wr=%b | rd=%b | data_e=%b | data_in=%h | instruction=%h | data=%h",
                 $time, address, wr, rd, data_e, data_in, instruction, data);
    end
endmodule
