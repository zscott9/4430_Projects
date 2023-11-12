v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -270 90 -220 {
lab=GND}
N 60 -270 90 -270 {
lab=GND}
N 60 -240 60 -200 {
lab=IN}
N 60 -470 60 -300 {
lab=#net1}
N 60 -470 160 -470 {
lab=#net1}
N 160 -470 160 -440 {
lab=#net1}
N 0 -270 20 -270 {
lab=#net2}
N 0 -330 -0 -270 {
lab=#net2}
N -0 -330 200 -330 {
lab=#net2}
N 200 -330 200 -290 {
lab=#net2}
N 200 -290 230 -290 {
lab=#net2}
N 160 -380 160 -330 {
lab=#net2}
N 200 -390 260 -390 {
lab=#net2}
N 200 -390 200 -330 {
lab=#net2}
N 290 -450 290 -430 {
lab=#net2}
N 240 -450 290 -450 {
lab=#net2}
N 240 -450 240 -390 {
lab=#net2}
N 290 -390 290 -360 {
lab=VOUT}
N 290 -360 340 -360 {
lab=VOUT}
N 340 -390 340 -360 {
lab=VOUT}
N 320 -390 340 -390 {
lab=VOUT}
N 450 -390 450 -370 {
lab=VOUT}
N 340 -390 450 -390 {
lab=VOUT}
N 450 -340 510 -340 {
lab=GND}
N 510 -340 510 -290 {
lab=GND}
N 450 -310 450 -250 {
lab=#net3}
N 370 -220 410 -220 {
lab=IN}
N 370 -220 370 -190 {
lab=IN}
N 60 -190 370 -190 {
lab=IN}
N 60 -200 60 -190 {
lab=IN}
N 290 -290 340 -290 {
lab=VOUT}
N 340 -390 340 -290 {
lab=VOUT}
N 450 -220 510 -220 {
lab=GND}
N 510 -290 510 -220 {
lab=GND}
N 450 -190 450 -150 {
lab=GND}
N 510 -220 510 -160 {
lab=GND}
N 450 -160 510 -160 {
lab=GND}
N 380 -340 410 -340 {
lab=VCASN}
N 380 -340 380 -260 {
lab=VCASN}
N 450 -570 450 -530 {
lab=#net1}
N 120 -570 450 -570 {
lab=#net1}
N 120 -570 120 -470 {
lab=#net1}
N 450 -500 470 -500 {
lab=#net1}
N 470 -570 470 -500 {
lab=#net1}
N 450 -570 470 -570 {
lab=#net1}
N 450 -470 450 -390 {
lab=VOUT}
N 380 -500 410 -500 {
lab=PBIAS}
N 380 -500 380 -450 {
lab=PBIAS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 160 -410 0 0 {name=C1 model=cap_mim_m3_1 W=20 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 260 -290 1 0 {name=C2 model=cap_mim_m3_1 W=2 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 430 -340 0 0 {name=M1
L=0.4
W=2.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 40 -270 0 0 {name=M2
L=0.5
W=1.2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 430 -220 0 0 {name=M3
L=0.4
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 430 -500 0 0 {name=M4
L=0.45
W=2.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 -410 1 0 {name=M5
L=6
W=0.45
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -220 0 0 {name=p1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 450 -150 0 0 {name=p2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 60 -190 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 380 -260 0 0 {name=p4 sig_type=std_logic lab=VCASN}
C {devices/lab_pin.sym} 450 -410 0 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 380 -450 0 0 {name=p6 sig_type=std_logic lab=PBIAS}
C {devices/lab_pin.sym} 120 -570 0 0 {name=p7 sig_type=std_logic lab=VDD}
