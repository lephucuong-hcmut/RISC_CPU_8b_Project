
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:072	
517.5272	
124.883Z17-268h px� 
f
Command: %s
53*	vivadotcl25
3synth_design -top RISC_CPU_8b -part xc7z020clg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
8336Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 974.777 ; gain = 453.316
h px� 
�
synthesizing module '%s'%s4497*oasys2
RISC_CPU_8b2
 2N
JE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/RISC_CPU_8b.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Program_Counter2
 2R
NE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Program_counter.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Program_Counter2
 2
02
12R
NE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Program_counter.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Address_Mux2
 2N
JE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Address_Mux.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Address_Mux2
 2
02
12N
JE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Address_Mux.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Memory2
 2I
EE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Memory.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Memory2
 2
02
12I
EE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Memory.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Instruction_Register2
 2W
SE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Instruction_Register.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Instruction_Register2
 2
02
12W
SE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Instruction_Register.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Accumulator2
 2M
IE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Accumlator.v2
228@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Accumulator2
 2
02
12M
IE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Accumlator.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 2F
BE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/ALU.v2
258@Z8-6157h px� 
�
default block is never used226*oasys2F
BE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/ALU.v2
468@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
12F
BE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/ALU.v2
258@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Controller2
 2M
IE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Controller.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Controller2
 2
02
12M
IE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/Controller.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RISC_CPU_8b2
 2
02
12N
JE:/TKVM/RISC_CPU_8bit/project_1/project_1.srcs/sources_1/new/RISC_CPU_8b.v2
238@Z8-6155h px� 
�
%s*synth2v
tFinished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1085.473 ; gain = 564.012
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1085.473 ; gain = 564.012
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z020clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1085.473 ; gain = 564.012
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
Loading part %s157*device2
xc7z020clg400-1Z21-403h px� 
n
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2

ControllerZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_               INST_ADDR |                        000000001 |                             0000
h p
x
� 
y
%s
*synth2a
_              INST_FETCH |                        000000010 |                             0001
h p
x
� 
y
%s
*synth2a
_               INST_LOAD |                        000000100 |                             0010
h p
x
� 
y
%s
*synth2a
_                    IDLE |                        000001000 |                             0011
h p
x
� 
y
%s
*synth2a
_                 OP_ADDR |                        000010000 |                             0100
h p
x
� 
y
%s
*synth2a
_                    STOP |                        000100000 |                             1111
h p
x
� 
y
%s
*synth2a
_                OP_FETCH |                        001000000 |                             0101
h p
x
� 
y
%s
*synth2a
_                  ALU_OP |                        010000000 |                             0110
h p
x
� 
y
%s
*synth2a
_                   STORE |                        100000000 |                             0111
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2

ControllerZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1085.473 ; gain = 564.012
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 1     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
V
%s
*synth2>
<	              256 Bit	(32 X 8 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   9 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   9 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    1 Bit        Muxes := 9     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
Z
$Part: %s does not have CEAM library.966*device2
xc7z020clg400-1Z21-9227h px� 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:24 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
j
%s*synth2R
P+------------+-------------+-----------+----------------------+---------------+
h px� 
k
%s*synth2S
Q|Module Name | RTL Object  | Inference | Size (Depth x Width) | Primitives    | 
h px� 
j
%s*synth2R
P+------------+-------------+-----------+----------------------+---------------+
h px� 
k
%s*synth2S
Q|RISC_CPU_8b | MEM/mem_reg | Implied   | 32 x 8               | RAM32X1S x 8  | 
h px� 
k
%s*synth2S
Q+------------+-------------+-----------+----------------------+---------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:24 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
j
%s
*synth2R
P+------------+-------------+-----------+----------------------+---------------+
h p
x
� 
k
%s
*synth2S
Q|Module Name | RTL Object  | Inference | Size (Depth x Width) | Primitives    | 
h p
x
� 
j
%s
*synth2R
P+------------+-------------+-----------+----------------------+---------------+
h p
x
� 
k
%s
*synth2S
Q|RISC_CPU_8b | MEM/mem_reg | Implied   | 32 x 8               | RAM32X1S x 8  | 
h p
x
� 
k
%s
*synth2S
Q+------------+-------------+-----------+----------------------+---------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:24 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     1|
h px� 
4
%s*synth2
|2     |CARRY4   |     2|
h px� 
4
%s*synth2
|3     |LUT2     |    11|
h px� 
4
%s*synth2
|4     |LUT3     |     3|
h px� 
4
%s*synth2
|5     |LUT4     |     5|
h px� 
4
%s*synth2
|6     |LUT5     |     8|
h px� 
4
%s*synth2
|7     |LUT6     |    19|
h px� 
4
%s*synth2
|8     |RAM32X1S |     8|
h px� 
4
%s*synth2
|9     |FDRE     |    46|
h px� 
4
%s*synth2
|10    |FDSE     |     1|
h px� 
4
%s*synth2
|11    |IBUF     |     2|
h px� 
4
%s*synth2
|12    |OBUF     |     9|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
J
%s
*synth22
0+------+---------+---------------------+------+
h p
x
� 
J
%s
*synth22
0|      |Instance |Module               |Cells |
h p
x
� 
J
%s
*synth22
0+------+---------+---------------------+------+
h p
x
� 
J
%s
*synth22
0|1     |top      |                     |   115|
h p
x
� 
J
%s
*synth22
0|2     |  AC     |Accumulator          |    19|
h p
x
� 
J
%s
*synth22
0|3     |  IR     |Instruction_Register |    29|
h p
x
� 
J
%s
*synth22
0|4     |  MEM    |Memory               |    16|
h p
x
� 
J
%s
*synth22
0|5     |  PC     |Program_Counter      |     9|
h p
x
� 
J
%s
*synth22
0|6     |  alu    |ALU                  |     2|
h p
x
� 
J
%s
*synth22
0|7     |  ctrl   |Controller           |    19|
h p
x
� 
J
%s
*synth22
0+------+---------+---------------------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 1304.188 ; gain = 782.727
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1309.0272
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
10Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1413.5862
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Z
X  A total of 8 instances were transformed.
  RAM32X1S => RAM32X1S (RAMS32): 8 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

8d769455Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322
12
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:192

00:00:302

1413.5862	
896.059Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1413.5862
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2H
FE:/TKVM/RISC_CPU_8bit/project_1/project_1.runs/synth_1/RISC_CPU_8b.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2a
_report_utilization -file RISC_CPU_8b_utilization_synth.rpt -pb RISC_CPU_8b_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Mar 16 19:33:44 2025Z17-206h px� 


End Record