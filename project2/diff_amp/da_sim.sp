* Diff Amp Simulation
.include C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp
* Bootstrap
X0 RESIST vdd gnd PBIAS VTAU sky130_hilas_Bootstrap01
* Diff amp start
X0 VDD v34 VOUT VDD sky130_fd_pr__pfet_01v8 ad=0.63 pd=4.8 as=0.945 ps=5.1 w=2.1 l=0.3
X1 VDD v34 v34 VDD sky130_fd_pr__pfet_01v8 ad=0.72 pd=3.4 as=0.36 ps=2.6 w=0.9 l=0.5
X2 vint VTAU gnd gnd sky130_fd_pr__nfet_01v8 ad=0.24 pd=1.4 as=0.32 ps=2.4 w=0.8 l=0.4
X3 v78 v56 VDD VDD sky130_fd_pr__pfet_01v8 ad=0.63 pd=3.2 as=0.225 ps=1.4 w=0.9 l=0.5
X4 VOUT v78 gnd gnd sky130_fd_pr__nfet_01v8 ad=1.49 pd=8.4 as=1.49 ps=8.4 w=3.8 l=0.6
X5 v78 v78 gnd gnd sky130_fd_pr__nfet_01v8 ad=0.24 pd=2 as=0.24 ps=2 w=0.6 l=0.4
X6 v34 VIN1 vint gnd sky130_fd_pr__nfet_01v8 ad=0.32 pd=2.4 as=0.4 ps=2.6 w=0.8 l=0.4
X7 VDD v56 v56 VDD sky130_fd_pr__pfet_01v8 ad=0.225 pd=1.4 as=0.45 ps=2.8 w=0.9 l=0.5
X8 v56 VIN2 vint gnd sky130_fd_pr__nfet_01v8 ad=0.305 pd=2.4 as=0.24 ps=1.4 w=0.8 l=0.4
* Diff amp end
* Discrete components
r1 resist gnd 260k
c1 vout gnd 250f
* Sources
v1 vdd gnd 1.8
*v2 vin1 gnd PULSE(0 1 0 0 0 0.5 1)
v2 vin1 vcon 0.3
v3 vcon gnd ac=1
v4 vin2 gnd 0.3
i1 vout gnd 1
* SIMS
.dc i1 0 50n 1e-11
*.ac dec 100 1 1e9
*.tran 0.1e-3 15 10
