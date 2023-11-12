* NGSPICE file created from mos_cap.ext - technology: sky130A
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
*.subckt mos_cap cap_in GND
X0 cap_in a_n20_0# cap_in gnd sky130_fd_pr__nfet_01v8 ad=0.45 pd=2.8 as=0.45 ps=2.8 w=0.9 l=0.9
*.ends
R1 vin cap_in 1
V1 vin gnd 1.8 ac=1
.ac dec 100 1 1e15
