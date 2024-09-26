** Evaluating CV Hspice
.PARAM Vg=0
.TEMP -40

.OPTION INGOLD=2

** library
.include "./models/N45A/hspice/tt.lib"

** circuit
M0 drain0 gate0 source0 body0 nmos1 w=90n l=45n
** signals
Vdrain0 drain0 0 0.2
Vsource0 source0 0 0
Vbody0 body0 0 0
Vgate0 gate0 0 Vg AC=1

.AC lin 1 1000000.0 1000000.0 SWEEP Vg 0 1 0.1
.print AC Cgg0 = par('I(Vgate0) / (2 * 3.1415926 * 1000000.0) / 1')

.END
