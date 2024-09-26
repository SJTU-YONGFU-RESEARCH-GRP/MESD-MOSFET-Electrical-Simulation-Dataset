** Evaluating ID-VG HSpice
.PARAM Vg=0
.TEMP -40
.DC Vg 0 1 0.1

** library
.include "./models/N45A/hspice/tt.lib"

** circuit
M0 drain0 gate0 source0 body0 nmos1 w=90n l=45n
** signals
Vdrain0 drain0 0 0.2
Vsource0 source0 0 0
Vbody0 body0 0 0
Vgate0 gate0 0 Vg

.print -I(Vdrain0) V(source0) V(gate0)

.END
