`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2026 22:11:00
// Design Name: 
// Module Name: comparator
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


module comparator(

  output reg eq,
  output reg gt,
  output reg lt,
  input [3:0] a,
  input [3:0] b
);

  always @(*) begin
    lt = (a < b);
    eq = (a == b);
    gt = (a > b);
  end
  
endmodule
