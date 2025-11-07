# RTL-to-GDSII 16×24 Bit Multiplier

## Overview

This project demonstrates a complete ASIC design flow by implementing a **16×24-bit unsigned multiplier** from RTL (Register Transfer Level) to GDSII (Graphic Database System II). The primary focus is on the back-end design process, including logic synthesis, place and route (PnR), physical verification, and functional verification.

The design is implemented using **GPDK45nm** (Generic Process Design Kit for 45nm technology) standard cell library and follows industry-standard design methodologies.

## Features

- **16×24-bit unsigned multiplier** with pipelined architecture
- **5-stage pipeline with 4 cycles total latency**: 
  - Stage 1: Input operand registration (rA, rB)
  - Stage 2: Multiplication (M[0] = rA * rB)
  - Stages 3-5: Output pipeline registers (M[1], M[2], M[3])
- Fully synthesizable Verilog RTL design
- Comprehensive testbench with multiple test cases
- Complete synthesis flow using Cadence Genus
- Place and Route implementation using Cadence Innovus
- Physical verification (DRC, connectivity checks)
- Timing-driven implementation targeting 150 MHz

## Directory Structure

```
RTL-to-GDSII_16x24BitMultiplier/
├── Doc/                        # Project documentation and design reports
│   ├── Asic Design Flow v2.pdf
│   └── Project3.pdf
├── RTL/                        # RTL source files
│   ├── src/
│   │   └── mult_unsigned.v    # 16x24 multiplier RTL design
│   └── tb/
│       └── mult_unsigned_tb.v # Testbench for functional verification
├── Simulation/                 # Simulation environment
│   ├── Makefile               # Makefile for Xcelium simulation
│   ├── filelist.f             # File list for compilation
│   ├── cds.lib                # Cadence library configuration
│   ├── scripts/
│   │   └── run.tcl            # Simulation run script
│   └── results/               # Simulation results and waveforms
├── Synthesis/                  # Logic synthesis files
│   ├── scripts/
│   │   └── genus_script.tcl   # Genus synthesis script
│   ├── netlist/               # Generated gate-level netlist
│   ├── reports/               # Synthesis reports (area, timing, power)
│   └── fv/                    # Formal verification setup
└── PnR/                        # Place and Route files
    ├── scripts/               # Innovus PnR scripts
    ├── gds/                   # Final GDSII layout
    ├── timingReports/         # Post-layout timing reports
    └── *.rpt                  # DRC and connectivity reports
```

## Prerequisites

### Required Tools

- **Cadence Xcelium** - For RTL simulation and verification
- **Cadence Genus** - For logic synthesis
- **Cadence Innovus** - For place and route
- **GPDK45nm** - Generic 45nm PDK (Process Design Kit)

### Standard Cell Library

The design uses the GPDK45nm standard cell library:
- Library: `slow_vdd1v0_basicCells.lib`
- Technology: 45nm CMOS process
- Supply voltage: 1.0V

## Design Specifications

### Module Parameters

- **WIDTHA**: 16 bits (first operand)
- **WIDTHB**: 24 bits (second operand)
- **Output Width**: 40 bits (WIDTHA + WIDTHB)
- **Clock Frequency**: 150 MHz (target)
- **Pipeline Stages**: 5 stages (rA/rB, M[0], M[1], M[2], M[3])
- **Total Latency**: 4 clock cycles

### Timing Constraints

- **Clock Period**: ~6.67 ns (150 MHz)
- **Input Setup Time**: 10 ps
- **Output Delay**: 30 ps

## Getting Started

### 1. Setup Environment

Ensure the Cadence tools are properly sourced and the GPDK45 library path is correctly set:

```bash
# Update the library path in Synthesis/scripts/genus_script.tcl
set GPDK45_DIR /path/to/your/GPDK045/gsclib045_all_v4.4/gsclib045
```

### 2. RTL Simulation

To run functional simulation using Cadence Xcelium:

```bash
cd Simulation/
make all              # Compile, elaborate, and simulate
make VIEW_WAVEFORMS=yes all  # Run with waveform viewer
```

The simulation runs multiple test cases:
- Zero inputs
- Small values (A=10, B=5)
- Larger values (A=255, B=127)
- Maximum values
- Edge cases (one operand zero)
- Power of two values

### 3. Logic Synthesis

To synthesize the design using Cadence Genus:

```bash
cd Synthesis/
genus -f scripts/genus_script.tcl
```

Synthesis outputs:
- Gate-level netlist: `netlist/genus_mult_unsigned.v`
- Area report: `reports/genus_mult_unsigned_area.rep`
- Timing report: `reports/genus_mult_unsigned_timing.rep`
- Power report: `reports/genus_mult_unsigned_power.rep`

### 4. Place and Route

To perform physical implementation using Cadence Innovus:

```bash
cd PnR/
# Run Innovus with your PnR scripts
innovus -files scripts/<your_pnr_script>
```

PnR outputs:
- Final GDSII: `gds/`
- DRC report: `mult_unsigned.drc.rpt`
- Connectivity report: `mult_unsigned.conn.rpt`
- Timing reports: `timingReports/`

## Design Details

### Architecture

The multiplier implements a **5-stage pipelined architecture** to achieve high throughput:

1. **Stage 1** (Cycle 1): Input operands A and B are registered into rA and rB
2. **Stage 2** (Cycle 2): Multiplication is performed (M[0] = rA * rB)
3. **Stages 3-5** (Cycles 3-5): Results propagate through output pipeline (M[1] -> M[2] -> M[3])

**Total Latency**: 4 clock cycles from input to output

This pipelining approach allows for:
- One multiplication result every clock cycle (after initial latency)
- Reduced critical path for higher clock frequencies
- Better timing closure during synthesis and PnR

### RTL Code Structure

```verilog
module mult_unsigned (clk, A, B, RES);
  parameter WIDTHA = 16;
  parameter WIDTHB = 24;
  
  input clk;
  input [WIDTHA-1:0] A;
  input [WIDTHB-1:0] B;
  output [WIDTHA+WIDTHB-1:0] RES;
  
  // Pipeline registers
  reg [WIDTHA-1:0] rA;
  reg [WIDTHB-1:0] rB;
  reg [WIDTHA+WIDTHB-1:0] M [3:0];
  integer i;
  
  // Pipeline implementation
  always @(posedge clk) begin
    rA <= A;
    rB <= B;
    M[0] <= rA * rB;
    for (i = 0; i < 3; i = i+1)
      M[i+1] <= M[i];
  end
  
  assign RES = M[3];
endmodule
```

## Verification

### Functional Verification

The testbench (`mult_unsigned_tb.v`) verifies:
- Correct multiplication results across various input combinations
- Pipeline behavior (proper latency)
- Edge cases and boundary conditions
- Maximum value handling

### Formal Verification

Formal verification setup is available in `Synthesis/fv/` to ensure equivalence between RTL and gate-level netlist.

## Results

The design successfully meets timing at **150 MHz** using GPDK45nm technology:
- All setup and hold timing constraints are met
- DRC (Design Rule Check) clean
- LVS (Layout vs Schematic) clean
- Functional verification passes all test cases

Detailed reports are available in:
- `Synthesis/reports/` - Synthesis QoR reports
- `PnR/timingReports/` - Post-layout timing analysis

## Technology and Tools

| Component | Tool/Technology |
|-----------|-----------------|
| RTL Simulation | Cadence Xcelium |
| Logic Synthesis | Cadence Genus |
| Place & Route | Cadence Innovus |
| Technology Node | 45nm CMOS (GPDK45) |
| Standard Cells | GPDK45 `gsclib045` |

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**Salwan Aldhahab**

Copyright (c) 2025

## Acknowledgments

- GPDK45nm standard cell library from Cadence
- ASIC design flow methodologies and best practices

## Contributing

This is an educational project demonstrating ASIC design flow. Feel free to fork and modify for learning purposes.

---

*For detailed design documentation, please refer to the PDFs in the `Doc/` directory.*
