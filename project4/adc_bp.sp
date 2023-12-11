* Algorithmic ADC
.include C:\Users\ba-pe\Documents\4430_Projects\project4\models.sp

* SnH
X0 snh_in clk_sample clk_samplen V+2 V-2 vdd gnd snh
* Bootstrap
X1 resist vdd gnd pbias nbias sky130_hilas_Bootstrap01
R1 resist gnd 100k
* Comparator
X2 comp_in vref comp_out vdd gnd nbias comparator
C1 comp_in gnd 500f
* Inverter - For 1-bit dac complement input
X3 comp_out_inv comp_out vdd vdd sky130_fd_pr__pfet_01v8 w=2.4 l=0.4
X4 comp_out_inv comp_out gnd gnd sky130_fd_pr__nfet_01v8 w=2.4 l=0.4
* 1 bit DAC
X5 vref comp_out comp_out_inv dacout vdd gnd ibitdac
* X5 vref comp_out comp_out_inv dacout vdd gnd summation

* Subtractor
* n.g. ACCURACY HIGHLY DEPENDENT ON BIAS CURRENT
* HIGHER BIAS CURRENT -> MORE ACCURACY
* EDIT BIAS CURRENT TRANSISTORS IN SUBCKT
* X6 vinp_left vinn_right no1 vdd gnd nbias subtractor
X6 vinp_left no1 fc_pbias vdd gnd fc_nbias no1 fc
X7 gnd vinn_right fc_pbias vdd gnd fc_nbias no1 fc

C5 no1 gnd 10f
V13 vinp_left gnd 0.7
V14 vinn_right gnd 0.6
V15 fc_pbias gnd 0.99
V16 fc_nbias gnd 0.689


* Charge Pump Voltage Doubler
C3 vct vcb 10f
C4 vo gnd 10f
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