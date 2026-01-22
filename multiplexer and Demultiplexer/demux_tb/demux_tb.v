`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 07:32:10
// Design Name: 
// Module Name: demux_tb
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


module demux_tb;


    reg        d;        // input
    reg  [2:0] s;        // select
    wire [7:0] y;        // outputs

    // Instantiate DUT
    demux dut (
        .i(d),
        .s(s),
        .y(y)
    );

    initial begin
        // Case 1: d = 1, change select
        d = 1'b1;
        s = 3'd0; #100;
        s = 3'd1; #100;
        s = 3'd2; #100;
        s = 3'd3; #100;
        s = 3'd4; #100;
        s = 3'd5; #100;
        s = 3'd6; #100;
        s = 3'd7; #100;

     
        // Case 2: toggle d while select fixed
        s = 3'd2;
        d = 1'b0; #50;
        d = 1'b1; #50;
        d = 1'b0; #50;
        d = 1'b1; #50;
        $finish;
    end

endmodule
