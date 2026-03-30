######################################
Vulture Pod B [Project Hive]
######################################
.alias PartType = 0x03
.alias PartBase = 0x10
.alias ModelID = 0x0F
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
"Vulture Pod B ^`"
BuildTitle:
    String|
""
PartDescription:
    String|
"Pod: Hangs high in the
air and hovers over the
opponent. One pod.
Blast: High lingering, 
knocks opponent sideways."
RoboBytes:
byte[4] |
01, | #Illegal Toggle
1, | #Pod Count (Max 3)
1, | #Number of Pods fired at once(Max 3)
0x00 #Empty Data?
half [8] |
0, | #Angle between simultaneous pods (Automatically Centered)
135, | #Horizontal Explosion Trigger Radius
200, | #Vertical Explosion Trigger Radius
230, | #Fuse Time
0, | #Angle Pod faces at ground launch
0x0000, | #Empty Data?
0, | #Angle Pod faces at air launch
0x0000 #Empty Data?
byte[4] |
1, | #Homing Toggle
20, | #Roaming Phase Homing
45, | #Locked On Phase Homing
0x00 #Empty Data?
half [13] |
75, | #Roaming Phase Speed
40, | #Locked On Phase Speed
355, | #Roaming Phase Height
340, | #Locked On Phase Height
110, | #Angle for conen of vision for activating lock on phase
300, | #Lock On Range
1, | #Duration of pause for switching between roaming and locked on.
60, | #Initial Ground Launch Angle
-20, | #Initial Air Launch Angle
75, | #Initial Ground Launch Speed
125, | #Initial Air Launch Speed
15, | #Initial Ground Launch Duration
10 #Initial Air Launch Duration
byte[4] |
0, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
130, | #Pod Size
1, | #Number of Explosions
1 #Delay between Explosions
half [3] |
10, | #Explosion Expansion Duration
100, | #Explosion Lingering Hitbox Duration
0x0000 #Empty Data?
float [3] |
1.215, | #eExplosion Size after Initial Expansion
1.4, | #Final Explosion Size
0.54 #Explosion Height
half [10] |
39, | #Damage
300, | #Down
80, | #Knockback Velocity
50, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
50, | #Knockback Anlge (Downed)
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
