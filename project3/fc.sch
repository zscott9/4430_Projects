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
N 570 -200 570 -160 {
lab=#net8}
N 460 -170 570 -170 {
lab=#net8}
N 510 -130 530 -130 {
lab=nbias}
N 570 -100 570 -90 {
lab=gnd}
N 570 -230 590 -230 {
lab=gnd}
N 570 -310 590 -310 {
lab=gnd}
N 570 -130 580 -130 {
lab=gnd}
N 580 -130 580 -90 {
lab=gnd}
N 570 -90 580 -90 {
lab=gnd}
N 570 -280 570 -260 {
lab=#net9}
N 570 -360 570 -340 {
lab=vdd}
N 530 -310 530 -270 {
lab=#net9}
N 530 -270 570 -270 {
lab=#net9}
N 530 -230 530 -180 {
lab=#net8}
N 530 -180 570 -180 {
lab=#net8}
N 490 -10 490 20 {
lab=#net7}
N 280 -50 280 -10 {
lab=#net7}
N 490 -80 490 -70 {
lab=vdd}
N 280 -10 280 0 {
lab=#net7}
N 280 0 490 0 {
lab=#net7}
N 440 50 450 50 {
lab=#net7}
N 530 -40 550 -40 {
lab=pbias}
N 440 20 440 50 {
lab=#net7}
N 440 20 490 20 {
lab=#net7}
N 490 80 490 100 {
lab=#net10}
N 450 90 490 90 {
lab=#net10}
N 450 90 450 130 {
lab=#net10}
N 490 160 490 170 {
lab=gnd}
N 490 130 510 130 {
lab=gnd}
N 490 50 510 50 {
lab=gnd}
N 470 -40 490 -40 {
lab=vdd}
N 470 -70 470 -40 {
lab=vdd}
N 470 -70 490 -70 {
lab=vdd}
N 510 130 510 170 {
lab=gnd}
N 490 170 510 170 {
lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} 240 70 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -10 -170 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 50 -80 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 240 -50 0 1 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 330 -50 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -150 0 1 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -240 0 1 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 330 -240 0 0 {name=M12
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
C {sky130_fd_pr/pfet_01v8.sym} 550 -310 0 0 {name=M13
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
C {sky130_fd_pr/pfet_01v8.sym} 550 -230 0 0 {name=M14
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
C {sky130_fd_pr/nfet_01v8.sym} 550 -130 0 0 {name=M15
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
C {devices/gnd.sym} 570 -90 0 0 {name=l14 lab=gnd}
C {devices/vdd.sym} 570 -360 0 0 {name=l15 lab=vdd}
C {devices/gnd.sym} 590 -230 0 0 {name=l16 lab=gnd}
C {devices/gnd.sym} 590 -310 0 0 {name=l17 lab=gnd}
C {devices/lab_pin.sym} -120 -80 0 0 {name=p7 sig_type=std_logic lab=vin1}
C {devices/lab_pin.sym} 510 -130 0 0 {name=p8 sig_type=std_logic lab=nbias}
C {sky130_fd_pr/nfet_01v8.sym} 470 50 0 0 {name=M16
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
C {sky130_fd_pr/pfet_01v8.sym} 510 -40 0 1 {name=M17
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
C {devices/vdd.sym} 490 -80 0 0 {name=l18 lab=vdd}
C {devices/lab_pin.sym} 510 -130 0 0 {name=p9 sig_type=std_logic lab=nbias}
C {devices/lab_pin.sym} 550 -40 0 1 {name=p10 sig_type=std_logic lab=pbias}
C {sky130_fd_pr/nfet_01v8.sym} 470 130 0 0 {name=M18
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
C {devices/gnd.sym} 490 170 0 0 {name=l19 lab=gnd}
C {devices/gnd.sym} 510 50 0 0 {name=l21 lab=gnd}
