
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2"
xc7a35t-cpg2362default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2"
xc7a35t-cpg2362default:defaultZ17-349h px� 
y
Command: %s
53*	vivadotcl2H
4report_drc (run_mandatory_drcs) for: incr_eco_checks2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
w
Command: %s
53*	vivadotcl2F
2report_drc (run_mandatory_drcs) for: placer_checks2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1141.6292default:default2
0.0002default:defaultZ17-268h px� 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1666c3de4
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.018 . Memory (MB): peak = 1141.629 ; gain = 0.0002default:defaulth px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1141.6292default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
[Partially locked IO Bus is found. Following components of the IO Bus %s are not locked: %s
87*place2
in12default:default2�
�
 '<MSGMETA::BEGIN::BLOCK>in1[31]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[30]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[29]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[28]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[27]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[26]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[25]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[24]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[23]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[22]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[21]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[20]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[19]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[18]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[17]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[16]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[15]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[14]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[13]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[12]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[11]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[10]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[9]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[8]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[7]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[6]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[5]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in1[4]<MSGMETA::END>' "
in1[31]2 ':'  '"
in1[30]:'  '"
in1[29]:'  '"
in1[28]:'  '"
in1[27]:'  '"
in1[26]:'  '"
in1[25]:'  '"
in1[24]:'  '"
in1[23]:'  '"
in1[22]:'  '"
in1[21]:'  '"
in1[20]:'  '"
in1[19]:'  '"
in1[18]:'  '"
in1[17]:'  '"
in1[16]:'  '"
in1[15]:'  '"
in1[14]:'  '"
in1[13]:'  '"
in1[12]:'  '"
in1[11]:'  '"
in1[10]:'  '"
in1[9]:'  '"
in1[8]:'  '"
in1[7]:'  '"
in1[6]:'  '"
in1[5]:'  '"
in1[4]:' 2default:default8Z30-87h px� 
�
[Partially locked IO Bus is found. Following components of the IO Bus %s are not locked: %s
87*place2
in22default:default2�
�
 '<MSGMETA::BEGIN::BLOCK>in2[31]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[30]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[29]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[28]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[27]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[26]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[25]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[24]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[23]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[22]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[21]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[20]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[19]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[18]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[17]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[16]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[15]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[14]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[13]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[12]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[11]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[10]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[9]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[8]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[7]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[6]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[5]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>in2[4]<MSGMETA::END>' "
in2[31]2 ':'  '"
in2[30]:'  '"
in2[29]:'  '"
in2[28]:'  '"
in2[27]:'  '"
in2[26]:'  '"
in2[25]:'  '"
in2[24]:'  '"
in2[23]:'  '"
in2[22]:'  '"
in2[21]:'  '"
in2[20]:'  '"
in2[19]:'  '"
in2[18]:'  '"
in2[17]:'  '"
in2[16]:'  '"
in2[15]:'  '"
in2[14]:'  '"
in2[13]:'  '"
in2[12]:'  '"
in2[11]:'  '"
in2[10]:'  '"
in2[9]:'  '"
in2[8]:'  '"
in2[7]:'  '"
in2[6]:'  '"
in2[5]:'  '"
in2[4]:' 2default:default8Z30-87h px� 
�
[Partially locked IO Bus is found. Following components of the IO Bus %s are not locked: %s
87*place2
out12default:default2�
�
 '<MSGMETA::BEGIN::BLOCK>out1[31]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[30]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[29]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[28]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[27]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[26]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[25]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[24]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[23]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[22]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[21]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[20]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[19]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[18]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[17]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[16]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[15]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[14]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[13]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[12]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[11]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[10]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[9]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[8]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[7]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[6]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[5]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>out1[4]<MSGMETA::END>' "
out1[31]2 ':'  '"
out1[30]:'  '"
out1[29]:'  '"
out1[28]:'  '"
out1[27]:'  '"
out1[26]:'  '"
out1[25]:'  '"
out1[24]:'  '"
out1[23]:'  '"
out1[22]:'  '"
out1[21]:'  '"
out1[20]:'  '"
out1[19]:'  '"
out1[18]:'  '"
out1[17]:'  '"
out1[16]:'  '"
out1[15]:'  '"
out1[14]:'  '"
out1[13]:'  '"
out1[12]:'  '"
out1[11]:'  '"
out1[10]:'  '"
out1[9]:'  '"
out1[8]:'  '"
out1[7]:'  '"
out1[6]:'  '"
out1[5]:'  '"
out1[4]:' 2default:default8Z30-87h px� 
�%
�IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following Groups of I/O terminals have not sufficient capacity: %s
58*place2
562default:default2
322default:default2�#
�
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 32 sites available on device, but needs 56 sites.
	Term: <MSGMETA::BEGIN::BLOCK>in1[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[31]<MSGMETA::END>

"�
in1[4]2�
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 32 sites available on device, but needs 56 sites.
	Term: :
	Term: "
in1[5]:
	Term: "
in1[6]:
	Term: "
in1[7]:
	Term: "
in1[8]:
	Term: "
in1[9]:
	Term: "
in1[10]:
	Term: "
in1[11]:
	Term: "
in1[12]:
	Term: "
in1[13]:
	Term: "
in1[14]:
	Term: "
in1[15]:
	Term: "
in1[16]:
	Term: "
in1[17]:
	Term: "
in1[18]:
	Term: "
in1[19]:
	Term: "
in1[20]:
	Term: "
in1[21]:
	Term: "
in1[22]:
	Term: "
in1[23]:
	Term: "
in1[24]:
	Term: "
in1[25]:
	Term: "
in1[26]:
	Term: "
in1[27]:
	Term: "
in1[28]:
	Term: "
in1[29]:
	Term: "
in1[30]:
	Term: "
in1[31]:
	Term: "
in2[4]:
	Term: "
in2[5]:
	Term: "
in2[6]:
	Term: "
in2[7]:
	Term: "
in2[8]:
	Term: "
in2[9]:
	Term: "
in2[10]:
	Term: "
in2[11]:
	Term: "
in2[12]:
	Term: "
in2[13]:
	Term: "
in2[14]:
	Term: "
in2[15]:
	Term: "
in2[16]:
	Term: "
in2[17]:
	Term: "
in2[18]:
	Term: "
in2[19]:
	Term: "
in2[20]:
	Term: "
in2[21]:
	Term: "
in2[22]:
	Term: "
in2[23]:
	Term: "
in2[24]:
	Term: "
in2[25]:
	Term: "
in2[26]:
	Term: "
in2[27]:
	Term: "
in2[28]:
	Term: "
in2[29]:
	Term: "
in2[30]:
	Term: "
in2[31]:

2default:default8Z30-58h px� 
�%
�IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following Groups of I/O terminals have not sufficient capacity: %s
58*place2
842default:default2
322default:default2�#
�
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 32 sites available on device, but needs 56 sites.
	Term: <MSGMETA::BEGIN::BLOCK>in1[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in1[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>in2[31]<MSGMETA::END>

"�
in1[4]2�
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 32 sites available on device, but needs 56 sites.
	Term: :
	Term: "
in1[5]:
	Term: "
in1[6]:
	Term: "
in1[7]:
	Term: "
in1[8]:
	Term: "
in1[9]:
	Term: "
in1[10]:
	Term: "
in1[11]:
	Term: "
in1[12]:
	Term: "
in1[13]:
	Term: "
in1[14]:
	Term: "
in1[15]:
	Term: "
in1[16]:
	Term: "
in1[17]:
	Term: "
in1[18]:
	Term: "
in1[19]:
	Term: "
in1[20]:
	Term: "
in1[21]:
	Term: "
in1[22]:
	Term: "
in1[23]:
	Term: "
in1[24]:
	Term: "
in1[25]:
	Term: "
in1[26]:
	Term: "
in1[27]:
	Term: "
in1[28]:
	Term: "
in1[29]:
	Term: "
in1[30]:
	Term: "
in1[31]:
	Term: "
in2[4]:
	Term: "
in2[5]:
	Term: "
in2[6]:
	Term: "
in2[7]:
	Term: "
in2[8]:
	Term: "
in2[9]:
	Term: "
in2[10]:
	Term: "
in2[11]:
	Term: "
in2[12]:
	Term: "
in2[13]:
	Term: "
in2[14]:
	Term: "
in2[15]:
	Term: "
in2[16]:
	Term: "
in2[17]:
	Term: "
in2[18]:
	Term: "
in2[19]:
	Term: "
in2[20]:
	Term: "
in2[21]:
	Term: "
in2[22]:
	Term: "
in2[23]:
	Term: "
in2[24]:
	Term: "
in2[25]:
	Term: "
in2[26]:
	Term: "
in2[27]:
	Term: "
in2[28]:
	Term: "
in2[29]:
	Term: "
in2[30]:
	Term: "
in2[31]:

2default:default8Z30-58h px� 
�'
'IO placer failed to find a solution
%s
374*place2�&
�&Below is the partial placement that can be analyzed to see if any constraint modifications will make the IO placement problem easier to solve.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                     IO Placement : Bank Stats                                                                           |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
| Id | Pins  | Terms |                               Standards                                |                IDelayCtrls               |  VREF  |  VCCO  |   VR   | DCI |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|  0 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 14 |    50 |    12 | LVCMOS33(12)                                                           |                                          |        |  +3.30 |    YES |     |
| 16 |    12 |     0 |                                                                        |                                          |        |        |        |     |
| 34 |    24 |     4 | LVCMOS33(4)                                                            |                                          |        |  +3.30 |    YES |     |
| 35 |    20 |     0 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|    |   106 |    16 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+

IO Placement:
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| BankId |             Terminal | Standard        | Site                 | Pin                  | Attributes           |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 14     | in1[0]               | LVCMOS33        | IOB_X0Y7             | W15                  |                      |
|        | in1[1]               | LVCMOS33        | IOB_X0Y8             | V15                  |                      |
|        | in1[2]               | LVCMOS33        | IOB_X0Y5             | W14                  |                      |
|        | in1[3]               | LVCMOS33        | IOB_X0Y6             | W13                  |                      |
|        | in2[0]               | LVCMOS33        | IOB_X0Y11            | V17                  | *                    |
|        | in2[1]               | LVCMOS33        | IOB_X0Y12            | V16                  |                      |
|        | in2[2]               | LVCMOS33        | IOB_X0Y10            | W16                  |                      |
|        | in2[3]               | LVCMOS33        | IOB_X0Y9             | W17                  |                      |
|        | out1[0]              | LVCMOS33        | IOB_X0Y3             | U16                  |                      |
|        | out1[1]              | LVCMOS33        | IOB_X0Y43            | E19                  |                      |
|        | out1[2]              | LVCMOS33        | IOB_X0Y20            | U19                  |                      |
|        | out1[3]              | LVCMOS33        | IOB_X0Y19            | V19                  |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 34     | control[0]           | LVCMOS33        | IOB_X1Y39            | W2                   |                      |
|        | control[1]           | LVCMOS33        | IOB_X1Y43            | U1                   |                      |
|        | control[2]           | LVCMOS33        | IOB_X1Y44            | T1                   |                      |
|        | control[3]           | LVCMOS33        | IOB_X1Y48            | R2                   |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
2default:defaultZ30-374h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1666c3de4
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1141.629 ; gain = 0.0002default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 1666c3de4
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1141.629 ; gain = 0.0002default:defaulth px� 
�
�Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px� 
>
)Ending Placer Task | Checksum: 1666c3de4
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1141.629 ; gain = 0.0002default:defaulth px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
362default:default2
42default:default2
02default:default2
52default:defaultZ4-41h px� 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px� 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Apr  4 18:40:35 20192default:defaultZ17-206h px� 


End Record