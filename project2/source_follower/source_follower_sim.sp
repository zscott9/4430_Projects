* Source Follower Layout Sim
.include sf.spice
.include C:\Users\ber20\Google Drive\BS.ECE\2023-2024\ECE 4430\Project2\models.sp
X1 vdd icon nbias vout vin source_follower
X2 RESIST vdd gnd PBIAS nbias sky130_hilas_Bootstrap01
v1 vdd gnd 1.8
v2 vin vcon 1
v3 icon gnd 0
*v3 vcon gnd ac=1
r1 resist gnd 30k
c1 vout gnd 100f
.dc v2 0 1.8 0.05
*.ac dec 100 1 1e9
