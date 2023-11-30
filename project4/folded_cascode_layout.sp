* Folded Cascode Differential Amplifier
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
X1 vin1 vout pbias vdd gnd nbias vout fc

* Psuedo resistor divider
X2 vdd gnd vref gnd sky130_fd_pr__nfet_01v8 w=14 l=0.4
X3 vref gnd gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=14


* Discrete
R1 resist gnd 5k
C1 vout gnd 0.4p
* Sources
* V1 vin1 gnd 1.8
* VP for step response (choose 1)
V1 vin1 gnd PULSE(0 1.5 0 1n 1n 0.1e-6 0.2e-6)
V2 vin2 gnd 1.8
V3 vdd gnd 1.8

* Sim
*.dc v1 -0.3 1.8 0.05
*.ac dec 100 1 1e9
.tran 1u 1e-6
*.noise V(vout) V1 dec 100 1 100meg