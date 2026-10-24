# EnergyGuard-SoC

## Project Title
**EnergyGuard-SoC: RTL-to-GDSII Implementation of an Intelligent Energy Monitoring and Protection System**

## Objective
Develop a sequential RTL-based digital system that processes digitized voltage and current samples, calculates power-related values, accumulates energy, monitors programmable thresholds, detects fault conditions, and manages protection states.

The project demonstrates the complete digital implementation flow, from RTL design and functional verification through synthesis, timing analysis, physical design, and GDSII generation.

## Project Overview
EnergyGuard-SoC is a modular digital hardware design developed using Verilog HDL. The design integrates input sampling, power calculation, energy accumulation, threshold monitoring, fault detection, and protection control.

## System Architecture
The design contains the following main RTL modules:

- `input_register.v` — input sampling and storage
- `power_calculator.v` — power-related calculation
- `energy_accumulator.v` — accumulated energy tracking
- `threshold_register.v` — programmable threshold storage
- `fault_detector.v` — fault-condition detection
- `protection_fsm.v` — protection state management
- `energyguard_top.v` — top-level integration

## Tools and Technologies
- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- OpenSTA
- OpenROAD
- SKY130 platform
- KLayout
- Git and GitHub

## Implementation Flow
The project completed the following RTL-to-GDSII flow:

1. RTL design and module integration
2. Testbench development and functional simulation
3. Logic synthesis and technology mapping
4. Floorplanning and standard-cell placement
5. Clock tree synthesis
6. Detailed routing
7. Timing report analysis and final design finishing
8. GDSII generation and layout inspection

## Verification and Simulation
Testbenches were developed for the RTL modules, and the project regression completed successfully. Simulation waveforms were used to inspect the design's behavior.

## Synthesis Results
Generic synthesis and SKY130 technology-mapped synthesis were completed using Yosys. The design consistency check reported zero problems.

## Static Timing Analysis
Timing reports were generated for the configured timing constraints.

The final implementation report recorded:
- Clock period: 10 ns
- Clock uncertainty: 0.2 ns
- Input and output delays: 1 ns
- Setup violation count: 0
- Hold violation count: 0
- Reported worst slack: approximately 4.27 ns

These results reflect the configured flow and its reported checks; they do not represent foundry signoff.

## Physical Design Results
Physical implementation was completed using the OpenROAD flow with the SKY130 platform.

- Reported design area: approximately 13,876 µm²
- Reported utilization: approximately 44%
- Final GDSII: `reports/physical_design/6_final.gds`
- Final physical-design database: `reports/physical_design/6_final.odb`

Additional outputs include final DEF, SPEF, and Verilog files, along with implementation reports.

## Project Evidence
Screenshots documenting the implementation stages are available in:

`evidence/screenshots/`

The collection includes RTL design, simulation waveform, synthesis, floorplan and placement, routing, timing results, and final GDSII layout.

## Project Presentation
Watch the project introduction and presentation:

[**EnergyGuard-SoC Project Video**](https://drive.google.com/file/d/18RIpQu4kdzLNuBIAoDUALThdDUVTbSpK/view?usp=sharing)

Make sure the Google Drive link is accessible to reviewers.

## Conclusion
EnergyGuard-SoC demonstrates a modular Verilog-based digital design carried through functional verification, synthesis, timing analysis, physical implementation, and GDSII generation using open-source EDA tools.
