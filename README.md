# verilog-calculator
A simple 8-bit Verilog calculator supporting addition, subtraction, multiplication, and division with error handling for divide-by-zero.

# 🧮 Verilog-Based Calculator

This is a simple 8-bit calculator designed in Verilog HDL. It performs basic arithmetic operations — **Addition, Subtraction, Multiplication, and Division** — using a 2-bit opcode. The result is a 16-bit output, and a flag is raised for divide-by-zero conditions.

## ✨ Features

- Supports 8-bit input operands (A, B)
- Performs:
  - `00` → Addition
  - `01` → Subtraction
  - `10` → Multiplication
  - `11` → Division (with error handling)
- Output: 16-bit result and `error_flag` signal
- Synthesis- and simulation-ready
- Written entirely in Verilog
- Tested using Vivado's built-in simulator (XSIM)

## 📁 Folder Structure

calculator_project/
├── basic_calculator.v         # Main Verilog module
├── basic_calculator_tb.v      # Testbench for the calculator
├── images/
│   ├── schematics/            # RTL or gate-level schematic images from Vivado
│   └── simulation/            # Waveform images or simulation output screenshots
└── README.md                  # Project documentation


## 🛠️ Features

- 8-bit arithmetic operations
- Addition, subtraction, multiplication, and division
- Error handling for divide-by-zero
- Testbench included for validation

## ▶️ How to Run

1. Open the `basic calculator.v` file in a Verilog simulation tool (like Vivado, ModelSim, or Icarus Verilog).
2. Run `basic calculator_tb.v` as the top module.
3. View the simulation waveform or output.
4. Check the schematic from synthesis for structural insight.

## 📸 Simulation & Schematics

### Simulation Output  
![Simulation](https://github.com/user-attachments/assets/eed6866e-1ae2-4c8c-ba8a-1931a18bb670)

### RTL Schematic  
![Schematic](https://github.com/user-attachments/assets/d7439ea7-9292-4ba7-8e2a-de3de335f054)
---

## 📝 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👩‍💻 Author
Isha Rani

