
y
Command: %s
53*	vivadotcl2H
4synth_design -top OV_Sensor_ML -part xc7z020clg484-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 279.613 ; gain = 108.707
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2 
OV_Sensor_ML2default:default2t
^D:/MIZ_SOC/SEASON_03/CH05_AXI_DMA_OV7725_HDMI_702/Miz_ip_lib/OV_Sensor_ML/IPSRC/OV_Sensor_ML.v2default:default2
212default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
cmos_decode2default:default2v
`D:/MIZ_SOC/SEASON_03/CH05_AXI_DMA_OV7725_HDMI_702/Miz_ip_lib/OV_Sensor_ML/IPSRC/cmos_decode_v1.v2default:default2
232default:default8@Z8-638h px� 
_
%s*synth2G
3	Parameter CMOS_FRAME_WAITCNT bound to: 6'b001111 
2default:defaulth px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cmos_decode2default:default2
12default:default2
12default:default2v
`D:/MIZ_SOC/SEASON_03/CH05_AXI_DMA_OV7725_HDMI_702/Miz_ip_lib/OV_Sensor_ML/IPSRC/cmos_decode_v1.v2default:default2
232default:default8@Z8-256h px� 
�
!label required on module instance387*oasys2t
^D:/MIZ_SOC/SEASON_03/CH05_AXI_DMA_OV7725_HDMI_702/Miz_ip_lib/OV_Sensor_ML/IPSRC/OV_Sensor_ML.v2default:default2
702default:default8@Z8-387h px� 
�
synthesizing module '%s'638*oasys2"
count_reset_v12default:default2v
`D:/MIZ_SOC/SEASON_03/CH05_AXI_DMA_OV7725_HDMI_702/Miz_ip_lib/OV_Sensor_ML/IPSRC/count_reset_v1.v2default:default2
232default:default8@Z8-638h px� 
_
%s*synth2G
3	Parameter num bound to: 20'b11111111111111110000 
2default:defaulth px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
count_reset_v12default:default2
22default:default2
12default:default2v
`D:/MIZ_SOC/SEASON_03/CH05_AXI_DMA_OV7725_HDMI_702/Miz_ip_lib/OV_Sensor_ML/IPSRC/count_reset_v1.v2default:default2
232default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
OV_Sensor_ML2default:default2
32default:default2
12default:default2t
^D:/MIZ_SOC/SEASON_03/CH05_AXI_DMA_OV7725_HDMI_702/Miz_ip_lib/OV_Sensor_ML/IPSRC/OV_Sensor_ML.v2default:default2
212default:default8@Z8-256h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
	rgb_o[18]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
	rgb_o[17]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
	rgb_o[16]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[9]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[8]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[0]2default:default2
02default:defaultZ8-3917h px� 
�
%s*synth2�
sFinished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 316.945 ; gain = 146.039
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 316.945 ; gain = 146.039
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
V
%s*synth2>
*Start Loading Part and Timing Information
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
J
%s*synth22
Loading part: xc7z020clg484-1
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 316.945 ; gain = 146.039
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 323.566 ; gain = 152.660
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s*synth2-

Report RTL Partitions: 
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
L
%s*synth24
 Start RTL Component Statistics 
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
K
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px� 
:
%s*synth2"
+---Adders : 
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth px� 
=
%s*synth2%
+---Registers : 
2default:defaulth px� 
Z
%s*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth px� 
Z
%s*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth px� 
Z
%s*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth px� 
9
%s*synth2!
+---Muxes : 
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth px� 
Z
%s*synth2B
.	   4 Input      7 Bit        Muxes := 1     
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
O
%s*synth27
#Finished RTL Component Statistics 
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
Y
%s*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
O
%s*synth27
#Hierarchical RTL Component report 
2default:defaulth px� 
A
%s*synth2)
Module OV_Sensor_ML 
2default:defaulth px� 
K
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px� 
=
%s*synth2%
+---Registers : 
2default:defaulth px� 
Z
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth px� 
@
%s*synth2(
Module cmos_decode 
2default:defaulth px� 
K
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px� 
:
%s*synth2"
+---Adders : 
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth px� 
=
%s*synth2%
+---Registers : 
2default:defaulth px� 
Z
%s*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth px� 
Z
%s*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth px� 
Z
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px� 
9
%s*synth2!
+---Muxes : 
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth px� 
Z
%s*synth2B
.	   4 Input      7 Bit        Muxes := 1     
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth px� 
Z
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth px� 
C
%s*synth2+
Module count_reset_v1 
2default:defaulth px� 
K
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px� 
=
%s*synth2%
+---Registers : 
2default:defaulth px� 
Z
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
[
%s*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
H
%s*synth20
Start Part Resource Summary
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
K
%s*synth23
Finished Part Resource Summary
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 460.797 ; gain = 289.891
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
N
%s*synth26
"Start Cross Boundary Optimization
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
	rgb_o[18]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
	rgb_o[17]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
	rgb_o[16]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[9]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[8]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
OV_Sensor_ML2default:default2
rgb_o[0]2default:default2
02default:defaultZ8-3917h px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Cross Boundary Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 462.074 ; gain = 291.168
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
~Finished Parallel Reinference  : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 462.074 ; gain = 291.168
2default:defaulth px� 
E
%s*synth2-

Report RTL Partitions: 
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
D
%s*synth2,
Start Area Optimization
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
zFinished Area Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Parallel Area Optimization  : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
E
%s*synth2-

Report RTL Partitions: 
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
F
%s*synth2.
Start Timing Optimization
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s*synth2-

Report RTL Partitions: 
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s*synth2-
Start Technology Mapping
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Parallel Technology Mapping Optimization  : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
E
%s*synth2-

Report RTL Partitions: 
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
�
%s*synth2�
�Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
?
%s*synth2'
Start IO Insertion
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
Q
%s*synth29
%Start Flattening Before IO Insertion
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
T
%s*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
H
%s*synth20
Start Final Netlist Cleanup
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
K
%s*synth23
Finished Final Netlist Cleanup
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
D
%s*synth2,

Report Check Netlist: 
2default:defaulth px� 
u
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px� 
u
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px� 
u
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px� 
u
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px� 
u
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
O
%s*synth27
#Start Renaming Generated Instances
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s*synth2-

Report RTL Partitions: 
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
W
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
L
%s*synth24
 Start Rebuilding User Hierarchy
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
K
%s*synth23
Start Renaming Generated Ports
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!Start Handling Custom Attributes
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
J
%s*synth22
Start Renaming Generated Nets
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
D
%s*synth2,

Static Shift Register:
2default:defaulth px� 
�
%s*synth2�
�+-------------+---------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name  | RTL Name                        | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth px� 
�
%s*synth2�
�+-------------+---------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth px� 
�
%s*synth2�
�|OV_Sensor_ML | cmos_decode_u0/rst_n_reg_reg[4] | 6      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth px� 
�
%s*synth2�
�+-------------+---------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
K
%s*synth23
Start Writing Synthesis Report
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
A
%s*synth2)

Report BlackBoxes: 
2default:defaulth px� 
J
%s*synth22
+-+--------------+----------+
2default:defaulth px� 
J
%s*synth22
| |BlackBox name |Instances |
2default:defaulth px� 
J
%s*synth22
+-+--------------+----------+
2default:defaulth px� 
J
%s*synth22
+-+--------------+----------+
2default:defaulth px� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |    21|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    11|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    21|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |     5|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |     4|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |     7|
2default:defaulth px� 
D
%s*synth2,
|9     |SRL16E |     1|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |    53|
2default:defaulth px� 
D
%s*synth2,
|11    |FDSE   |    16|
2default:defaulth px� 
D
%s*synth2,
|12    |IBUF   |    12|
2default:defaulth px� 
D
%s*synth2,
|13    |OBUF   |    28|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s*synth2-

Report Instance Areas: 
2default:defaulth px� 
^
%s*synth2F
2+------+-----------------+---------------+------+
2default:defaulth px� 
^
%s*synth2F
2|      |Instance         |Module         |Cells |
2default:defaulth px� 
^
%s*synth2F
2+------+-----------------+---------------+------+
2default:defaulth px� 
^
%s*synth2F
2|1     |top              |               |   186|
2default:defaulth px� 
^
%s*synth2F
2|2     |  cmos_decode_u0 |cmos_decode    |    82|
2default:defaulth px� 
^
%s*synth2F
2|3     |  nolabel_line70 |count_reset_v1 |    52|
2default:defaulth px� 
^
%s*synth2F
2+------+-----------------+---------------+------+
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
s
%s*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 17 warnings.
2default:defaulth px� 
�
%s*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 480.867 ; gain = 274.039
2default:defaulth px� 
�
%s*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 480.867 ; gain = 309.961
2default:defaulth px� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
172default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
152default:default2
172default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:072default:default2
00:00:082default:default2
540.6172default:default2
341.9572default:defaultZ17-268h px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.010 . Memory (MB): peak = 540.617 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Feb 14 09:44:57 20172default:defaultZ17-206h px� 


End Record