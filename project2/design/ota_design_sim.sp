* OTA Simulation
.include C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp
* OTA Subcircuit
X1 VPWR VIN1 VIN2 gnd VOUT PBIAS NBIAS ota_design
X2 RESIST VPWR gnd PBIAS NBIAS sky130_hilas_Bootstrap01
* SOURCES
v1 VPWR gnd 1.8
*v2 vin1 vcon 0.5
v2 vin1 vcon PULSE(0 5 0 0 0 0.5 1)
v3 vcon gnd ac=1
v4 vin2 gnd 0.5
* DISCRETE
r1 resist gnd 10
c1 vout gnd 1.35p
* SIM
.dc v2 0 1.8 0.05
*.tran 0.1 10
*.ac dec 100 1 1e9
