*stuff
.include C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp
*X1 vdd vin gnd gnd sky130_fd_pr__nfet_01v8
X2 gnd vin vdd vdd sky130_fd_pr__pfet_01v8
v1 vdd gnd 1.8
v2 vin gnd 0.3
.dc v2 0 1.8 0.01
