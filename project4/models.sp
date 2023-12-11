* pFET model
.subckt sky130_fd_pr__pfet_01v8 DRAIN GATE SOURCE BODY params: as=0 ad=0 ps=0 pd=0 l=0.4 w=0.8
    * nFET Spice Model
    .model hPMOS PMOS(Level=12 KP=0.006 Vto=-0.9 Is=18.7f Gamma=0.6213 Phi=0.42 Lambda = 0.0225)
    M1 DRAIN GATE SOURCE BODY hPMOS As={as*1e-6} Ad={ad*1e-6} Ps={ps*1e-6} Pd={pd*1e-6} L={l*1e-6} W={w*1e-6}
    C1 GATE DRAIN {w*0.1*1e-15}
    C2 GATE SOURCE {2*w*l*10.4*1e-15/3+w*0.1*1e-15}
    C3 DRAIN BODY {0.047*pd*1e-15+1.05*ad*1e-15}
    C4 SOURCE BODY {0.047*ps*1e-15+1.05*as*1e-15}
.ends
* nFET model
.subckt sky130_fd_pr__nfet_01v8 DRAIN GATE SOURCE BODY params: as=0 ad=0 ps=0 pd=0 l=0.4 w=0.8
    * nFET Spice Model
    .model hNMOS NMOS(Level=12 KP=.0021 Vto=0.6 Is=6.42e-14 Gamma=0.3 Phi=0.25 Lambda = 0.2537)
    M1 DRAIN GATE SOURCE BODY hNMOS As={as*1e-6} Ad={ad*1e-6} Ps={ps*1e-6} Pd={pd*1e-6} L={l*1e-6} W={w*1e-6}
    C1 GATE DRAIN {w*0.1*1e-15}
    C2 GATE SOURCE {2*w*l*10.4*1e-15/3+w*0.1*1e-15}
    C3 DRAIN BODY {0.034*pd*1e-15+0.8*ad*1e-15}
    C4 SOURCE BODY {0.034*ps*1e-15+0.8*as*1e-15}
.ends
* Bootstrap Current Source
.subckt sky130_hilas_Bootstrap01 RESIST VPWR VGND PBIAS NBIAS
    X0 NBIAS PBIAS VPWR VPWR sky130_fd_pr__pfet_01v8 ad=1.68 pd=12.2 as=0.93 ps=6.13 w=5.81 l=0.2
    X1 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X2 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X3 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X4 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X5 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=1.85 pd=12.5 as=0.924 ps=6.27 w=5.96 l=0.2
    X6 VPWR PBIAS PBIAS VPWR sky130_fd_pr__pfet_01v8 ad=0.93 pd=6.13 as=1.74 ps=12.2 w=5.81 l=0.2
    X7 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.983 ps=6.29 w=5.96 l=0.2
    X8 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X9 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X10 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    R0 a_n535_n59# a_n454_n612# 582
    X11 NBIAS NBIAS VGND VGND sky130_fd_pr__nfet_01v8 ad=0.62 pd=4.62 as=0.62 ps=4.62 w=2 l=0.2
    R1 a_n535_n59# RESIST 582
    X12 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X13 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X14 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X15 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.983 pd=6.29 as=1.73 ps=12.5 w=5.96 l=0.2
    X16 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X17 PBIAS NBIAS a_n454_n612# VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
    X18 a_n454_n612# NBIAS PBIAS VGND sky130_fd_pr__nfet_01v8 ad=0.924 pd=6.27 as=0.924 ps=6.27 w=5.96 l=0.2
.ends
* OTA Subcircuit
.subckt ota_design VIN1 VIN2 VOUT VDD VGND PBIAS NBIAS
X0 VDD VCPTEMP VCPACT VGND sky130_fd_pr__nfet_01v8 ad=0.25 pd=2 as=0.185 ps=1.3 w=0.5 l=0.4
X1 V13 V13 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.4 pd=2.6 as=0.4 ps=2.6 w=0.8 l=0.4
X2 VOUT VCPACT V910 VDD sky130_fd_pr__pfet_01v8 ad=0.394 pd=2.6 as=0.198 ps=1.3 w=0.78 l=0.4
X3 VCNTEMP V13 VGND VDD sky130_fd_pr__pfet_01v8 ad=0.125 pd=1 as=0.25 ps=2 w=0.5 l=0.4
X4 V26 VIN2 VINT VDD sky130_fd_pr__pfet_01v8 ad=2.4 pd=10.6 as=1.2 ps=5.3 w=4.8 l=0.4
X5 VCPTEMP PBIAS VDD VDD sky130_fd_pr__pfet_01v8 ad=0.2 pd=1.3 as=0.4 ps=2.6 w=0.8 l=0.4
X6 V78 V26 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.4 pd=2.6 as=0.2 ps=1.3 w=0.8 l=0.4
X7 VCPACT NBIAS VGND VGND sky130_fd_pr__nfet_01v8 ad=0.185 pd=1.3 as=0.4 ps=2.6 w=0.8 l=0.4
X8 VDD V78 V78 VDD sky130_fd_pr__pfet_01v8 ad=0.2 pd=1.3 as=0.4 ps=2.6 w=0.8 l=0.4
X9 VOUT VCNACT V45 VGND sky130_fd_pr__nfet_01v8 ad=0.455 pd=2.82 as=0.455 ps=2.82 w=0.91 l=0.4
X10 VGND V26 V26 VGND sky130_fd_pr__nfet_01v8 ad=0.2 pd=1.3 as=0.4 ps=2.6 w=0.8 l=0.4
X11 VINT VIN1 V13 VDD sky130_fd_pr__pfet_01v8 ad=1.2 pd=5.3 as=2.4 ps=10.6 w=4.8 l=0.4
X12 VDD PBIAS VCNTEMP VDD sky130_fd_pr__pfet_01v8 ad=0.25 pd=2 as=0.125 ps=1 w=0.5 l=0.4
X13 VGND NBIAS VCNACT VGND sky130_fd_pr__nfet_01v8 ad=0.25 pd=2 as=0.26 ps=1.9 w=0.5 l=0.4
X14 V45 V13 VGND VGND sky130_fd_pr__nfet_01v8 ad=0.4 pd=2.6 as=0.4 ps=2.6 w=0.8 l=0.4
X15 VINT PBIAS VDD VDD sky130_fd_pr__pfet_01v8 ad=0.8 pd=4.2 as=0.8 ps=4.2 w=1.6 l=0.4
X16 VGND V78 VCPTEMP VDD sky130_fd_pr__pfet_01v8 ad=0.32 pd=2.4 as=0.2 ps=1.3 w=0.8 l=0.4
X17 VCNACT VCNTEMP VDD VGND sky130_fd_pr__nfet_01v8 ad=0.26 pd=1.9 as=0.7 ps=3.8 w=1.4 l=0.4
X18 V910 V78 VDD VDD sky130_fd_pr__pfet_01v8 ad=0.198 pd=1.3 as=0.2 ps=1.3 w=0.8 l=0.4
.ends

* Folded Cascode Subcircuit Definition
.subckt fc vin1 vin2 pbias vdd gnd nbias vout
X0 n14 vin1 nint vdd sky130_fd_pr__pfet_01v8 ad=7.2 pd=36.8 as=5.66 ps=36.8 w=18 l=1
X1 vdd n810 n57 vdd sky130_fd_pr__pfet_01v8 ad=1.2 pd=6.8 as=0.6 ps=3.4 w=3 l=2
X2 vdd psc psc vdd sky130_fd_pr__pfet_01v8 ad=1.2 pd=6.8 as=0.6 ps=3.4 w=3 l=2
X3 pcasc nbias gnd gnd sky130_fd_pr__nfet_01v8 ad=0.32 pd=2.4 as=0.32 ps=2.4 w=0.8 l=0.4
X4 n14 nbias gnd gnd sky130_fd_pr__nfet_01v8 ad=1.05 pd=6.4 as=2.4 ps=12.8 w=6 l=2
X5 vdd pbias nint vdd sky130_fd_pr__pfet_01v8 ad=2.1 pd=12.8 as=4.86 ps=19 w=6 l=0.4
X6 n810 ncasc n14 gnd sky130_fd_pr__nfet_01v8 ad=1.2 pd=6.8 as=1.05 ps=6.4 w=3 l=2
X7 nint vin2 n23 vdd sky130_fd_pr__pfet_01v8 ad=4.86 pd=19 as=9 ps=37 w=18 l=1
X8 n68 pcasc n810 vdd sky130_fd_pr__pfet_01v8 ad=0.6 pd=3.4 as=1.2 ps=6.8 w=3 l=2
X9 vdd pbias ncasc vdd sky130_fd_pr__pfet_01v8 ad=0.32 pd=2.4 as=0.32 ps=2.4 w=0.8 l=0.4
X10 vdd n810 n68 vdd sky130_fd_pr__pfet_01v8 ad=1.2 pd=6.8 as=0.6 ps=3.4 w=3 l=2
X11 ncasc ncasc nsc gnd sky130_fd_pr__nfet_01v8 ad=1.2 pd=6.8 as=0.75 ps=3.5 w=3 l=2
X12 n23 nbias gnd gnd sky130_fd_pr__nfet_01v8 ad=1.05 pd=6.4 as=2.4 ps=12.8 w=6 l=2
X13 vout ncasc n23 gnd sky130_fd_pr__nfet_01v8 ad=1.2 pd=6.8 as=1.05 ps=6.4 w=3 l=2
X14 nsc nsc gnd gnd sky130_fd_pr__nfet_01v8 ad=0.75 pd=3.5 as=1.2 ps=6.8 w=3 l=2
X15 n57 pcasc vout vdd sky130_fd_pr__pfet_01v8 ad=0.6 pd=3.4 as=1.2 ps=6.8 w=3 l=2
X16 psc pcasc pcasc vdd sky130_fd_pr__pfet_01v8 ad=0.6 pd=3.4 as=1.2 ps=6.8 w=3 l=2
.ends

* Comparator
.subckt comparator vinp vinn vout vdd gnd nbias 
* Bias Current Transistor
X1 ncmt nbias gnd gnd sky130_fd_pr__nfet_01v8 w=4.8 l=0.4
* Diode Connected Transistor for Bias Current Mirror
X2 ncmt ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=0.4 l=0.4
* Bias Current Transistor for Diff Pair
* Increasing W/L (more current) quickens response time of diff pair
* Can be reduced to 4.8 and will still work
X3 nint ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Diff Pair Non-Inverting Input
X4 ncmb vinp nint vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Diff Pair Inverting Input
X5 no1 vinn nint vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Bottom Current Mirror Diode Connected
X6 ncmb ncmb gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* Bottom Current Mirror Not Diode Connected
X7 no1 ncmb gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=0.4
* First CS Amplification Stage Transistor
X8 no2 no1 gnd gnd sky130_fd_pr__nfet_01v8 w=1.8 l=0.4
* First Amp Bias Transistor
X9 no2 ncmt vdd vdd sky130_fd_pr__pfet_01v8 w=4.8 l=0.4
* Inverter - Buffer
X10 vout no2 vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X11 vout no2 gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
.ends

* Sample and Hold
.subckt snh V+1 Clock1 Clock2 V+2 V-2 vdd gnd
M21 N012 N010 vdd vdd test1 l=1200n w=800000n
M22 N012 V-1 N018 vdd test1 l=1600n w=146000n
M24 N016 N020 gnd gnd test l=1600n w=50000n
M25 N018 N020 gnd gnd test l=1600n w=50000n
M26 N002 N014 N016 gnd test l=1600n w=300000n
M27 Vout1 N014 N018 gnd test l=1600n w=300000n
M28 N007 N004 N002 vdd test1 l=1600n w=300000n
M31 vdd N002 N007 vdd test1 l=1600n w=300000n
M32 N008 N004 Vout1 vdd test1 l=1600n w=300000n
M33 vdd N002 N008 vdd test1 l=1600n w=300000n
V14 N010 gnd 0.95
V15 N020 gnd 0.6
V20 N004 gnd 0.65
V17 N014 gnd 0.9
M23 N012 V+1 N016 vdd test1 l=1600n w=146000n
M1 N011 N009 vdd vdd test1 l=1200n w=800000n
M2 N011 V-2 N017 vdd test1 l=1600n w=146000n
M3 N015 N019 gnd gnd test l=1600n w=50000n
M4 N017 N019 gnd gnd test l=1600n w=50000n
M5 N001 N013 N015 gnd test l=1600n w=300000n
M6 V-2 N013 N017 gnd test l=1600n w=300000n
M7 N005 N003 N001 vdd test1 l=1600n w=300000n
M8 vdd N001 N005 vdd test1 l=1600n w=300000n
M9 N006 N003 V-2 vdd test1 l=1600n w=300000n
M10 vdd N001 N006 vdd test1 l=1600n w=300000n
V1 N009 gnd 0.95
V2 N019 gnd 0.6
V3 N003 gnd 0.65
V4 N013 gnd 0.9
M11 N011 V+2 N015 vdd test1 l=1600n w=146000n
* T-Gates
M12 Vout1 Clock2 V-1 gnd test l=400n w=800n
M13 V-1 Clock1 Vout1 vdd test1 l=400n w=800n
M14 V-2 Clock1 V-1 gnd test l=400n w=800n
M15 V-1 Clock2 V-2 vdd test1 l=400n w=800n
M16 V+2 Clock1 Vout1 gnd test l=400n w=800n
M17 Vout1 Clock2 V+2 vdd test1 l=400n w=800n
* Capacitance on output of SnH
C1 V-2 gnd 0.1p
C2 V+2 gnd 1p
.model NMOS NMOS
.model PMOS PMOS
.lib C:\Users\ba-pe\AppData\Local\LTspice\lib\cmp\standard.mos
.model test NMOS  (level=12, kp=0.00030207, Vto=0.56 Gamma=0.55708, Phi=0.5, Is=4.27e-24)
.model test1 PMOS(KP=0.00007986, Vto=-0.9, Gamma=0.656924, Phi=0.5, Is=9.5876e-24, level=12 )
.backanno
.end
.ends

* Sahaj's 1-bit dac with added t gate for correct logic
.subckt summation vref bj bjn vsum vdd gnd
M1 N005 N005 0 0 sum_nmos l=500n w=2500n
M2 N004 N004 0 0 sum_nmos l=500n w=2500n
M3 N003 N004 0 0 sum_nmos l=500n w=2000n
M4 N002 N005 0 0 sum_nmos l=300n w=2400n
M5 N001 vref N005 vdd sum_pmos l=400n w=800n
M6 N001 N002 N004 vdd sum_pmos l=400n w=800n
M7 vdd pbias N001 vdd sum_pmos l=200n w=3000n
M8 vdd N003 N003 vdd sum_pmos l=500n w=2000n
M9 vdd N003 N002 vdd sum_pmos l=300n w=2400n
M20 N002 bjn vsum vdd sum_pmos l=400n w=2500n
M21 N002 bj vsum 0 sum_nmos l=400n w=2500n
M22 0 bj vsum vdd sum_pmos l=400n w=2500n
M23 0 bjn vsum 0 sum_nmos l=400n w=2500n
.lib C:\Users\ba-pe\AppData\Local\LTspice\lib\cmp\standard.mos
.model sum_nmos nmos(level=12 phi=0.6 VTO=0.53 kp=0.00024 Gamma=0.8926 Is=4.43e-14, COX=10.4m, CJ=0.8m, CJSW=0.034n, CGDO=0.1n, CGSO=0.1n)
.model sum_pmos pmos(level=12 phi=0.3 VTO=-1.08 kp=5.986e-5 Gamma=0.735 Is=1.26e-21, COX=10.4m, CJ=1.05m, CJSW=0.047n, CGDO=0.1n, CGSO=0.1n)
.ends

* My 1-bit dac -> no amplifier
.subckt ibitdac vref bj bjn dacout vdd gnd
M20 vref bjn dacout vdd sum_pmos l=400n w=2500n
M21 vref bj dacout gnd sum_nmos l=400n w=2500n
M22 gnd bj dacout vdd sum_pmos l=400n w=2500n
M23 gnd bjn dacout gnd sum_nmos l=400n w=2500n
.model sum_nmos nmos(level=12 phi=0.6 VTO=0.53 kp=0.00024 Gamma=0.8926 Is=4.43e-14, COX=10.4m, CJ=0.8m, CJSW=0.034n, CGDO=0.1n, CGSO=0.1n)
.model sum_pmos pmos(level=12 phi=0.3 VTO=-1.08 kp=5.986e-5 Gamma=0.735 Is=1.26e-21, COX=10.4m, CJ=1.05m, CJSW=0.047n, CGDO=0.1n, CGSO=0.1n)
.ends

* G2A
.subckt giia vx vn vo vdd gnd
M21 N004 pbias vdd vdd test1 l=1200n w=800000n
M22 N004 vx N006 vdd test1 l=1600n w=146000n
M24 N005 nbias gnd gnd test l=1600n w=50000n
M25 N006 nbias gnd gnd test l=1600n w=50000n
M26 N001 vcasn N005 gnd test l=1600n w=300000n
M27 vo vcasn N006 gnd test l=1600n w=300000n
M28 N002 vcasp N001 vdd test1 l=1600n w=300000n
M31 vdd N001 N002 vdd test1 l=1600n w=300000n
M32 N003 vcasp vo vdd test1 l=1600n w=300000n
M33 vdd N001 N003 vdd test1 l=1600n w=300000n
M23 N004 vn N005 vdd test1 l=1600n w=146000n
* M12 vh clk_reset vx gnd test l=400n w=800n
* M13 vx clk_resetn vh +1V8 test1 l=400n w=800n
* C1 vh vx 200f
* C2 vx vdac 200f
* C3 vx vo 100f
* M1 vx clk_reset vo gnd test l=400n w=800n
* M2 vo clk_resetn vx +1V8 test1 l=400n w=800n
V1 vcasp gnd 0.65
V2 vcasn gnd 0.9
V3 pbias gnd 0.95
V4 nbias gnd 0.6
.model test NMOS  (level=12, kp=0.00030207, Vto=0.56 Gamma=0.55708, Phi=0.5, Is=4.27e-24)
.model test1 PMOS(KP=0.00007986, Vto=-0.9, Gamma=0.656924, Phi=0.5, Is=9.5876e-24, level=12 )
.ends