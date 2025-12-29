`timescale 1ns / 1ps

module half_add_tb;
    reg a, b;
    wire sum, carry;

    // Instantiate the half adder
    half_add dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Test all input combinations
    initial begin
      

        a = 0; b = 0; #100;
        a = 0; b = 1; #100;
        a = 1; b = 0; #100;
        a = 1; b = 1; #100;


    end
endmodule
