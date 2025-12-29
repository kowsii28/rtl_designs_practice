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

## Verilog Code for Structural Modelling

### What is Structural Modelling?

Structural modelling describes a digital circuit by connecting basic components (gates or modules) together, similar to drawing a circuit diagram.

👉 It shows how the hardware is structured, not just what it does.

```verilog
`timescale 1ns / 1ps

// Half Adder - Structural Modelling
module half_adder_structural(
    input  a,
    input  b,
    output sum,
    output carry
);
    assign sum   = a ^ b;  
    assign carry = a & b;  

endmodule


```
## **Verilog Code for Gate-Level Modelling**

### **What it means**

Gate-level modelling describes a digital circuit by **directly using logic gates** to implement the required functionality.  
This approach closely resembles the **actual hardware implementation**.

### **Key Characteristics**

- Uses **primitive logic gates** such as `and`, `or`, `xor`, `not`
- **No `always` block**
- **No `assign` statements**
- Very close to **physical hardware**
- Provides the **lowest level of abstraction**

👉 **Gate-level modelling represents the circuit exactly as it would be built using logic gates.**

```verilog
`timescale 1ns / 1ps

// Half Adder - Gate Level Modelling
module half_adder_gate(
    input  a,
    input  b,
    output sum,
    output carry
);

    xor (sum, a, b);
    and (carry, a, b);

endmodule

```

# Verilog Code for Behavioral Modelling

**Behavioral modelling** is a high-level method of describing how a digital circuit behaves, without worrying about its physical implementation using gates or transistors.

In behavioral modelling, you focus on:  
- **What the circuit should do**  
- **Not how it is built internally**  

It emphasizes **logic and functionality**, rather than hardware structure.  

Instead of saying:

 “use AND gate, OR gate, XOR gate”, 

👉 “when inputs change, this is the output behavior.”

“If a and b are inputs, output sum is XOR of them and carry is AND of them.”

```verilog
`timescale 1ns / 1ps

module half_add(
a, b, sum, carry
    );
    input a, b;
    output reg sum;
    output reg carry;

    always@(*)
    begin
     sum = a^b;
     carry = a & b;
     end

endmodule
```



