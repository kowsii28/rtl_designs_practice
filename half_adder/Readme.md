# Half Adder RTL Project

A **Half Adder** is a combinational digital circuit that adds **two single-bit binary numbers**.  
It has two outputs: **Sum** and **Carry**.

---

## Project Description

This project contains Verilog code for a **Half Adder**, including:

- RTL module (`half_adder.v`)
- Truth table
- Boolean equations
- Instructions to simulate

---

## Files

| File Name         | Description                       |
|------------------|-----------------------------------|
| half_adder.v      | Verilog RTL code for Half Adder for different type of modelling  |
| testbench.v       | Optional testbench for simulation |

---

## Truth Table

| A | B | Sum (S) | Carry (C) |
|---|---|---------|-----------|
| 0 | 0 | 0       | 0         |
| 0 | 1 | 1       | 0         |
| 1 | 0 | 1       | 0         |
| 1 | 1 | 0       | 1         |

---

## Boolean Expressions

- Sum = A ⊕ B  
- Carry = A · B

---

## Verilog Code for structural modelling

```verilog
`timescale 1ns / 1ps

// Half Adder Module
module half_adder(
    input  a,     
    input  b,     
    output sum,   
    output carry  
);

    assign sum   = a ^ b;  
    assign carry = a & b;  

endmodule

---


