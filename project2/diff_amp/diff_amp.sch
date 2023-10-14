v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 30 10 50 {
lab=VGND}
N -90 -30 10 -30 {
lab=#net1}
N 10 -30 90 -30 {
lab=#net1}
N 90 -70 90 -30 {
lab=#net1}
N 90 -190 90 -130 {
lab=#net2}
N 130 -220 260 -220 {
lab=#net2}
N 340 -100 420 -100 {
lab=#net3}
N 300 -190 300 -130 {
lab=#net3}
N 460 -410 460 -130 {
lab=VOUT}
N -100 -410 -100 -150 {
lab=#net4}
N -100 -30 -90 -30 {
lab=#net1}
N -100 -70 -100 -30 {
lab=#net1}
N -100 -150 -100 -130 {
lab=#net4}
N 20 -100 50 -100 {
lab=VIN2}
N -160 -100 -140 -100 {
lab=VIN1}
N -60 -0 -30 -0 {
lab=VTAU}
N -100 -500 -100 -470 {
lab=VDD}
N 460 -500 460 -470 {
lab=VDD}
N -60 -440 420 -440 {
lab=#net4}
N 300 -70 300 -50 {
lab=VGND}
N 460 -70 460 -50 {
lab=VGND}
N 380 -160 380 -100 {
lab=#net3}
N 300 -160 380 -160 {
lab=#net3}
N 460 -270 560 -270 {
lab=VOUT}
N 90 -280 90 -250 {
lab=VDD}
N 300 -280 300 -250 {
lab=VDD}
N -100 -100 -80 -100 {
lab=VGND}
N 90 -100 110 -100 {
lab=VGND}
N -130 -440 -100 -440 {
lab=VDD}
N 460 -440 490 -440 {
lab=VDD}
N 460 -100 490 -100 {
lab=VGND}
N 280 -100 300 -100 {
lab=VGND}
N 490 -100 490 -60 {
lab=VGND}
N 460 -60 490 -60 {
lab=VGND}
N 280 -100 280 -60 {
lab=VGND}
N 280 -60 300 -60 {
lab=VGND}
N 300 -220 320 -220 {
lab=VDD}
N 320 -260 320 -220 {
lab=VDD}
N 300 -260 320 -260 {
lab=VDD}
N 70 -260 90 -260 {
lab=VDD}
N 70 -260 70 -220 {
lab=VDD}
N 70 -220 90 -220 {
lab=VDD}
N -100 -390 -30 -390 {
lab=#net4}
N -30 -440 -30 -390 {
lab=#net4}
N 90 -160 180 -160 {
lab=#net2}
N 180 -220 180 -160 {
lab=#net2}
N 10 -0 40 -0 {
lab=VGND}
N 40 -0 40 40 {
lab=VGND}
N 10 40 40 40 {
lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} -10 0 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} -120 -100 0 0 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 70 -100 0 0 {name=M3
L=0.15
W=1
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
C {devices/gnd.sym} 10 50 0 0 {name=l1 lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} -80 -440 0 1 {name=M4
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 440 -440 0 0 {name=M5
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 110 -220 0 1 {name=M6
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -220 0 0 {name=M7
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -100 0 1 {name=M8
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 440 -100 0 0 {name=M9
L=0.15
W=1
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
C {devices/vdd.sym} -100 -500 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 460 -500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 300 -50 0 0 {name=l4 lab=VGND}
C {devices/gnd.sym} 460 -50 0 0 {name=l5 lab=VGND}
C {devices/vdd.sym} 90 -280 0 0 {name=l6 lab=VDD}
C {devices/vdd.sym} 300 -280 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 110 -100 0 0 {name=l8 lab=VGND}
C {devices/gnd.sym} -80 -100 0 0 {name=l9 lab=VGND}
C {devices/vdd.sym} -130 -440 0 0 {name=l10 lab=VDD}
C {devices/vdd.sym} 490 -440 0 0 {name=l11 lab=VDD}
C {devices/iopin.sym} 560 -270 0 0 {name=p1 lab=VOUT}
C {devices/iopin.sym} -160 -100 0 1 {name=p2 lab=VIN1}
C {devices/iopin.sym} 20 -100 0 1 {name=p3 lab=VIN2}
C {devices/iopin.sym} -60 0 0 1 {name=p4 lab=VTAU}
