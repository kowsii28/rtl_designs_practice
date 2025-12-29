# Full Adder - Verilog Implementation

## Introduction
A **Full Adder** is a combinational digital circuit that adds three input bits (`A`, `B`, and `Cin`) and produces a **Sum** (`S`) and a **Carry Out** (`Cout`).  

Unlike a Half Adder, a Full Adder takes into account a **carry input** from the previous stage, making it useful for multi-bit binary addition.

---

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

---

## Verilog Code (Behavioral Modelling)


```verilog

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

```
