v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -0 -30 -0 {
lab=VIN}
N -50 100 -30 100 {
lab=VTAU}
N 10 -50 10 -30 {
lab=VDD}
N 10 30 10 70 {
lab=VOUT}
N 10 130 10 150 {
lab=VGND}
N 10 50 30 50 {
lab=VOUT}
N 10 0 40 0 {
lab=VGND}
N 40 0 90 -0 {
lab=VGND}
N 10 100 90 100 {
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
C {sky130_fd_pr/nfet_01v8.sym} -10 100 0 0 {name=M2
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
C {devices/iopin.sym} -50 0 0 1 {name=p1 lab=VIN}
C {devices/iopin.sym} -50 100 0 1 {name=p2 lab=VTAU}
C {devices/iopin.sym} 30 50 0 0 {name=p3 lab=VOUT}
C {devices/iopin.sym} 10 -50 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} 10 150 0 1 {name=p5 lab=VGND}
C {devices/gnd.sym} 90 0 0 0 {name=l1 lab=VGND}
C {devices/gnd.sym} 90 100 0 0 {name=l2 lab=VGND}
