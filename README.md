# 8-bit ALU in Verilog

## Overview
This project implements an **8-bit Arithmetic Logic Unit (ALU)** in Verilog.  
The ALU supports the following operations:
- Addition
- Subtraction
- Bitwise AND, OR, XOR
- Logical Shift Left / Right
- Equality Check

## Files
- `ALU_8bit.v` → ALU implementation (RTL design)  
- `tb_ALU_8bit.v` → Testbench with stimulus and waveform dump  

## Simulation (using Icarus Verilog)
```bash
iverilog -o alu_sim ALU_8bit.v tb_ALU_8bit.v
vvp alu_sim
gtkwave alu_wave.vcd

