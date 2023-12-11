* Algorithmic ADC
.include C:\Users\ber20\hilas_shared\4430_Projects\project4\models.sp

* SnH
X0 snh_in clk_sample clk_samplen V+2 V-2 vdd gnd snh
* Bootstrap
X1 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
R1 resist gnd 100k
* Comparator
X2 comp_in vref comp_out vdd gnd nbias comparator
C1 comp_in gnd 1p
* Inverter - For 1-bit dac complement input
X3 comp_out_inv comp_out vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X4 comp_out_inv comp_out gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
* 1 bit DAC
X5 vref comp_out comp_out_inv dacout vdd gnd ibitdac
* X5 vref comp_out comp_out_inv dacout vdd gnd summation
* Cap. Switching Subtractor
* Cap has to be large enough, otherwise voltage won't go to correct value if difference is small
C2 vcap vcapb 100p
* Switches - essentially spdt that switch between the two inputs and the single output/gnd
X14 comp_in clk_amp vcap gnd sky130_fd_pr__nfet_01v8
X15 comp_in clk_ampn vcap vdd sky130_fd_pr__pfet_01v8
X16 dacout clk_amp vcapb gnd sky130_fd_pr__nfet_01v8
X17 dacout clk_ampn vcapb vdd sky130_fd_pr__pfet_01v8
X18 vx clk_ampn vcap gnd sky130_fd_pr__nfet_01v8
X19 vx clk_amp vcap vdd sky130_fd_pr__pfet_01v8
X20 vcapb clk_ampn gnd gnd sky130_fd_pr__nfet_01v8
X21 vcapb clk_amp gnd vdd sky130_fd_pr__pfet_01v8

* Non inverting op amp with psuedo resistors
XU1 vx vxd vdd gnd vxd level2 Avol=1Meg GBW=10Meg Slew=10Meg Ilimit=25m Rail=0 Vos=0 En=0 Enk=0 In=0 Ink=0 Rin=500Meg
* X22 div1 div1 vn vn sky130_fd_pr__nfet_01v8
* X23 div1 div1 gnd gnd sky130_fd_pr__nfet_01v8
* X24 div2 div2 vn vn sky130_fd_pr__nfet_01v8
* X25 div2 div2 vo vo sky130_fd_pr__nfet_01v8
.lib UniversalOpAmp2.lib

* Charge Pump Voltage Doubler
C3 vct vcb 100p
C4 vo gnd 1p
X22 vxd clk_doublen vct gnd sky130_fd_pr__nfet_01v8
X23 vo clk_double vct gnd sky130_fd_pr__nfet_01v8
X24 vcb clk_doublen gnd gnd sky130_fd_pr__nfet_01v8
X25 vcb clk_double vxd gnd sky130_fd_pr__nfet_01v8


* Sample switch
X9 V+1 clk_sample snh_in gnd sky130_fd_pr__nfet_01v8
X10 V+1 clk_samplen snh_in vdd sky130_fd_pr__pfet_01v8
* Amplify Switch
X11 V-2 clk_amp comp_in gnd sky130_fd_pr__nfet_01v8
X12 V-2 clk_ampn comp_in vdd sky130_fd_pr__pfet_01v8

* Clocks
V1 clk_sample gnd PULSE(0 3 0 0.1n 0.1n 2u 120u)
V2 clk_samplen gnd PULSE(3 0 0 0.1n 0.1n 2u 120u)
V3 clk_amp gnd PULSE(0 3 3u 0.1n 0.1n 5u 30u)
V4 clk_ampn gnd PULSE(3 0 3u 0.1n 0.1n 5u 30u)
V5 clk_double gnd PULSE(0 3 9u 0.1n 0.1n 4u 30u)
V6 clk_doublen gnd PULSE(3 0 9u 0.1n 0.1n 4u 30u)


* Additional Sources
V9 vdd gnd 1.8
V10 V+1 gnd SINE(0.6 0.2 5000 1u)

* Voltage divider
X7 vdd vdd vref vref sky130_fd_pr__nfet_01v8 w=0.8 l=0.5
X8 vref vdd gnd gnd sky130_fd_pr__nfet_01v8 w=0.8 l=1.8

* Additional Models
.model test NMOS  (level=12, kp=0.00030207, Vto=0.56 Gamma=0.55708, Phi=0.5, Is=4.27e-24)
.model test1 PMOS(KP=0.00007986, Vto=-0.9, Gamma=0.656924, Phi=0.5, Is=9.5876e-24, level=12 )

* Sim commands
.tran 200u