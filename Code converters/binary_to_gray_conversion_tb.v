`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 06:37:11
// Design Name: 
// Module Name: bi_gray_tb
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


module bi_gray_tb;

 reg  [3:0] b;
    wire [3:0] g;

    // Instantiate the binary to gray code conversion
    bi_gray btog (
        .b(b),
        .g(g)
    );

    initial begin
    b = 4'b0000;  #10;   // 0
    b = 4'b0001;  #10;   // 1
    b = 4'b0010;  #10;   // 2
    b = 4'b0011;  #10;   // 3
    b = 4'b0100;  #10;   // 4
    b = 4'b0101;  #10;   // 5
    b = 4'b0110;  #10;   // 6
    b = 4'b0111;  #10;   // 7
    b = 4'b1000;  #10;   // 8
    b = 4'b1001;  #10;   // 9
    b = 4'b1010;  #10;   // 10
    b = 4'b1011;  #10;   // 11
    b = 4'b1100;  #10;   // 12
    b = 4'b1101;  #10;   // 13
    b = 4'b1110;  #10;   // 14
    b = 4'b1111;  #10;   // 15

    end
endmodule
