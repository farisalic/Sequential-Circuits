# Project-4
The optical encoder uses the position change encoding mechanism described in the picture below. In this project I developed a VHDL component that will monitor the state of inputs A and B and then determine the direction based on the input analysis. The interface of the model is defined as follows:
* *ina* input A type std logic,
* *inb* input B type std logic,
* *cwout* 1-bit std-logic output that is high if CW direction is detected,
* *ccwout* 1-bit std-logic output that is high if CCW direction is detected,
* *fclk* input of std_logic type representing the FPGA clock.

For the developed VHDL model, I wrote a testbench program that will determine the output of the system if the optical encoder is moved 5 steps CW, 3 steps CCW and 2 steps CW.

<div align="center">
<img src="https://github.com/user-attachments/assets/5a2962f7-036a-4654-9531-a6137e00fd61">
</div>
