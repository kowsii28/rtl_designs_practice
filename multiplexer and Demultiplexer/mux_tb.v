`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 07:12:23
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;

    reg  [7:0] i;     // inputs
    reg  [2:0] s;     // select lines
    wire y;           // output

    // Instantiate DUT
    mux dut (
        .i(i),
        .s(s),
        .y(y)
    );

    initial begin
        // Apply input pattern
        i = 8'b1101_0110;   // i[7]=1 ... i[0]=0

        s = 3'd0; #100;   
        s = 3'd6; #100;  
        s = 3'd4; #100;   
        s = 3'd7; #100;   
        s = 3'd2; #100;   
        s = 3'd5; #100;   
        s = 3'd3; #100;   
        s = 3'd1; #100;   

        $finish;
    end

endmodule
