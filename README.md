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
- **Example:** `#5` with `time_unit = 1ns` → 5 nanoseconds delay.

2️⃣ **`time_precision`** – the smallest step the simulator can measure

- Ensures accurate simulation for fractional delays.
- Examples: `1ns`, `10ps`, `1ps`.
- **Example:** `time_precision = 1ps` → the simulator can measure time in steps of **0.001 ns**.
