* Latched Comparator
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Bias Current Transistors
X1 ncmt nbias gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
* Diode Connected Transistor for Bias Current Mirror
X2 ncmt ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Bias Current Transistor for Diff Pair
X3 nint ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Diff Pair Non-Inverting Input
X4 no1p vinp nint vdd sky130_fd_pr__pfet_01v8 w=6 l=0.4
* Diff Pair Inverting Input
X5 no1n vinn nint vdd sky130_fd_pr__pfet_01v8 w=6 l=0.4
