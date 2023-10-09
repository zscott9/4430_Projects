v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -40 160 -40 {
lab=VDD}
N 140 -20 160 -20 {
lab=PBIAS}
N 140 0 160 0 {
lab=NBIAS}
N 140 20 160 20 {
lab=#net1}
N 140 40 160 40 {
lab=GND}
N 160 40 170 40 {
lab=GND}
N 170 40 170 70 {
lab=GND}
N 160 20 270 20 {
lab=#net1}
N 270 80 270 100 {
lab=GND}
C {sky130_hilas_Bootstrap01.sym} -10 0 0 0 {name=x1}
C {devices/gnd.sym} 170 70 0 0 {name=l1 lab=GND}
C {devices/res.sym} 270 50 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 270 100 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 160 -40 0 0 {name=l3 lab=VDD}
C {devices/code_shown.sym} 350 -50 0 0 {name=s1 only_toplevel=false value="
v1 vdd gnd 1.8
.control
  dc v1 0 1.8 0.1
  print v(pbias)
  print v(nbias)
.endc


"}
C {sky130_fd_pr/corner.sym} 200 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 160 -20 2 0 {name=p1 sig_type=std_logic lab=PBIAS}
C {devices/lab_pin.sym} 160 0 2 0 {name=p2 sig_type=std_logic lab=NBIAS}
