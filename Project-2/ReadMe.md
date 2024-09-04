# Project-2
In this project i developed a VHDL component that will determine the mean value of the signal (in the range of 0 - 100%) for a procession of rectangular pulses of variable occupancy and period. The calculated value is updated at the end of each period when the input transitions from HIGH to LOW. The component interface is defined as follows:
* *insig* input signal that represents a procession of rectangular pulses of variable period and filling type std_logic,
* *avrval* 8-bit unsigned output (in the range of 0-100),
* *fclk* input of std_logic type representing the FPGA clock.

The developed VHDL component is tested based on the signal defined in the testbench.
