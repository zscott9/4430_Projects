* C:\Users\ber20\hilas_shared\4430_Projects\project4\sample_and_hold2.asc
V10 +1V8 0 1.8
M21 N012 N010 +1V8 +1V8 test1 l=1200n w=800000n
M22 N012 V-1 N018 +1V8 test1 l=1600n w=146000n
M24 N016 N020 0 0 test l=1600n w=50000n
M25 N018 N020 0 0 test l=1600n w=50000n
M26 N002 N014 N016 0 test l=1600n w=300000n
M27 Vout1 N014 N018 0 test l=1600n w=300000n
M28 N007 N004 N002 +1V8 test1 l=1600n w=300000n
M31 +1V8 N002 N007 +1V8 test1 l=1600n w=300000n
M32 N008 N004 Vout1 +1V8 test1 l=1600n w=300000n
M33 +1V8 N002 N008 +1V8 test1 l=1600n w=300000n
V14 N010 0 0.95
V15 N020 0 0.6
V20 N004 0 0.65
V17 N014 0 0.9
M23 N012 V+1 N016 +1V8 test1 l=1600n w=146000n
M1 N011 N009 +1V8 +1V8 test1 l=1200n w=800000n
M2 N011 V-2 N017 +1V8 test1 l=1600n w=146000n
M3 N015 N019 0 0 test l=1600n w=50000n
M4 N017 N019 0 0 test l=1600n w=50000n
M5 N001 N013 N015 0 test l=1600n w=300000n
M6 V-2 N013 N017 0 test l=1600n w=300000n
M7 N005 N003 N001 +1V8 test1 l=1600n w=300000n
M8 +1V8 N001 N005 +1V8 test1 l=1600n w=300000n
M9 N006 N003 V-2 +1V8 test1 l=1600n w=300000n
M10 +1V8 N001 N006 +1V8 test1 l=1600n w=300000n
V1 N009 0 0.95
V2 N019 0 0.6
V3 N003 0 0.65
V4 N013 0 0.9
M11 N011 V+2 N015 +1V8 test1 l=1600n w=146000n
C1 V-2 0 0.1p
M12 Vout1 Clock2 V-1 0 test l=400n w=800n
M13 V-1 Clock1 Vout1 +1V8 test1 l=400n w=800n
M14 V-2 Clock1 V-1 0 test l=400n w=800n
M15 V-1 Clock2 V-2 +1V8 test1 l=400n w=800n
M16 V+2 Clock1 Vout1 0 test l=400n w=800n
M17 Vout1 Clock2 V+2 +1V8 test1 l=400n w=800n
C2 V+2 0 1p
V5 Clock1 0 PULSE(0 3 0 0.1n 0.1n 100n 200n)
V6 Clock2 0 PULSE(3 0 0 0.1n 0.1n 100n 200n)
V7 V+1 0 SINE(0.6 0.4 5000 0)
.model NMOS NMOS
.model PMOS PMOS
.lib C:\Users\ber20\AppData\Local\LTspice\lib\cmp\standard.mos
.model test NMOS  (level=12, kp=0.00030207, Vto=0.56 Gamma=0.55708, Phi=0.5, Is=4.27e-24)
.model test1 PMOS(KP=0.00007986, Vto=-0.9, Gamma=0.656924, Phi=0.5, Is=9.5876e-24, level=12 )
.tran 100u
.backanno
.end
