# Ring Counter in Verilog

## Overview

This project implements a 4-bit Ring Counter using Verilog HDL.
A Ring Counter is a shift register in which the output of the last
flip-flop is fed back to the input of the first flip-flop.

A single logic '1' circulates through the register on every clock cycle.

## Features

- 4-bit Ring Counter
- Synchronous operation with clock
- Reset functionality
- One-hot output sequence
- Verilog HDL implementation
- Testbench verification
- Simulation waveform

## State Sequence

The counter follows this sequence:

0001 → 0010 → 0100 → 1000 → 0001

## Inputs

| Signal | Width | Description |
|--------|-------|-------------|
| `clk` | 1 | Clock signal |
| `reset` | 1 | Reset signal |

## Output

| Signal | Width | Description |
|--------|-------|-------------|
| `q` | 4 | Ring counter output |

## Tools Used

- Verilog HDL
- ModelSim / Vivado / Icarus Verilog
- GTKWave

## Project Files

- `ring_counter.v` - Ring counter design
- `ring_counter_tb.v` - Testbench
- `simulation/waveform.png` - Simulation waveform
- `simulation/output.log` - Simulation output

## Simulation

The testbench verifies the rotation of the logic '1' through all four
counter states.

