* Transconductance Amplifier Design w/ Cascode
.include C:\Users\ber20\hilas_shared\4430_Projects\project2\models.sp
* Bias Trans
X0 vint pbias vdd vdd sky130_fd_pr__pfet_01v8 w=1.6 l=0.4
* Diff In +
X1 v13 vin1 vint vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Diff in -
X2 v26 vout vint vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* CM1 +, diode connected
X3 v13 v13 gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* CM1 +, not diode connected
X4 v45 v13 gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* Cascode N
X5 vout vcnact v45 gnd sky130_fd_pr__nfet_01v8 w=0.91 l=0.4
* CM1 -, diode connected
X6 v26 v26 gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* CM1 -, not diode connected
X7 v78 v26 gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* CM2 -, diode connected
X8 v78 v78 vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* CM2 -, not diode connected
X9 v910 v78 vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
* Cascode P
X10 vout vcpact v910 vdd sky130_fd_pr__pfet_01v8 w=0.78 l=0.4
* Bootstrap
X11 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
* Biasing Cascode N, vcnact needs to be +0.21 volts from v13
X12 gnd v13 vcntemp vdd sky130_fd_pr__pfet_01v8 w=0.5 l=0.4
X13 vcntemp pbias vdd vdd sky130_fd_pr__pfet_01v8 w=0.5 l=0.4
X14 vdd vcntemp vcnact gnd sky130_fd_pr__nfet_01v8 w=1.4 l=0.4
X15 vcnact nbias gnd gnd sky130_fd_pr__nfet_01v8 w=0.5 l=0.4
* Biasing Cascode P, vcpct needs to be -0.23 volts from v78
X16 gnd v78 vcptemp vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
X17 vcptemp pbias vdd vdd sky130_fd_pr__pfet_01v8 w=0.8 l=0.4
X18 vdd vcptemp vcpact gnd sky130_fd_pr__nfet_01v8 w=0.5 l=0.4
X19 vcpact nbias gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* SOURCES
v1 vdd gnd 1.8
v2 vin1 vcon 0.5
v3 vcon gnd ac=1
v4 vin2 gnd 0.5
* DISCRETE
r1 resist gnd 10
c1 vout gnd 1p
* SIM
.dc v2 0 1.8 0.05
*.ac dec 100 1 1e9