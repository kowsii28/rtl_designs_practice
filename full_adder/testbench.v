`timescale 1ns / 1ps

module fa_tb;
    reg x, y, z;       // inputs: renamed to x, y, z
    wire sum, carry;   // outputs

    // Instantiate the full adder
    fa dut (
        .a(x),         // module input a connected to x
        .b(y),         // module input b connected to y
        .c(z),       // module input cin connected to z
        .sum(sum),
        .carry(carry)
    );

    // Test all input combinations
    initial begin
        x = 0; y = 0; z = 0; #100;
        x = 0; y = 0; z = 1; #100;
        x = 0; y = 1; z = 0; #100;
        x = 0; y = 1; z = 1; #100;
        x = 1; y = 0; z = 0; #100;
        x = 1; y = 0; z = 1; #100;
        x = 1; y = 1; z = 0; #100;
        x = 1; y = 1; z = 1; #100;

        $finish; // end simulation
    end

    // Display outputs
    initial begin
        $monitor("Time=%0t | x=%b y=%b z=%b | sum=%b carry=%b", 
                  $time, x, y, z, sum, carry);
    end
endmodule
