# EnergyGuard SoC

## Project Title
EnergyGuard: Sequential RTL-Based Smart Energy Monitoring,
Fault Detection and Protection SoC

## Objective
Develop a sequential RTL-based digital system that processes
digitized voltage and current samples, calculates power,
accumulates energy, detects abnormal operating conditions,
and generates protection signals.

## Current Progress
- Input sampling register: implemented and simulated
- Power calculator: implemented and simulated
- Energy accumulator: implemented and simulated
- Threshold registers: RTL implemented; simulation pending
- Fault detector: pending
- Protection FSM: pending
- Synthesis and multi-corner STA: pending
- Physical design and GDSII: pending

## Tools
- Verilog
- Icarus Verilog
- GTKWave
- Yosys
- OpenSTA
- OpenROAD
- SKY130

## Planned Flow
Specification -> RTL -> Testbench -> Simulation -> Synthesis
-> Multi-corner STA -> Floorplan -> Placement -> CTS
-> Routing -> Physical Verification -> GDSII

This project is under development. Final results will be added
after implementation and verification.
## System Architecture

Block diagram: documentation image pending.

## Simulation Results

Simulation waveform: capture pending.

## SKY130 Synthesis

SKY130 synthesis: completed; see the synthesis reports in `reports/`.

## Static Timing Analysis

Static timing analysis: initial multi-corner results are available in `reports/`.

## Physical Design

Physical design: placement, routing, DRC, LVS, and GDSII generation are pending.
