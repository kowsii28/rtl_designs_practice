# rtl_designs_practice
RTL design and Verilog lab experiments


# Verilog Testbench and Timescale Explanation

## What is a Testbench?

A **testbench** is a special Verilog file used to **verify that a module works correctly**.  
- It is used **only for simulation**.  
- Its purpose is to **apply all possible input combinations** and check if the outputs are correct.  
- It does **not get synthesized** into hardware.

Think of it as a **virtual tester** for your circuit.

---

## Timescale in Verilog

The first line of a Verilog testbench often looks like this:

### `timescale <time_unit> / <time_precision>` in Verilog

The `timescale` directive in Verilog defines **how the simulator interprets time** for delays and timing calculations. It has two parts:

```verilog
`timescale <time_unit> / <time_precision>

```

1️⃣ **`time_unit`** – the base unit for delays (`#`)

- All delays in the module are measured in this unit.
- Examples: `1s`, `1ms`, `1us`, `1ns`, `1ps`.
- **Example:** `#100` with `time_unit = 1ns` → 100 nanoseconds delay.

2️⃣ **`time_precision`** – the smallest step the simulator can measure

- Ensures accurate simulation for fractional delays.
- Examples: `1ns`, `10ps`, `1ps`.
- **Example:** `time_precision = 1ps` → the simulator can measure time in steps of **0.001 ns**.

# reg vs wire in Verilog

## **wire**
- Represents a **physical connection** in the circuit.  
- **Cannot store a value by itself**; it is **driven by something else** (like a module output or `assign` statement).  
- Think of it like a **pipe**: it only carries a signal from one point to another.  

## **reg**
- Can **store a value** inside procedural blocks (`initial` or `always`).  
- Think of it like a **variable** in software that can hold a value.  

---

## **Why inputs are reg and outputs are wire in a Testbench**

- **Inputs (`reg`)**: We manually assign values in `initial` or `always` blocks.  
- **Outputs (`wire`)**: Driven by the DUT module; the testbench only observes them.  

### **Analogy**
- **reg** → a **switch** you control manually.  
- **wire** → a **light bulb** that shows the result automatically when the switch changes.  

> Key Point: Any signal you drive in a procedural block must be `reg`. Any signal driven by a module or continuous assignment is `wire`.

