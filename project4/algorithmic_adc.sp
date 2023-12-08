* Algorithmic ADC
.include C:\Users\ber20\hilas_shared\4430_Projects\project4\models.sp

* SnH
X0 V+1 Clock1 Clock2 V+2 vdd gnd snh
* Bootstrap
X1 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
R1 resist gnd 100k
* Comparator
X2 V+2 vref vout vdd gnd nbias comparator
* Inverter - For 1-bit dac complement input
X3 vout_inv vout vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X4 vout_inv vout gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
* 1 bit DAC
X5 vref vout vout_inv dacout vdd gnd ibitdac
* G2A
X6 V+2 dacout Clock1 Clock2 residual vdd gnd vx giia

* Voltage divider
X7 vdd vdd vref vref sky130_fd_pr__nfet_01v8 w=0.8 l=0.5
X8 vref vdd gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=1.8

* Sources
V1 Clock1 gnd PULSE(0 3 0 0.1n 0.1n 10u 20u)
V2 Clock2 gnd PULSE(3 0 0 0.1n 0.1n 10u 20u)
V3 vdd gnd 1.8
V4 V+1 gnd SINE(0.3 1 5000 0)

* Sim commands
.tran 1e-8 100u