`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 07:01:30
// Design Name: 
// Module Name: mux
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


module mux(
 input [2:0] s,
 input [7:0] i,
 output reg y
    );
    integer k;
always@(*)begin
for (k = 0; k < 8; k=k+1) begin
   if(k == s)
       y = i[k];
       
   end
end
endmodule
