`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2026 22:12:53
// Design Name: 
// Module Name: com_tb
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


module com_tb;
 reg  [3:0] a, b;
 wire gt,lt,eq;
 
 comparator com (
        .a(a),
        .b(b),
        .eq(eq),
        .lt(lt),
        .gt(gt)
    );

    initial begin
        a = 4'b0010; b = 4'b1000;  #100;
        a = 4'b0101; b = 4'b0011;  #100;
        a = 4'b1111; b = 4'b0101;  #100;
        a = 4'b0100; b = 4'b0100;  #100;

        $finish;
    end
 
endmodule
