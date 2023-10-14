* Transconductance Amplifier Design w/ Cascode
.include C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp
* Bias Trans
X0 vint nbias vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Diff In +
X1 v13 vin1 vint vdd sky130_fd_pr__pfet_01v8 w=2.5 l=0.4
* Diff in -
X2 v26 vout vint vdd sky130_fd_pr__pfet_01v8 w=2.5 l=0.4
* CM1 +, diode connected
X3 v13 v13 gnd gnd sky130_fd_pr__nfet_01v8 w=0.80 l=0.40
* CM1 +, not diode connected
X4 v45 v13 gnd gnd sky130_fd_pr__nfet_01v8 w=0.80 l=0.40
* Cascode N
*pbias
X5 vout pbias v45 gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* CM1 -, diode connected
X6 v26 v26 gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.40
* CM1 -, not diode connected
X7 v78 v26 gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.40
* CM2 -, diode connected
X8 v78 v78 vdd vdd sky130_fd_pr__pfet_01v8 w=2.9 l=0.65
* CM2 -, not diode connected
X9 v910 v78 vdd vdd sky130_fd_pr__pfet_01v8 w=2.9 l=0.65
* Cascode P
*nbias
X10 vout nbias v910 vdd sky130_fd_pr__pfet_01v8 w=3.95 l=0.40
* Bootstrap
X11 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* SOURCES
v1 vdd gnd 1.8
v2 vin1 vcon 0.5
v3 vcon gnd ac=1
v4 vin2 gnd 0.5
* DISCRETE
r1 resist gnd 168meg
c1 vout gnd 1.05p
* SIM
*.dc v2 0 1.8 0.05
.ac dec 100 1 1e9