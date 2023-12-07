* Comparator simulation
.include C:\Users\ber20\hilas_shared\4430_Projects\project4\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Comparator
X1 vinp vref vout vdd gnd nbias comparator
* Psuedo Resistors
* X12 vdd vdd vinn gnd sky130_fd_pr__nfet_01v8 w=3.0 l=0.4
* X13 vinn vdd gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
X12 vdd vdd nr1 nr1 sky130_fd_pr__nfet_01v8 w=0.8 l=1.1
X13 vref vdd nr1 nr1 sky130_fd_pr__pfet_01v8 w=0.8 l=1.1
X14 vref vdd nr2 nr2 sky130_fd_pr__nfet_01v8 w=0.8 l=0.5
X15 gnd vdd nr2 nr2 sky130_fd_pr__pfet_01v8 w=0.8 l=0.5

* Simulation Components
V1 vinp gnd PULSE(0.5 1 0 1e-15 1e-15 5e-9 10e-9)
V3 vdd gnd 1.8
R1 resist gnd 100k
C1 no3 gnd 1e-12

* Sim Parameters
.tran 1e-12 5e-8
*.ac dec 100 1 1e9