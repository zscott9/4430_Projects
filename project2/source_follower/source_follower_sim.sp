* Source Follower Layout Sim
.include sf.spice
.include "C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp"
X1 vdd gnd nbias vout vin source_follower
X2 RESIST vdd gnd PBIAS nbias sky130_hilas_Bootstrap01
v1 vdd gnd 1.8
*v2 vin vcon PULSE(0 3 0 0 0 0.5e-6 1e-6)
v2 vin vcon 1
v3 vcon gnd ac=1
r1 resist gnd 260k
c1 vout gnd 100f
*SIMS
*.dc v2 0 3.3 0.05
.ac dec 100 1 1e9
*.tran 0.1e-6 10e-6
*.noise v(vout) v2 dec 100 1 1e9
