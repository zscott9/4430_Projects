* Folded Cascode Differential Amplifier
.include C:\Users\ber20\hilas_shared\4430_Projects\project3\models.sp
* Bootstrap
X0 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
X1 vin1 vin2 pbias vdd gnd nbias vout fc
* Discrete
R1 resist gnd 10
C1 vout gnd 0.3p
* Sources
V1 vin1 gnd 1 ac=1
* VP for step response (choose 1)
*V1 vin1 gnd PULSE(0 1 0 1u 1u 0.1m 0.2m)
V2 vin2 gnd 1
V3 vdd gnd 1.8

* Sim
*.dc v1 0 1.8 0.05
.ac dec 100 1 1e9
*.tran 1u 1m
*.noise V(vout) V1 dec 100 1 100meg