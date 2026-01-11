######################################
Dolphin Pod X [Project Hive]
######################################
.alias PartType = 0x03
.alias PartBase = 0x25
.alias ModelID = 0x28
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
    .BA<-BuildTitle
PartName:
    String|
"Dolphin Pod X"
BuildTitle:
    String|
""
PartDescription:
    String|
"Pod: Pursues opponent, 
ricochets on walls. Arcs 
over walls when fired 
from the ground.
Two pods, separate. 
Blast: Launches opponent high
diagonally upwards."
RoboBytes:
byte[4] |
00, | #Illegal Toggle
2, | #Pod Count (Max 3)
1, | #Number of Pods fired at once(Max 3)
0x00 #Empty Data?
half [8] |
0, | #Angle between simultaneous pods (Automatically Centered)
90, | #Horizontal Explosion Trigger Radius
90, | #Vertical Explosion Trigger Radius
120, | #Fuse Time
0, | #Angle Pod faces at ground launch
0x0000, | #Empty Data?
0, | #Angle Pod faces at air launch
0x0000 #Empty Data?
byte[4] |
1, | #Homing Toggle
25, | #Roaming Phase Homing
25, | #Locked On Phase Homing
0x00 #Empty Data?
half [13] |
80, | #Roaming Phase Speed
125, | #Locked On Phase Speed
10, | #Roaming Phase Height
10, | #Locked On Phase Height
120, | #Angle for conen of vision for activating lock on phase
348, | #Lock On Range
0, | #Duration of pause for switching between roaming and locked on.
60, | #Initial Ground Launch Angle
30, | #Initial Air Launch Angle
180, | #Initial Ground Launch Speed
200, | #Initial Air Launch Speed
10, | #Initial Ground Launch Duration
0 #Initial Air Launch Duration
byte[4] |
1, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions
1 #Delay between Explosions
half [3] |
5, | #Explosion Expansion Duration
34, | #Explosion Lingering Hitbox Duration
0x0000 #Empty Data?
float [3] |
1.1, | #eExplosion Size after Initial Expansion
1.2, | #Final Explosion Size
0.59 #Explosion Height
half [10] |
32, | #Damage
300, | #Down
240, | #Knockback Velocity
60, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
240, | #Knockback Velocity (Downed)
60, | #Knockback Anlge (Downed)
100, | #On-Hit Gravity (Downed)
0x0000 #Empty Data 
word [14] 0x00000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0000003C, 0x00000001, | 
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3F800000 #Unknown Data
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
MASTERCODE:
PULSE
{
    lis r6, 0x8023
    ori r6, r6, 0xBC70
    mflr r16
    stmw r0, 0(r6)
    li r9, PartType
    li r10, ModelID
    li r11, PartBase
    lis r8, 0x8000
    ori r8, r8, 0x48E0
    mtctr r8
    bctrl
    lmw r0, 0(r6)
    mtlr r16
    blr
}
* E0000000 80008000
