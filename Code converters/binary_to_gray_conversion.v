`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 06:31:28
// Design Name: 
// Module Name: bi_gray
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


module bi_gray(
input [3:0] b,
output reg [3:0] g
    );
  always @(*) begin
   g[0]=b[1]^b[0];
   g[1]=b[2]^b[1];
   g[2]=b[3]^b[2];
   g[3]=b[3];      
   end
endmodule
