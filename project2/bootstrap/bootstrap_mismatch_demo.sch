v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1460 -700 1480 -700 { lab=VGND}
N 1310 -770 1380 -770 { lab=PBIAS}
N 1350 -800 1410 -800 { lab=PBIAS}
N 1290 -700 1310 -700 { lab=VGND}
N 1380 -800 1380 -770 { lab=PBIAS}
N 1290 -800 1310 -800 { lab=VPWR}
N 1290 -830 1290 -800 { lab=VPWR}
N 1290 -830 1310 -830 { lab=VPWR}
N 1310 -830 1450 -830 { lab=VPWR}
N 1450 -830 1550 -830 { lab=VPWR}
N 1450 -800 1470 -800 { lab=VPWR}
N 1470 -830 1470 -800 { lab=VPWR}
N 1450 -770 1450 -730 { lab=NBIAS}
N 1250 -700 1290 -700 { lab=VGND}
N 1310 -770 1310 -730 { lab=PBIAS}
N 1310 -670 1310 -650 { lab=#net1}
N 1450 -670 1450 -650 { lab=VGND}
N 1450 -750 1500 -750 { lab=NBIAS}
N 1260 -770 1310 -770 { lab=PBIAS}
N 1450 -570 1490 -570 { lab=VGND}
N 1450 -650 1450 -570 { lab=VGND}
N 1310 -650 1310 -640 { lab=#net1}
N 1280 -570 1310 -570 { lab=RESIST}
N 1310 -580 1310 -570 { lab=RESIST}
N 1450 -700 1460 -700 {
lab=VGND}
N 1410 -750 1410 -700 {
lab=NBIAS}
N 1410 -750 1450 -750 {
lab=NBIAS}
N 1270 -520 1270 -500 {
lab=RESIST}
N 1270 -440 1270 -420 {
lab=VGND}
C {devices/iopin.sym} 1550 -830 0 0 {name=VPWR lab=VPWR}
C {sky130_fd_pr/nfet_01v8.sym} 1430 -700 0 0 {name=M4
L=0.2
W=2
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
C {devices/gnd.sym} 1480 -700 0 0 {name=l2 lab=VGND}
C {devices/iopin.sym} 1500 -750 0 0 {name=NBIAS lab=NBIAS}
C {sky130_fd_pr/pfet_01v8.sym} 1430 -800 0 0 {name=M7
L=0.2
W=5.81
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
C {sky130_fd_pr/nfet_01v8.sym} 1330 -700 0 1 {name=M10
L=0.2
W=95.36
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
C {devices/iopin.sym} 1260 -770 0 1 {name=PBIAS lab=PBIAS}
C {devices/iopin.sym} 1490 -570 0 0 {name=p1 lab=VGND}
C {devices/gnd.sym} 1250 -700 0 0 {name=l3 lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 1330 -800 0 1 {name=M5
L=0.2
W=5.81
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
C {sky130_fd_pr/res_generic_po.sym} 1310 -610 0 0 {name=R1
W=0.42
L=10.14
model=res_generic_po
spiceprefix=X
mult=1}
C {devices/iopin.sym} 1280 -570 0 1 {name=RESIST lab=RESIST}
C {devices/code_shown.sym} 1700 -800 0 0 {name=s1 only_toplevel=false value="
v1 vpwr vgnd 1.8
v2 vgnd gnd 0
.control
  dc v1 0 1.8 0.1
  print v(nbias)
  print v(pbias)
.endc
"}
C {sky130_fd_pr/corner.sym} 1700 -570 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 1380 -700 1 0 {name=V3 value=3m savecurrent=false}
C {devices/res.sym} 1270 -470 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1270 -520 0 0 {name=p2 sig_type=std_logic lab=RESIST}
C {devices/gnd.sym} 1270 -420 0 0 {name=l1 lab=VGND}
