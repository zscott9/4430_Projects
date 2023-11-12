v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -140 70 -110 {
lab=#net1}
N 10 -140 70 -140 {
lab=#net1}
N -60 -140 -60 -110 {
lab=#net1}
N -60 -140 -10 -140 {
lab=#net1}
N 10 -220 10 -200 {
lab=vdd}
N 220 -280 220 -270 {
lab=vdd}
N 350 -280 350 -270 {
lab=vdd}
N 350 -210 350 -180 {
lab=#net2}
N 220 -210 220 -180 {
lab=#net3}
N 220 -120 220 -80 {
lab=#net4}
N 350 -120 350 -80 {
lab=vout}
N 220 -20 220 40 {
lab=#net5}
N 350 -20 350 40 {
lab=#net6}
N 70 -50 70 10 {
lab=#net6}
N 70 10 350 10 {
lab=#net6}
N -60 -50 -60 20 {
lab=#net5}
N -40 20 220 20 {
lab=#net5}
N 220 100 220 110 {
lab=gnd}
N 350 100 350 110 {
lab=gnd}
N 210 70 220 70 {
lab=gnd}
N 350 70 360 70 {
lab=gnd}
N 210 -50 220 -50 {
lab=gnd}
N 350 -50 360 -50 {
lab=gnd}
N 260 -50 310 -50 {
lab=#net7}
N 280 70 310 70 {
lab=nbias}
N 260 70 280 70 {
lab=nbias}
N -120 -80 -100 -80 {
lab=vin1}
N 20 -80 30 -80 {
lab=vin2}
N -50 -170 -30 -170 {
lab=pbias}
N -60 -80 -50 -80 {
lab=vdd}
N 70 -80 80 -80 {
lab=vdd}
N -50 -80 -40 -80 {
lab=vdd}
N 80 -80 90 -80 {
lab=vdd}
N -10 -140 10 -140 {
lab=#net1}
N -60 20 -40 20 {
lab=#net5}
N 10 -170 30 -170 {
lab=vdd}
N 30 -210 30 -170 {
lab=vdd}
N 10 -210 30 -210 {
lab=vdd}
N 200 -240 220 -240 {
lab=vdd}
N 200 -270 200 -240 {
lab=vdd}
N 200 -270 220 -270 {
lab=vdd}
N 350 -240 370 -240 {
lab=vdd}
N 370 -270 370 -240 {
lab=vdd}
N 350 -270 370 -270 {
lab=vdd}
N 260 -240 310 -240 {
lab=#net4}
N 260 -150 310 -150 {
lab=#net8}
N 350 -150 380 -150 {
lab=vdd}
N 190 -150 220 -150 {
lab=vdd}
N 280 -240 280 -100 {
lab=#net4}
N 300 70 300 100 {
lab=nbias}
N 290 -170 460 -170 {
lab=#net8}
N 290 -170 290 -150 {
lab=#net8}
N 220 -100 280 -100 {
lab=#net4}
N 350 -100 370 -100 {
lab=vout}
N 640 -200 640 -160 {
lab=#net8}
N 530 -170 640 -170 {
lab=#net8}
N 580 -130 600 -130 {
lab=nbias}
N 640 -100 640 -90 {
lab=gnd}
N 640 -230 660 -230 {
lab=gnd}
N 640 -310 660 -310 {
lab=gnd}
N 640 -130 650 -130 {
lab=gnd}
N 650 -130 650 -90 {
lab=gnd}
N 640 -90 650 -90 {
lab=gnd}
N 640 -280 640 -260 {
lab=#net9}
N 640 -360 640 -340 {
lab=vdd}
N 600 -310 600 -270 {
lab=#net9}
N 600 -270 640 -270 {
lab=#net9}
N 600 -230 600 -180 {
lab=#net8}
N 600 -180 640 -180 {
lab=#net8}
N 560 -10 560 20 {
lab=#net7}
N 280 -50 280 -10 {
lab=#net7}
N 560 -80 560 -70 {
lab=vdd}
N 280 -10 280 0 {
lab=#net7}
N 280 0 490 0 {
lab=#net7}
N 510 50 520 50 {
lab=#net7}
N 600 -40 620 -40 {
lab=pbias}
N 510 20 510 50 {
lab=#net7}
N 510 20 560 20 {
lab=#net7}
N 560 80 560 100 {
lab=#net10}
N 520 90 560 90 {
lab=#net10}
N 520 90 520 130 {
lab=#net10}
N 560 160 560 170 {
lab=gnd}
N 560 130 580 130 {
lab=gnd}
N 560 50 580 50 {
lab=gnd}
N 540 -40 560 -40 {
lab=vdd}
N 540 -70 540 -40 {
lab=vdd}
N 540 -70 560 -70 {
lab=vdd}
N 580 130 580 170 {
lab=gnd}
N 560 170 580 170 {
lab=gnd}
N 460 -170 530 -170 {}
N 490 0 560 0 {}
C {sky130_fd_pr/pfet_01v8.sym} -80 -80 0 0 {name=M2
L=1.0
W=18.0
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
C {sky130_fd_pr/pfet_01v8.sym} 50 -80 0 0 {name=M3
L=1.0
W=18
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
C {sky130_fd_pr/pfet_01v8.sym} 240 70 0 1 {name=M4
L=2
W=6.0
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
C {devices/vdd.sym} 10 -220 0 0 {name=l1 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 330 70 0 0 {name=M5
L=2.0
W=6.0
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
C {sky130_fd_pr/nfet_01v8.sym} 240 -50 0 1 {name=M6
L=2.0
W=3.0
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -150 0 1 {name=M7
L=2.0
W=3.0
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
C {sky130_fd_pr/pfet_01v8.sym} 330 -150 0 0 {name=M10
L=2.0
W=3.0
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -240 0 1 {name=M8
L=2.0
W=3.0
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
C {sky130_fd_pr/pfet_01v8.sym} 330 -240 0 0 {name=M11
L=2.0
W=3.0
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
C {devices/vdd.sym} 220 -280 0 0 {name=l2 lab=vdd}
C {devices/vdd.sym} 350 -280 0 0 {name=l3 lab=vdd}
C {devices/gnd.sym} 220 110 0 0 {name=l4 lab=gnd}
C {devices/gnd.sym} 350 110 0 0 {name=l5 lab=gnd}
C {devices/gnd.sym} 210 70 0 0 {name=l6 lab=gnd}
C {devices/gnd.sym} 360 70 0 0 {name=l7 lab=gnd}
C {devices/gnd.sym} 210 -50 0 0 {name=l8 lab=gnd}
C {devices/gnd.sym} 360 -50 0 0 {name=l9 lab=gnd}
C {devices/lab_pin.sym} -50 -170 0 0 {name=p1 sig_type=std_logic lab=pbias}
C {devices/vdd.sym} -40 -80 0 0 {name=l10 lab=vdd}
C {devices/vdd.sym} 90 -80 0 0 {name=l11 lab=vdd}
C {devices/lab_pin.sym} -120 -80 0 0 {name=p3 sig_type=std_logic lab=vin1}
C {devices/lab_pin.sym} 20 -80 0 0 {name=p4 sig_type=std_logic lab=vin2}
C {devices/vdd.sym} 190 -150 0 0 {name=l12 lab=vdd}
C {devices/vdd.sym} 380 -150 0 0 {name=l13 lab=vdd}
C {devices/lab_pin.sym} 300 100 0 0 {name=p2 sig_type=std_logic lab=nbias}
C {devices/lab_pin.sym} -120 -80 0 0 {name=p5 sig_type=std_logic lab=vin1}
C {devices/lab_pin.sym} 370 -100 0 1 {name=p6 sig_type=std_logic lab=vout}
C {sky130_fd_pr/pfet_01v8.sym} 620 -310 0 0 {name=M12
L=2.0
W=3.0
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
C {sky130_fd_pr/pfet_01v8.sym} 620 -230 0 0 {name=M13
L=2.0
W=3.0
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -130 0 0 {name=M14
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
C {devices/gnd.sym} 640 -90 0 0 {name=l14 lab=gnd}
C {devices/vdd.sym} 640 -360 0 0 {name=l15 lab=vdd}
C {devices/gnd.sym} 660 -230 0 0 {name=l16 lab=gnd}
C {devices/gnd.sym} 660 -310 0 0 {name=l17 lab=gnd}
C {devices/lab_pin.sym} -120 -80 0 0 {name=p7 sig_type=std_logic lab=vin1}
C {devices/lab_pin.sym} 580 -130 0 0 {name=p8 sig_type=std_logic lab=nbias}
C {sky130_fd_pr/nfet_01v8.sym} 540 50 0 0 {name=M16
L=2.0
W=3.0
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
C {sky130_fd_pr/pfet_01v8.sym} 580 -40 0 1 {name=M15
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
C {devices/vdd.sym} 560 -80 0 0 {name=l18 lab=vdd}
C {devices/lab_pin.sym} 580 -130 0 0 {name=p9 sig_type=std_logic lab=nbias}
C {devices/lab_pin.sym} 620 -40 0 1 {name=p10 sig_type=std_logic lab=pbias}
C {sky130_fd_pr/nfet_01v8.sym} 540 130 0 0 {name=M17
L=2.0
W=3.0
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
C {devices/gnd.sym} 560 170 0 0 {name=l19 lab=gnd}
C {devices/gnd.sym} 580 50 0 0 {name=l21 lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} -10 -170 0 0 {name=M1
L=0.4
W=6.0
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
C {sky130_fd_pr/nfet_01v8.sym} 330 -50 0 0 {name=M9
L=2.0
W=3.0
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
