`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 06:48:32
// Design Name: 
// Module Name: bcd_ex3
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


module bcd_ex3( input  [3:0] b,
        output reg [3:0] ex3

    );
  always @(*) begin
    
     if (b <= 4'd9)
         ex3 = b + 4'd3;
     else
         ex3 = 4'bxxxx; // invalid BCD

     end
endmodule
