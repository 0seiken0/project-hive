######################################
Dash Pod [Project Hive]
######################################
.alias PartType = 0x03
.alias PartBase = 0x25
.alias ModelID = 0x25
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
"Dash Pod ^`"
BuildTitle:
    String|
""
PartDescription:
    String|
"Pod: Immediately detonates,
hitting the user.
Blast: Deals no damage, and
knocks the user in the
direction fired."
RoboBytes:
byte[4] |
1, | #Illegal Toggle
1, | #Pod Count (Max 3)
1, | #Number of Pods fired at once(Max 3)
0x00 #Empty Data?
half [8] |
0, | #Angle between simultaneous pods (Automatically Centered)
9000, | #Horizontal Explosion Trigger Radius
9000, | #Vertical Explosion Trigger Radius
1, | #Fuse Time
0, | #Angle Pod faces at ground launch
0x0000, | #Empty Data?
0, | #Angle Pod faces at air launch
0x0000 #Empty Data?
byte[4] |
0, | #Homing Toggle
0, | #Roaming Phase Homing
0, | #Locked On Phase Homing
0x00 #Empty Data?
half [13] |
0, | #Roaming Phase Speed
0, | #Locked On Phase Speed
0, | #Roaming Phase Height
0, | #Locked On Phase Height
160, | #Angle for conen of vision for activating lock on phase
250, | #Lock On Range
0, | #Duration of pause for switching between roaming and locked on.
200, | #Initial Ground Launch Angle
200, | #Initial Air Launch Angle
800, | #Initial Ground Launch Speed
800, | #Initial Air Launch Speed
10, | #Initial Ground Launch Duration
10 #Initial Air Launch Duration
byte[4] |
0, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions
1 #Delay between Explosions
half [3] |
5, | #Explosion Expansion Duration
2, | #Explosion Lingering Hitbox Duration
0x0000 #Empty Data?
float [3] |
1.4, | #eExplosion Size after Initial Expansion
1.4, | #Final Explosion Size
0.6 #Explosion Height
half [10] |
0, | #Damage
400, | #Down
250, | #Knockback Velocity
10, | #Knockback Angle
8, | #Hitstun
100, | #On-Hit Gravity
50, | #Knockback Velocity (Downed)
10, | #Knockback Anlge (Downed)
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
