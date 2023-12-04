* Folded Cascode Differential Amplifier
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
X1 vin1 vin2 pbias vdd gnd nbias vout fc

* Psuedo resistor divider
*X2 vdd gnd vref gnd sky130_fd_pr__nfet_01v8 w=14 l=0.4
*X3 vref gnd gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=14


* Simulation Components
V1 vin1 gnd PULSE(0.3 1 0 1e-15 1e-15 50e-9 100e-9)
V2 vin2 gnd 0.6
V3 vdd gnd 1.8
R1 resist gnd 100k
C1 vout gnd 1e-15

* Sim
*.dc v1 -0.3 1.8 0.05
*.ac dec 100 1 1e9
.tran 1e-12 5e-7
*.noise V(vout) V1 dec 100 1 100meg