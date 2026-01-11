######################################
Seal Head [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x15
.alias ModelID = 0x15
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
"Seal Head"
BuildTitle:
    String|
""
PartDescription:
    String|
"Funky Big Head (Normal). 
High Defense, great aerial
movement.
Slow in other movements.
One Continuous Jump.
Charge: Slowly moves 
toward its opponent."
RoboBytes:
half[1] |
1200, #Down
byte[22] |
90, | #Defense
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
125, 250, 360, | #Reduced, Unmodified, and Boosted Jump Height
4, 12, 20, | #Reduced, Unmodified, and Boosted Jump Speed
120, 130, 140, | #Reduced, Unmodified, and Boosted Lateral Air Speed
100, 200, 400, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 30, | #Reduced, Unmodified, and Boosted Landing Lag
30, 60, 110, | #Reduced, Unmodified, and Boosted Gravity
48, | #Collision Box Size Related
45, | #Collision Box Size Related
55, | #????
40, | #Hurtbox Size
0 #????
word [8] |
0x91E589F1, 0x935D0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
129, |  #Charge Damage
230, |  #Knockback Velocity
80, |   #Knockback Angle
30, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
50, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
100, |   #Startup Phase Speed
100, |  #Attack Phase Speed
50, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
0, |    #Attack Phase Angle
-32, |  #Recovery Phase Angle
90, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
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
20, |   #Startup Phase Duration (+3 for # of Frames)
22, |   #Attack Phase Duration (+1 for # of Frames)
26, |   #Recovery Phase Duration
100, |   #Startup Phase Speed
70, |  #Attack Phase Speed
55, |   #Recovery Phase Speed
170, |    #Startup Phase Angle
150, |    #Attack Phase Angle
125, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 6, 7, 0, 9, 5   #Stat Line
byte [1] 0  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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
