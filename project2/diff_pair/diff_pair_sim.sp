*Diff Pair Simulation File
.include C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp
* Bootstrap
X0 RESIST vdd gnd PBIAS nbias sky130_hilas_Bootstrap01
* Diff pair
* Bias Transistor
X1 int_v nbias gnd gnd sky130_fd_pr__nfet_01v8 ad=0.24 pd=1.4 as=0.32 ps=2.4 w=0.8 l=0.4
* Input 1
X2 VDD VIN1 int_v gnd sky130_fd_pr__nfet_01v8 ad=0.32 pd=2.4 as=0.4 ps=2.6 w=0.8 l=0.4
* Input 2
X3 VDD VIN1 int_v gnd sky130_fd_pr__nfet_01v8 ad=0.32 pd=2.4 as=0.24 ps=1.4 w=0.8 l=0.4
r1 resist gnd 260k
v1 vdd gnd 1.8
v2 vin1 gnd 0.9

.dc v2 0 1.8 0.05
