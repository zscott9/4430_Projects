* Comparator simulation
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Bias Current Transistor
X1 ncmt nbias gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* Diode Connected Transistor for Bias Current Mirror
X2 ncmt ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Bias Current Transistor for Diff Pair
X3 nint ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Diff Pair Non-Inverting Input
X4 ncmb vinp nint vdd sky130_fd_pr__pfet_01v8 w=1.2 l=0.4
* Diff Pair Inverting Input
X5 no1 vinn nint vdd sky130_fd_pr__pfet_01v8 w=1.2 l=0.4
* Bottom Current Mirror Diode Connected
X6 ncmb ncmb gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* Bottom Current Mirror Not Diode Connected
X7 no1 ncmb gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* First CS Amplification Stage Transistor
X8 no2 no1 gnd gnd sky130_fd_pr__nfet_01v8 w=0.4 l=1.2
* First Amp Bias Transistor
X9 no2 ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4

* Simulation Components
V1 vinp gnd PULSE(0.5 1 0 1e-9 1e-9 0.5e-6 1e-6)
V2 vinn gnd 0.75
V3 vdd gnd 1.8
R1 resist gnd 10k
C1 no2 gnd 1e-15

* Sim Parameters
.tran 1e-6 5e-6