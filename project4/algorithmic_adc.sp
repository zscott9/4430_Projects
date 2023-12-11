* Algorithmic ADC
.include C:\Users\ba-pe\Documents\4430_Projects\project4\models.sp

* SnH
X0 snh_in clk_sample clk_samplen V+2 V-2 vdd gnd snh
* Bootstrap
X1 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
R1 resist gnd 100k
* Comparator
X2 comp_in vref comp_out vdd gnd nbias comparator
* Inverter - For 1-bit dac complement input
X3 comp_out_inv comp_out vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X4 comp_out_inv comp_out gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
* 1 bit DAC
X5 vref comp_out comp_out_inv dacout vdd gnd ibitdac
* Summation
C1 comp_in vx 100p
M1 comp_in clk_resetn vx vdd test1 
C2 dacout vx 100p
* G2A
X6 vdd vx vo vdd gnd ota_pbias ota_nbias ota_design
C3 vx vo 300p
M2 vx clk_resetn vo vdd test1
V11 ota_pbias gnd 993m
V12 ota_nbias gnd 689m

* Voltage divider
X7 vdd vdd vref vref sky130_fd_pr__nfet_01v8 w=0.8 l=0.5
X8 vref vdd gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=1.8
* Sample switch
X9 V+1 clk_sample snh_in gnd sky130_fd_pr__nfet_01v8
X10 V+1 clk_samplen snh_in vdd sky130_fd_pr__pfet_01v8
* Amplify Switch
X11 V-2 clk_amp comp_in gnd sky130_fd_pr__nfet_01v8
X12 V-2 clk_ampn comp_in vdd sky130_fd_pr__pfet_01v8

* Clocks
V1 clk_sample gnd PULSE(0 3 0 0.1n 0.1n 5u 90u)
V2 clk_samplen gnd PULSE(3 0 0 0.1n 0.1n 5u 90u)
V3 clk_reset gnd PULSE(0 3 20u 0.1n 0.1n 5u 30u)
V4 clk_resetn gnd PULSE(3 0 20u 0.1n 0.1n 5u 30u)
V5 clk_amp gnd PULSE(0 3 0 0.1n 0.1n 6u 30u)
V6 clk_ampn gnd PULSE(3 0 0 0.1n 0.1n 6u 30u)
V7 clk_load gnd PULSE(0 3 10u 0.1n 0.1n 5u 30u)
V8 clk_loadn gnd PULSE(3 0 10u 0.1n 0.1n 5u 30u)

* Additional Sources
V9 vdd gnd 1.8
V10 V+1 gnd SINE(0.8 0.6 5000 1u)

* Additional Models
.model test NMOS  (level=12, kp=0.00030207, Vto=0.56 Gamma=0.55708, Phi=0.5, Is=4.27e-24)
.model test1 PMOS(KP=0.00007986, Vto=-0.9, Gamma=0.656924, Phi=0.5, Is=9.5876e-24, level=12 )

* Sim commands
.tran 1e-7 200u