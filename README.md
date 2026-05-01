# 4-bit Synchronous Counter (Verilog)

A simple 4-bit synchronous up-counter with synchronous reset, designed in Verilog and verified using Icarus Verilog and Surfer.

## Design

- **Module:** `counter_4bit`
- **Inputs:** `clk` (clock), `rst` (synchronous active-high reset)
- **Output:** `count[3:0]` — 4-bit count value
- **Behavior:** On every rising edge of `clk`, `count` increments by 1. When `rst` is high, `count` is loaded with 0 on the next clock edge. The counter wraps from 15 back to 0.

## Files

- `counter.v` — RTL design
- `counter_tb.v` — Testbench (100 MHz clock, 12 ns reset, 200 ns run)
- `counter.vcd` — Simulation waveform output

## How to Run

Requires [Icarus Verilog](http://iverilog.icarus.com/) and [Surfer](https://surfer-project.org/).

```bash
iverilog -o counter_sim counter.v counter_tb.v
vvp counter_sim
surfer counter.vcd
```

## Tools Used

- Icarus Verilog 13.0 (compile + simulate)
- Surfer 0.7.0 (waveform viewer)

## Author

Ashakirana V — B.E. Electronics and Communication Engineering, CMR Institute of Technology, Bengaluru
