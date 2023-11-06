* Folded Cascode Differential Amplifier
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Diff Pair Bias Trans
X1 nint pbias vdd vdd sky130_fd_pr__pfet_01v8 w=6.0 l=0.4
* Diff In +
X2 n14 vin1 nint vdd sky130_fd_pr__pfet_01v8 w=3.0 l=2.0
* Diff in -
X3 n23 vin2 nint vdd sky130_fd_pr__pfet_01v8 w=3.0 l=2.0
* Bias Trans 1
X4 n14 nbias gnd gnd sky130_fd_pr__nfet_01v8 w=6 l=2.0
* Bias Trans 2
X5 n23 nbias gnd gnd sky130_fd_pr__nfet_01v8 w=6 l=2.0
* B1 nFET1
X6 n810 ncasc n14 gnd sky130_fd_pr__nfet_01v8 w=3.0 l=2.0
* B1 pFET1
X7 n810 pcasc n68 vdd sky130_fd_pr__pfet_01v8 w=3.0 l=2.0
* B1 pFET2
X8 n68 n810 vdd vdd sky130_fd_pr__pfet_01v8 w=3.0 l=2.0
* B2 nFET1
X9 n79 ncasc n23 gnd sky130_fd_pr__nfet_01v8 w=3.0 l=2.0
* B2 pFET1
X10 n79 pcasc n57 vdd sky130_fd_pr__pfet_01v8 w=3.0 l=2.0
* B2 pFET2
X11 n57 n810 vdd vdd sky130_fd_pr__pfet_01v8 w=3.0 l=2.0
* Circuit to Set P-Cascode Gate Voltages
X12 psc psc vdd vdd sky130_fd_pr__pfet_01v8 w=3 l=2
X13 pcasc pcasc psc vdd sky130_fd_pr__pfet_01v8 w=3 l=2
X14 pcasc nbias gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* Circuit to Set N-Cascode Gate Voltages
X15 ncasc ncasc nsc gnd sky130_fd_pr__nfet_01v8 w=3 l=2
X16 nsc nsc gnd gnd sky130_fd_pr__nfet_01v8 w=3 l=2
X17 ncasc pbias vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Discrete
R1 resist gnd 10
C1 n79 gnd 0.3p
* Sources
V1 vin1 gnd 0 ac=1
V2 vin2 gnd 0
V3 vdd gnd 1.8

* Sim
*.dc v1 0 1.8 0.05
.ac dec 100 1 1e9
*.noise V(n79) V1 dec 100 1 100meg