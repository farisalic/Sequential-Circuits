# Project-3
In this project I developed a VHDL component that implements pixel color conversion from RGB888 (24 bit) to RGB565 (16 bit) format. The component interface is defined as follows:
* *rgbin* 24-bit input type std logic vector,
* *rgbout* 16-bit output of std logic vector type,
* *fclk* input of std_logic type representing the FPGA clock.

The conversion process is performed whenever the input value changes. The developed VHDL component was tested with the following inputs: 0x202306, 0xADBEEF and 0x123456.
