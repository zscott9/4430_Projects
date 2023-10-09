v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 60 -50 70 {
lab=GND}
N -30 -40 -30 0 {
lab=vg}
N -60 -40 -30 -40 {
lab=vg}
N 20 -110 60 -110 {
lab=VDD}
N 60 -110 60 -100 {
lab=VDD}
N 20 -40 60 -40 {
lab=#net1}
N 320 -120 320 -90 {
lab=VDD}
N 320 -30 320 -10 {
lab=GND}
N 20 -40 20 -30 {
lab=#net1}
N 20 30 20 60 {
lab=GND}
N -50 0 -20 0 {
lab=vg}
C {devices/gnd.sym} 20 60 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 20 -110 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/corner.sym} 110 -40 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} -250 100 0 0 {name=s1 only_toplevel=false value="
.control
  save all
  dc vin 0 1.8 0.1
  plot i(V1) ylog
* exit
.endc
"}
C {devices/vsource.sym} -50 30 0 0 {name=vin value=3 savecurrent=false}
C {devices/gnd.sym} -50 70 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -60 -40 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/vsource.sym} 320 -60 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vdd.sym} 320 -120 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 320 -10 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 60 -70 0 0 {name=V1 value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 0 0 0 0 {name=M1
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
