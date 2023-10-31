* Folded Cascode Differential Amplifier
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Diff Pair Bias Trans
X1 nint pbias vdd vdd sky130_fd_pr__pfet_01v8 w=3.6 l=0.4
* Diff In +
X2 n14 vin1 nint vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Diff in -
X3 n23 vin2 nint vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Bias Trans 1
X4 n14 nbias gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* Bias Trans 2
X5 n23 nbias gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* B1 nFET1
X6 n810 ncasc n14 gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* B1 pFET1
X7 n68 pcasc n810 vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* B1 pFET2
X8 vdd n810 n68 vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* B2 nFET1
X9 vout ncasc n23 gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
* B2 pFET1
X10 n57 pcasc vout vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* B2 pFET2
X11 vdd n810 n57 vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Discrete
R1 resist gnd 100k
C1 vout gnd 0.3p
* Sources
V1 vin1 gnd 0.3 ac=1
V2 vin2 gnd 0.7
V3 ncasc gnd 1.7
V4 pcasc gnd 0.26
V5 vdd gnd 1.8


* Sim
.dc v1 0 1.8 0.05
*.ac dec 100 1 1e9