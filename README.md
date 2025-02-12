# FPGA-Based Multi-Base Number Conversion System Using Verilog HDL 🚀

This repository contains the implementation of an **FPGA-based number conversion system** that converts **8-bit binary numbers** into multiple formats, including **Decimal**, **Octal**, **Hexadecimal**, **Binary-Coded Decimal (BCD)**, and **Gray Code**. The converted results are displayed in real-time on a **seven-segment display**, offering an interactive and efficient solution for number system conversions.

---

## 🌟 Key Features

1. **Multi-Base Conversion**:
   - Converts **8-bit binary** numbers into:
     - **Decimal**
     - **Octal**
     - **Hexadecimal**
     - **BCD** (Binary-Coded Decimal)
     - **Gray Code**

2. **Selection-Based Operation**:
   - Select the desired conversion format using input selection lines:
     - `3'b00`: Binary to Decimal
     - `3'b001`: Binary to Octal
     - `3'b010`: Binary to Hexadecimal
     - `3'b011`: Binary to BCD
     - `3'b100`: Binary to Gray Code

3. **Seven-Segment Display Integration**:
   - Real-time visualization of results using:
     - **3 seven-segment displays** for Decimal and Octal
     - **2 seven-segment displays** for Hexadecimal

4. **Modular Design**:
   - **Block 1**: Accepts the **8-bit binary input** and performs the selected conversion.
   - **Block 2**: Converts the output of Block 1 into signals for seven-segment displays.
   - **Block 3**: Drives the seven-segment displays to present results clearly for each conversion format.

5. **FPGA Implementation**:
   - Designed and synthesized using **Quartus II** and simulated using **ModelSim** for efficient and reliable hardware realization.

---

## 🔑 Technical Highlights

- **Verilog HDL**: Designed using modular and reusable Verilog code for precise number conversions.
- **Efficient Display Mapping**: Seamlessly integrates digital logic with seven-segment displays for accurate results.
- **Scalable Design**: Adaptable to support additional number systems or higher bit-widths.
- **Real-Time Processing**: Provides immediate conversion and output display, making it practical for dynamic applications.

---

## 🛠 How It Works

- **Block 1**: Takes an **8-bit binary input** and processes it to convert into the selected base.
- **Block 2**: Decodes the conversion results into signals for the seven-segment display.
- **Block 3**: Drives the **seven-segment displays** to showcase the output for the desired base format.

---

## 🎛 System Workflow

1. Input an **8-bit binary number** to Block 1.
2. Use selection lines to choose the desired conversion:
   - Binary to Decimal, Octal, Hexadecimal, BCD, or Gray Code.
3. The selected conversion result is processed and displayed on the **seven-segment displays** in real time.

---

## 🚀 How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/FPGA-Based-Multi-Base-Number-Conversion.git
   cd FPGA-Based-Multi-Base-Number-Conversion
