`timescale 1ns / 1ps

module ripple_carry_adder_tb;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    // Instantiate the Ripple Carry Adder
    ripple_carry_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(sum),
        .cout(cout)
    );

    initial begin
        a = 4'b0011; b = 4'b1000; cin = 0; #100;
        a = 4'b0101; b = 4'b0111; cin = 1; #100;
        a = 4'b1111; b = 4'b1001; cin = 0; #100;
        a = 4'b1010; b = 4'b0110; cin = 1; #100;

        $finish;
    end
endmodule
