v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -60 -40 -60 {
lab=VDD}
N -130 -60 -110 -60 {
lab=PBIAS}
N -70 -120 -70 -90 {
lab=VDD}
N -70 -30 -70 -10 {
lab=#net1}
N -70 -10 20 -10 {
lab=#net1}
N -220 80 -200 80 {
lab=VIN1}
N 20 80 40 80 {
lab=VIN2}
N 80 30 80 50 {
lab=#net1}
N 20 -10 80 -10 {
lab=#net1}
N 80 -10 80 30 {
lab=#net1}
N -160 -10 -160 50 {
lab=#net1}
N -160 -10 -70 -10 {
lab=#net1}
N -160 110 -160 160 {
lab=V13}
N 80 110 80 150 {
lab=V26}
N 80 150 80 160 {
lab=V26}
N -200 130 -200 190 {
lab=V13}
N -200 130 -160 130 {
lab=V13}
N -290 190 -200 190 {
lab=V13}
N -330 220 -330 250 {
lab=VGND}
N -160 220 -160 250 {
lab=VGND}
N -330 130 -330 160 {
lab=V45}
N 70 220 170 220 {
lab=V26}
N 80 160 80 220 {
lab=V26}
N 30 190 80 190 {
lab=V26}
N 30 250 30 270 {
lab=VGND}
N 210 250 210 270 {
lab=VGND}
N 210 110 210 190 {
lab=V78}
N 210 70 210 110 {
lab=V78}
N 210 90 250 90 {
lab=V78}
N 250 40 250 90 {
lab=V78}
N 210 -10 210 10 {
lab=VDD}
N 250 40 360 40 {
lab=V78}
N 400 -10 400 10 {
lab=VDD}
N -420 130 -330 130 {
lab=V45}
N -420 130 -420 350 {
lab=V45}
N -420 350 -420 400 {
lab=V45}
N 400 70 400 110 {
lab=V910}
N 340 140 360 140 {
lab=VCPACT}
N 400 350 400 400 {
lab=V45}
N 350 320 370 320 {
lab=VCNACT}
N -420 400 400 400 {
lab=V45}
N 400 170 400 290 {
lab=VOUT}
N 400 230 480 230 {
lab=VOUT}
N 10 220 30 220 {
lab=VGND}
N 210 220 240 220 {
lab=VGND}
N -160 190 -140 190 {
lab=VGND}
N -350 190 -330 190 {
lab=VGND}
N 80 80 110 80 {
lab=VDD}
N -160 80 -130 80 {
lab=VDD}
N 180 40 210 40 {
lab=VDD}
N 400 40 440 40 {
lab=VDD}
N 340 320 350 320 {
lab=VCNACT}
N 400 320 430 320 {
lab=VGND}
N 400 140 430 140 {
lab=VDD}
N 400 140 430 140 {
lab=VDD}
N 910 130 910 150 {
lab=VDD}
N 910 180 930 180 {
lab=VDD}
N 840 180 870 180 {
lab=PBIAS}
N 910 210 910 280 {
lab=VCNTEMP}
N 850 310 870 310 {
lab=V13}
N 910 310 930 310 {
lab=VDD}
N 910 340 910 360 {
lab=VGND}
N 910 250 1030 250 {
lab=VCNTEMP}
N 1070 280 1070 320 {
lab=VCNACT}
N 1010 350 1030 350 {
lab=NBIAS}
N 1070 380 1070 400 {
lab=VGND}
N 1070 250 1090 250 {
lab=VGND}
N 1070 350 1090 350 {
lab=VGND}
N 1070 200 1070 220 {
lab=VDD}
N 1070 300 1110 300 {
lab=VCNACT}
N 910 -190 910 -170 {
lab=VDD}
N 910 -140 930 -140 {
lab=VDD}
N 840 -140 870 -140 {
lab=PBIAS}
N 910 -110 910 -40 {
lab=VCPTEMP}
N 850 -10 870 -10 {
lab=V78}
N 910 -10 930 -10 {
lab=VDD}
N 910 20 910 40 {
lab=VGND}
N 910 -70 1030 -70 {
lab=VCPTEMP}
N 1070 -40 1070 0 {
lab=VCPACT}
N 1010 30 1030 30 {
lab=NBIAS}
N 1070 60 1070 80 {
lab=VGND}
N 1070 -70 1090 -70 {
lab=VGND}
N 1070 30 1090 30 {
lab=VGND}
N 1070 -120 1070 -100 {
lab=VDD}
N 1070 -20 1110 -20 {
lab=VCPACT}
C {sky130_fd_pr/pfet_01v8.sym} -90 -60 0 0 {name=M1
L=0.4
W=1.6
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
C {devices/vdd.sym} -40 -60 0 0 {name=l1 lab=VDD}
C {devices/iopin.sym} -130 -60 2 0 {name=p1 lab=PBIAS}
C {sky130_fd_pr/pfet_01v8.sym} -180 80 0 0 {name=M2
L=0.4
W=4.8
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
C {sky130_fd_pr/pfet_01v8.sym} 60 80 0 0 {name=M3
L=0.4
W=4.8
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
C {devices/vdd.sym} -70 -120 0 0 {name=l2 lab=VDD}
C {devices/iopin.sym} -220 80 2 0 {name=p2 lab=VIN1}
C {devices/iopin.sym} 20 80 2 0 {name=p3 lab=VIN2}
C {devices/lab_pin.sym} -160 140 0 0 {name=p4 sig_type=std_logic lab=V13}
C {devices/lab_pin.sym} 80 150 0 0 {name=p5 sig_type=std_logic lab=V26}
C {sky130_fd_pr/nfet_01v8.sym} -180 190 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -310 190 0 1 {name=M5
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
C {devices/gnd.sym} -330 250 0 0 {name=l3 lab=VGND}
C {devices/gnd.sym} -160 250 0 0 {name=l4 lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 50 220 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 190 220 0 0 {name=M7
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
C {devices/gnd.sym} 30 270 0 0 {name=l5 lab=VGND}
C {devices/gnd.sym} 210 270 0 0 {name=l6 lab=VGND}
C {sky130_fd_pr/pfet_01v8.sym} 230 40 0 1 {name=M8
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
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 210 -10 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 380 40 0 0 {name=M9
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
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 400 -10 0 0 {name=l8 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 380 320 0 0 {name=M10
L=0.4
W=0.91
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
C {sky130_fd_pr/pfet_01v8.sym} 380 140 0 0 {name=M12
L=0.4
W=0.78
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
C {devices/gnd.sym} 240 220 0 0 {name=l9 lab=VGND}
C {devices/gnd.sym} 10 220 0 0 {name=l10 lab=VGND}
C {devices/gnd.sym} -350 190 0 0 {name=l11 lab=VGND}
C {devices/gnd.sym} -140 190 0 0 {name=l12 lab=VGND}
C {devices/vdd.sym} -130 80 0 0 {name=l13 lab=VDD}
C {devices/vdd.sym} 110 80 0 0 {name=l14 lab=VDD}
C {devices/vdd.sym} 180 40 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 440 40 0 0 {name=l16 lab=VDD}
C {devices/lab_pin.sym} -420 400 0 0 {name=p6 sig_type=std_logic lab=V45}
C {devices/lab_pin.sym} 210 150 0 0 {name=p7 sig_type=std_logic lab=V78}
C {devices/lab_pin.sym} 340 140 0 0 {name=p8 sig_type=std_logic lab=VCPACT}
C {devices/lab_pin.sym} 340 320 0 0 {name=p9 sig_type=std_logic lab=VCNACT}
C {devices/lab_pin.sym} 400 90 0 0 {name=p10 sig_type=std_logic lab=V910}
C {devices/iopin.sym} 480 230 2 1 {name=p11 lab=VOUT}
C {devices/gnd.sym} 430 320 0 0 {name=l17 lab=VGND}
C {devices/vdd.sym} 430 140 0 0 {name=l18 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 890 180 0 0 {name=M11
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1050 350 0 0 {name=M14
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
C {devices/vdd.sym} 910 130 0 0 {name=l19 lab=VDD}
C {devices/vdd.sym} 930 180 0 0 {name=l20 lab=VDD}
C {devices/lab_pin.sym} 840 180 0 0 {name=p12 sig_type=std_logic lab=PBIAS}
C {devices/lab_pin.sym} 850 310 0 0 {name=p13 sig_type=std_logic lab=V13}
C {devices/vdd.sym} 930 310 0 0 {name=l21 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 890 310 0 0 {name=M13
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
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 910 360 0 0 {name=l22 lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 1050 250 0 0 {name=M15
L=0.4
W=1.4
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
C {devices/gnd.sym} 1070 400 0 0 {name=l23 lab=VGND}
C {devices/gnd.sym} 1090 350 0 0 {name=l24 lab=VGND}
C {devices/gnd.sym} 1090 250 0 0 {name=l25 lab=VGND}
C {devices/vdd.sym} 1070 200 0 0 {name=l26 lab=VDD}
C {devices/lab_pin.sym} 1110 300 0 1 {name=p15 sig_type=std_logic lab=VCNACT}
C {sky130_fd_pr/pfet_01v8.sym} 890 -140 0 0 {name=M16
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1050 30 0 0 {name=M17
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
C {devices/vdd.sym} 910 -190 0 0 {name=l27 lab=VDD}
C {devices/vdd.sym} 930 -140 0 0 {name=l28 lab=VDD}
C {devices/lab_pin.sym} 840 -140 0 0 {name=p16 sig_type=std_logic lab=PBIAS}
C {devices/lab_pin.sym} 850 -10 0 0 {name=p17 sig_type=std_logic lab=V78}
C {devices/vdd.sym} 930 -10 0 0 {name=l29 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 890 -10 0 0 {name=M18
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
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 910 40 0 0 {name=l30 lab=VGND}
C {sky130_fd_pr/nfet_01v8.sym} 1050 -70 0 0 {name=M19
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
C {devices/gnd.sym} 1070 80 0 0 {name=l31 lab=VGND}
C {devices/gnd.sym} 1090 30 0 0 {name=l32 lab=VGND}
C {devices/gnd.sym} 1090 -70 0 0 {name=l33 lab=VGND}
C {devices/vdd.sym} 1070 -120 0 0 {name=l34 lab=VDD}
C {devices/lab_pin.sym} 1110 -20 0 1 {name=p19 sig_type=std_logic lab=VCPACT}
C {devices/lab_pin.sym} 910 250 0 0 {name=p20 sig_type=std_logic lab=VCNTEMP}
C {devices/lab_pin.sym} 910 -70 0 0 {name=p21 sig_type=std_logic lab=VCPTEMP}
C {devices/iopin.sym} 1010 30 2 0 {name=p14 lab=NBIAS}
C {devices/lab_pin.sym} 1010 350 0 0 {name=p18 sig_type=std_logic lab=NBIAS}
