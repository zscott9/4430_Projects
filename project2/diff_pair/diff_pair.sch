v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 0 30 0 {
lab=VGND}
N -70 -130 -50 -130 {
lab=VND}
N 140 -130 160 -130 {
lab=VGND}
N -60 0 -30 0 {
lab=VTAU}
N 10 -70 10 -30 {
lab=#net1}
N -70 -100 -70 -70 {
lab=#net1}
N 10 -70 90 -70 {
lab=#net1}
N 140 -100 140 -70 {
lab=#net1}
N -70 -190 -70 -160 {
lab=VDD}
N 140 -190 140 -160 {
lab=VDD}
N -130 -130 -110 -130 {
lab=VIN1}
N 80 -130 100 -130 {
lab=VIN2}
N -70 -70 10 -70 {
lab=#net1}
N 90 -70 140 -70 {
lab=#net1}
N 10 30 10 60 {
lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} -10 0 0 0 {name=M1
L=0.4
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} 120 -130 0 0 {name=M2
L=0.4
W=0.8
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
C {sky130_fd_pr/nfet_01v8.sym} -90 -130 0 0 {name=M3
L=0.4
W=0.8
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
C {devices/gnd.sym} 30 0 0 0 {name=l1 lab=VGND}
C {devices/gnd.sym} -50 -130 0 0 {name=l2 lab=VGND}
C {devices/gnd.sym} 160 -130 0 0 {name=l3 lab=VGND}
C {devices/iopin.sym} -60 0 2 0 {name=p1 lab=VTAU}
C {devices/iopin.sym} -130 -130 2 0 {name=p2 lab=VIN1}
C {devices/iopin.sym} 80 -130 2 0 {name=p3 lab=VIN2}
C {devices/iopin.sym} 10 60 2 0 {name=p4 lab=VGND}
C {devices/iopin.sym} -70 -190 2 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 140 -190 2 0 {name=p6 lab=VDD}
