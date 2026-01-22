`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 07:30:05
// Design Name: 
// Module Name: demux
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


module demux(
    input i,
    input [2:0] s,
    output reg [7:0] y
    );
    integer k;
 always @(*) begin
        y = 8'b0000_0000;      // default: all outputs 0
    
        for (k = 0; k < 8; k = k + 1) begin
            if (k == s)
                y[k] = i;      // send input to selected output
        end
    end

endmodule
