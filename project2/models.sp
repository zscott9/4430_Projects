* pFET model
.subckt sky130_fd_pr__pfet_01v8 DRAIN GATE SOURCE BODY params: as=0 ad=0 ps=0 pd=0 l=0.1 w=0.1
    * nFET Spice Model
    .model hPMOS PMOS(Level=12 KP=0.006 Vto=-0.9 Is=18.7f Gamma=0.6213 Phi=0.42 Lambda = 0.0225)
    M1 DRAIN GATE SOURCE BODY hPMOS As={as*1e-6} Ad={ad*1e-6} Ps={ps*1e-6} Pd={pd*1e-6} L={l*1e-6} W={w*1e-6}
    C1 GATE DRAIN {w*0.1*1e-15}
    C2 GATE SOURCE {2*w*l*10.4*1e-15/3+w*0.1*1e-15}
    C3 DRAIN BODY {0.047*pd*1e-15+1.05*ad*1e-15}
    C4 SOURCE BODY {0.047*ps*1e-15+1.05*as*1e-15}
.ends
* nFET model
.subckt sky130_fd_pr__nfet_01v8 DRAIN GATE SOURCE BODY params: as=0 ad=0 ps=0 pd=0 l=0.1 w=0.1
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
.subckt ota_design VDD VIN1 VIN2 VGND VOUT PBIAS NBIAS
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