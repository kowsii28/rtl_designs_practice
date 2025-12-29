# Ripple Carry Adder (RCA)

A **Ripple Carry Adder (RCA)** is a digital circuit used to **add two binary numbers of `n` bits**. It is built by **cascading `n` full adders**, where each full adder adds a single bit from each number along with the carry from the previous stage.

---

## 1️⃣ Working Principle

1. **Inputs**: Two n-bit numbers `A = A[n-1:0]` and `B = B[n-1:0]`, and an input carry `Cin` (often set by the user).

2. **Full Adders**: Each bit of the numbers is added using a **full adder**:
    - `Sum[i] = A[i] XOR B[i] XOR Carry[i]`
    - `Carry[i+1] = (A[i] AND B[i]) OR (B[i] AND Carry[i]) OR (A[i] AND Carry[i])`

3. **Carry Propagation**:
    - The **input carry `Cin`** goes into the first full adder.
    - Each subsequent full adder receives its carry input from the **carry output of the previous adder**, hence the name *ripple carry*.

---

## 2️⃣ Block Diagram


<img width="523" height="263" alt="image" src="https://github.com/user-attachments/assets/009c7588-b20b-417b-8885-15d7ae550b88" />

