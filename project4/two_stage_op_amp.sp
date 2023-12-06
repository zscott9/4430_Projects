* Comparator simulation
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Bias Current Transistor
X1 ncmt nbias gnd gnd sky130_fd_pr__nfet_01v8 w=4.8 l=0.4
* Diode Connected Transistor for Bias Current Mirror
X2 ncmt ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=0.4 l=0.4
* Bias Current Transistor for Diff Pair
X3 nint ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Diff Pair Non-Inverting Input
X4 ncmb vinp nint vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Diff Pair Inverting Input
X5 no1 vref nint vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Bottom Current Mirror Diode Connected
X6 ncmb ncmb gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* Bottom Current Mirror Not Diode Connected
X7 no1 ncmb gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* First CS Amplification Stage Transistor
X8 no2 no1 gnd gnd sky130_fd_pr__nfet_01v8 w=1.8 l=0.4
* First Amp Bias Transistor
X9 no2 ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Inverter - Buffer
X10 no3 no2 vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X11 no3 no2 gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4

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