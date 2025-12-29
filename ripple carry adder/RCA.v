`timescale 1ns / 1ps

module fa( a, b, c, sum, carry );
   input a , b, c;
   output reg sum;
   output reg carry;
   always@(*)
   begin
   sum = a^b^c;
   carry = a&b | b&c | a&c;
   end   
endmodule

module ripple_carry_adder(
    input[3:0] a,b,
    input cin, 
    output[3:0] s,
    output cout
    );
    fa bit0 (a[0], b[0], cin, s[0], c1);
    fa bit1 (a[1], b[1], c1, s[1], c2);
    fa bit2 (a[2], b[2], c2, s[2], c3);
    fa bit3 (a[3], b[3], c3, s[3], cout);
endmodule

