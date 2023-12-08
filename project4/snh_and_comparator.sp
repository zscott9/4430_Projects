* C:\Users\ber20\hilas_shared\4430_Projects\project4\sample_and_hold2.asc
.include C:\Users\ber20\hilas_shared\4430_Projects\project4\models.sp

* SnH
X4 V+1 Clock1 Clock2 V+2 vdd gnd snh
* Comparator
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
R1 resist gnd 100k
X1 V+2 vref vout vdd gnd nbias comparator

* Voltage divider
X2 vdd vdd vref vref sky130_fd_pr__nfet_01v8 w=0.8 l=0.5
X3 vref vdd gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=1.8

* Sources
V5 Clock1 0 PULSE(0 3 0 0.1n 0.1n 100n 200n)
V6 Clock2 0 PULSE(3 0 0 0.1n 0.1n 100n 200n)
V10 vdd 0 1.8
V7 V+1 0 SINE(0.3 0.4 5000 0)

* Sim commands
.tran 1e-6 100u
