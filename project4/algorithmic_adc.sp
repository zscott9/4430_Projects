* Algorithmic ADC
.include C:\Users\ber20\hilas_shared\4430_Projects\project4\models.sp

* SnH
X0 snh_in clk_sample clk_samplen V+2 V-2 vdd gnd snh
* Bootstrap
X1 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
R1 resist gnd 100k
* Comparator
X2 comp_in vref vout vdd gnd nbias comparator
* Inverter - For 1-bit dac complement input
X3 vout_inv vout vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X4 vout_inv vout gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
* 1 bit DAC
X5 vref vout vout_inv dacout vdd gnd ibitdac
* G2A
X6 vx residual vdd gnd giia
M12 comp_in clk_reset vx gnd test l=400n w=800n
M13 vx clk_resetn comp_in +1V8 test1 l=400n w=800n
C1 comp_in vx 200f
C2 vx dacout 200f
C3 vx residual 100f
M1 vx clk_reset residual gnd test l=400n w=800n
M2 residual clk_resetn vx +1V8 test1 l=400n w=800n

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
V1 clk_sample gnd PULSE(0 3 10u 0.1n 0.1n 10u 90u)
V2 clk_samplen gnd PULSE(3 0 10u 0.1n 0.1n 10u 90u)
V3 clk_reset gnd PULSE(0 3 0 0.1n 0.1n 10u 30u)
V4 clk_resetn gnd PULSE(3 0 0 0.1n 0.1n 10u 30u)
V5 clk_amp gnd PULSE(0 3 10u 0.1n 0.1n 10u 30u)
V6 clk_ampn gnd PULSE(3 0 10u 0.1n 0.1n 10u 30u)
V7 clk_load gnd PULSE(0 3 20u 0.1n 0.1n 10u 30u)
V8 clk_loadn gnd PULSE(3 0 20u 0.1n 0.1n 10u 30u)

* Additional Sources
V9 vdd gnd 1.8
V10 V+1 gnd SINE(0.8 0.2 5000 1u)

* Additional Models
.model test NMOS  (level=12, kp=0.00030207, Vto=0.56 Gamma=0.55708, Phi=0.5, Is=4.27e-24)
.model test1 PMOS(KP=0.00007986, Vto=-0.9, Gamma=0.656924, Phi=0.5, Is=9.5876e-24, level=12 )

* Sim commands
.tran 1e-7 200u