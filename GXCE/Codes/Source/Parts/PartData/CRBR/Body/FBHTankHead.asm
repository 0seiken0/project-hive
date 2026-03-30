######################################
Tank Head [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x17
.alias ModelID = 0x17
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
"Tank Head"
BuildTitle:
    String|
""
PartDescription:
    String|
"Funky Big Head (Speed). 
High Defense, great aerial
movement.
Slow in other movements.
One Continuous Jump.
Charge: Jumps towards 
opponent, clearing walls."
RoboBytes:
half[1] |
1200, #Down
byte[22] |
95, | #Defense
105, | #Knockback
80, | #Hitstun
0, | #Illegal Toggle
150, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
100, | #Gun Damage
100, | #Bomb Damage
100, | #Pod Damage
100, | #Gun Endlag
3, 6, 9, | #Reduced, Unmodified, and Boosted Air Dash Startup
3, 6, 9, | #Reduced, Unmodified, and Boosted Dash Landing Lag
1, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
1    #Number of Continuous Jumps
half[3] |
65, 130, 220  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
0, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
0, 0, 0    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
0, 0, 0, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
40, 55, 70, | #Reduced, Unmodified, and Boosted Run Speed
150, 200, 350, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
135, 260, 370, | #Reduced, Unmodified, and Boosted Jump Height
4, 12, 20, | #Reduced, Unmodified, and Boosted Jump Speed
120, 130, 140, | #Reduced, Unmodified, and Boosted Lateral Air Speed
105, 210, 420, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 30, | #Reduced, Unmodified, and Boosted Landing Lag
30, 60, 110, | #Reduced, Unmodified, and Boosted Gravity
48, | #Collision Box Size Related
45, | #Collision Box Size Related
55, | #????
40, | #Hurtbox Size
0 #????
word [8] |
0x83718362, 0x83768376, 0x838C8358, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
150, |  #Charge Damage
80, |  #Knockback Velocity
80, |   #Knockback Angle
60, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
20, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
225, |   #Startup Phase Speed
153, |  #Attack Phase Speed
20, |   #Recovery Phase Speed
58, |    #Startup Phase Angle
-38, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
80, |   #Hitbox Size Related
25, |   #Hitbox Size Related
-25       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
0, |  #Charge Damage
0, |  #Knockback Velocity
0, |   #Knockback Angle
0, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
18, |   #Attack Phase Duration (+1 for # of Frames)
10, |   #Recovery Phase Duration
145, |   #Startup Phase Speed
105, |  #Attack Phase Speed
100, |   #Recovery Phase Speed
45, |    #Startup Phase Angle
325, |    #Attack Phase Angle
65, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 6, 6, 0, 10, 7   #Stat Line
byte [1] 2  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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
