`timescale 1ns / 1ps

module carry_look_ahead(
input[3:0] a,b,
input cin,
output reg [3:0] s,
output reg cout  );

reg[3:0] g,p;
reg[4:0] c;

 always @(*) begin
 
        // Generate and propagate
        g = a & b;       // Gi = Ai AND Bi
        p = a ^ b;       // Pi = Ai XOR Bi

        // Initial carry
        c[0] = cin;
        // Carry look-ahead logic
        c[1] = g[0] | (p[0] & c[0]);
        c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
        c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
        c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) 
                     | (p[3] & p[2] & p[1] & g[0]) 
                     | (p[3] & p[2] & p[1] & p[0] & c[0]);
          // Final carry out
        cout = c[4];
        
        // Sum calculation
        s = p ^ c[3:0];   // Si = Pi XOR Ci
      
      
    end

endmodule


