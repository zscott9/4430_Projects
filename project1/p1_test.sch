v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1380 -1120 1410 -1120 { lab=vin}
N 1450 -1180 1450 -1150 { lab=vdd}
N 1450 -1120 1500 -1120 { lab=GND}
N 1500 -1120 1500 -1110 { lab=GND}
C {devices/code_shown.sym} 1640 -1120 0 0 {name=SPICE only_toplevel=false value="
.model MyMOSFET NMOS(Level=12 KP=.00029 Vto=0.58 Is=1.84e-14 Gamma=0.4 Phi=0.6 Lambda=0.0588)
"
}
C {devices/lab_pin.sym} 1380 -1120 0 0 {name=l2 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 1450 -1090 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1450 -1180 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/nmos4.sym} 1430 -1120 0 0 {M1 Nd Nd Ns gnd model=MyMOSFET W=1500e-9 L = 1500e-9}
C {devices/gnd.sym} 1500 -1110 0 0 {name=l8 lab=GND}
