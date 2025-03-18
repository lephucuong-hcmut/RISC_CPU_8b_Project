`timescale 1ns / 1ps

module Address_Mux_tb;

    // Khai báo tín hiệu testbench
    reg [4:0] pc;
    reg [4:0] operand;
    reg sel;
    wire [4:0] address;
    
    // Kết nối với module Address_Mux
    Address_Mux uut (
        .pc(pc),
        .operand(operand),
        .sel(sel),
        .address(address)
    );
    
    // Tạo các trường hợp kiểm thử
    initial begin
        // Trường hợp 1: sel = 0 (chọn operand)
        pc = 5'b00010;         // PC = 2
        operand = 5'b10101;    // Operand = 21
        sel = 0;               // Chọn operand
        #10;
        
        // Trường hợp 2: sel = 1 (chọn PC)
        sel = 1;               // Chọn PC
        #10;
        
        // Trường hợp 3: Thay đổi giá trị PC
        pc = 5'b11111;         // PC = 31
        #10;
        
        // Trường hợp 4: Thay đổi giá trị operand
        operand = 5'b01010;    // Operand = 10
        sel = 0;               // Chọn operand
        #10;
        
        // Kết thúc mô phỏng
        $finish;
    end
    
    // In kết quả để dễ theo dõi
    initial begin
        $monitor("Time = %0t | PC = %b | Operand = %b | Sel = %b | Address = %b", 
                 $time, pc, operand, sel, address);
    end

endmodule