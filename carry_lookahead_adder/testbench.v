`timescale 1ns / 1ps

module carry_lookahead_tb;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    // Instantiate the Ripple Carry Adder
    carry_look_ahead cla (
        .a(a),
        .b(b),
        .cin(cin),
        .s(sum),
        .cout(cout)
    );

    initial begin
        a = 4'b0010; b = 4'b1000; cin = 0; #100;
        a = 4'b0101; b = 4'b0110; cin = 1; #100;
        a = 4'b1111; b = 4'b0101; cin = 1; #100;
        a = 4'b0100; b = 4'b0001; cin = 0; #100;

        $finish;
    end
endmodule

