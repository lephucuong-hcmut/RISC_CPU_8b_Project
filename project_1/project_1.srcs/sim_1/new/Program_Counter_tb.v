`timescale 1ns/1ps

module Program_Counter_tb;

    // Khai báo tín hiệu thử nghiệm
    reg clk;
    reg rst;
    reg [4:0] pc_in;
    reg inc_pc;
    reg load_pc;
    wire [4:0] pc;

    // Kết nối với module Program_Counter
    Program_Counter uut (
        .clk(clk),
        .rst(rst),
        .pc_in(pc_in),
        .inc_pc(inc_pc),
        .load_pc(load_pc),
        .pc(pc)
    );

    // Tạo clock 10ns
    always #5 clk = ~clk;

    initial begin
        // Khởi tạo giá trị ban đầu
        clk = 0;
        rst = 0;
        pc_in = 5'b00000;
        inc_pc = 0;
        load_pc = 0;
        
        // Reset và giữ một lúc
        rst = 1;
        #10 rst = 0;
        
        // Load giá trị 5 vào PC
        pc_in = 5'b00101;
        load_pc = 1;
        #10 load_pc = 0;
        
        // Tăng PC lên từng bước
        inc_pc = 1;
        #50 inc_pc = 0;
        
        // Load giá trị khác rồi tăng tiếp
        pc_in = 5'b01000;
        load_pc = 1;
        #10 load_pc = 0;
        inc_pc = 1;
        #20;
        // Dừng mô phỏng
        $stop;
    end

endmodule

