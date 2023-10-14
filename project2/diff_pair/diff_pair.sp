* NGSPICE file created from diff_pair.ext - technology: sky130A

.subckt diff_pair VTAU VGND VDD VIN1 VIN2
X0 a_220_100# VTAU VGND VGND sky130_fd_pr__nfet_01v8 ad=0.24 pd=1.4 as=0.32 ps=2.4 w=0.8 l=0.4
X1 VDD VIN1 a_220_100# VGND sky130_fd_pr__nfet_01v8 ad=0.32 pd=2.4 as=0.4 ps=2.6 w=0.8 l=0.4
X2 VDD VIN2 a_220_100# VGND sky130_fd_pr__nfet_01v8 ad=0.32 pd=2.4 as=0.24 ps=1.4 w=0.8 l=0.4
.ends

