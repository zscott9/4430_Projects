* G2A
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Folded Cascode
X1 vin1 vin2 pbias vdd gnd nbias vout fc
* Inverter - Buffer
X10 vout2 vout vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X11 vout2 vout gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4

* Simulation Components
V1 vin1 gnd PULSE(0.5 1 0 1e-15 1e-15 5e-6 10e-6)
V3 vdd gnd 1.8
R1 resist gnd 100k
C1 vout2 gnd 1e-15

* Sim Parameters
.tran 1e-12 5e-5
*.ac dec 100 1 1e9