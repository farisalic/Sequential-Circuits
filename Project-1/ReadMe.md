# Project-1
In this project I developed a VHDL model of a system that implements a single-bit quantizer operation on an 8-bit input using hard logic. The output of the quantizer is in state **1** if the input value (adcval) is greater than or equal to the threshold (thresh). The interface of the model is as follows:
* adcval 8-bit unsigned input,
* thresh 8-bit unsigned input,
* result 1-bit output of std-logic type,
* qi flag which initiates the beginning of the quantization process,
* qc flag indicating the end of the quantization process,
* fclk input of std_logic type representing the FPGA clock.

For the developed VHDL model, I wrote a testbench program that will determine the output of the system for the following input and threshold pairs (0xA5, 0x21), (0x7F, 0x7F), (0x3A, 0x5A). In *GTKwave* window we will display all interface signals, but from the point of view of the testbench.
