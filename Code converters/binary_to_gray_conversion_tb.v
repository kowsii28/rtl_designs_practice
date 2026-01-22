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
       b = 4'b1000;  #100;
       b = 4'b0110;  #100;
       b = 4'b0101;  #100;
       b = 4'b0001;  #100;

        $finish;
    end
endmodule
