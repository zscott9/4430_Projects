* Transconductance Amplifier Design w/ Cascode
.include C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp
* Bias Trans
X0 vint nbias vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Diff In +
X1 v13 vin1 vint vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Diff in -
X2 v26 vin2 vint vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* CM1 +, diode connected
X3 v13 v13 gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=1.2
* CM1 +, not diode connected
X4 vout v13 gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=1.2
* Cascode N
*X5 vout pbias v45 gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* CM1 -, diode connected
X6 v26 v26 gnd gnd sky130_fd_pr__nfet_01v8 w=2 l=0.4
* CM1 -, not diode connected
X7 v78 v26 gnd gnd sky130_fd_pr__nfet_01v8 w=2 l=0.4
* CM2 -, diode connected
X8 v78 v78 vdd vdd sky130_fd_pr__pfet_01v8 w=1.2 l=1.2
* CM2 -, not diode connected
X9 vout v78 vdd vdd sky130_fd_pr__pfet_01v8 w=1.2 l=1.2
* Cascode P
*X10 vout nbias v910 vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Bootstrap
X11 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* SOURCES
v1 vdd gnd 1.8
v2 vin1 vcon 0
v3 vcon gnd ac=1
v4 vin2 gnd 0
* DISCRETE
r1 resist gnd 10k
c1 vout gnd 30p
* SIM
*.dc v2 0 1.8 0.05
.ac dec 100 1 1e9