********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Thu Jun 01 09:44:29 2023
* L-Edit Version:		L-Edit Win64 16.30.20150626.05:33:01
*
* Rule Set Name:		
* TDB File Name:		C:\Users\Datis\Desktop\Tamrin Narm\Tamrin1\lib.defs
* PX Command File:	
* Command File:		C:\Users\Datis\Desktop\Tanner Tools v16.3\Process\Generic_250nm\Generic_250nm_Tech\TDB\Rules\Generic_250nm.ext
* Cell Name:			Tamrin
* Write Flat:			NO
********************************************************************************


.lib "C:\Users\Datis\Desktop\Tanner Tools v16.3\Process\Generic_250nm\Generic_250nm_Tech\Generic_250nm.lib" tt
.tran 10p 10n start=0

VDD VDD 0 5

VINA A 0 PULSE (0 5 0 10p 10p 1n 2n)
VINB B 0 PULSE (0 5 0 10p 10p 2n 4n)
VINC C 0 PULSE (0 5 0 10p 10p 4n 8n)
VIND D 0 PULSE (0 5 0 10p 10p 8n 16n)
VINE E 0 PULSE (0 5 0 10p 10p 16n 32n)

.print tran v(A) v(B) v(C) v(D) v(E) v(Out)


****************************************

M1 1 A GND 2 NMOS25 l=5e-007 w=8.75e-007 ad=4.375e-013 as=7.65625e-013 pd=1.875e-006 ps=3.5e-006  $ (-2.875 -2.5 -2.375 -1.625)
M2 GND B 1 2 NMOS25 l=5e-007 w=8.75e-007 ad=4.92188e-013 as=4.375e-013 pd=2e-006 ps=1.875e-006  $ (-1.375 -2.5 -0.875 -1.625)
M3 1 C GND 2 NMOS25 l=5e-007 w=8.75e-007 ad=4.92188e-013 as=4.92188e-013 pd=2e-006 ps=2e-006  $ (0.25 -2.5 0.75 -1.625)
M4 Out E 1 2 NMOS25 l=5e-007 w=8.75e-007 ad=4.92188e-013 as=4.92188e-013 pd=2e-006 ps=2e-006  $ (1.875 -2.5 2.375 -1.625)
M5 1 D Out 2 NMOS25 l=5e-007 w=8.75e-007 ad=7.65625e-013 as=4.92188e-013 pd=3.5e-006 ps=2e-006  $ (3.5 -2.5 4 -1.625)
M6 3 A VDD 4 PMOS25 l=5e-007 w=8.75e-007 ad=4.375e-013 as=7.65625e-013 pd=1.875e-006 ps=3.5e-006  $ (-2.875 2.5 -2.375 3.375)
M7 5 B 3 4 PMOS25 l=5e-007 w=8.75e-007 ad=4.92188e-013 as=4.375e-013 pd=2e-006 ps=1.875e-006  $ (-1.375 2.5 -0.875 3.375)
M8 Out C 5 4 PMOS25 l=5e-007 w=8.75e-007 ad=4.92188e-013 as=4.92188e-013 pd=2e-006 ps=2e-006  $ (0.25 2.5 0.75 3.375)
M9 6 E Out 4 PMOS25 l=5e-007 w=8.75e-007 ad=4.92188e-013 as=4.92188e-013 pd=2e-006 ps=2e-006  $ (1.875 2.5 2.375 3.375)
M10 VDD D 6 4 PMOS25 l=5e-007 w=8.75e-007 ad=7.65625e-013 as=4.92188e-013 pd=3.5e-006 ps=2e-006  $ (3.5 2.5 4 3.375)
* Top level device count
* M(NMOS25)		5
* M(PMOS25)		5
* Number of devices:	10
* Number of nodes:	14

.end
