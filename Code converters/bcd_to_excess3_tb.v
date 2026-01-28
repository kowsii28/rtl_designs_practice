`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 06:51:51
// Design Name: 
// Module Name: bi_ex3_tb
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


module bi_ex3_tb;
  reg  [3:0] b;
    wire [3:0] e;

    // Instantiate the bcd to excess3 code conversion
    bcd_ex3 btoex (
        .b(b),
        .ex3(e)
    );

    initial begin
       b = 4'b1001;  #100;
       b = 4'b1100;  #100;
       b = 4'b0101;  #100;
       b = 4'b0111;  #100;
end
endmodule
