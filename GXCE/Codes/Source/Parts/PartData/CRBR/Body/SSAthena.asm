######################################
Athena [NastyKactus]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1D
.alias ModelID = 0x1D
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
"Athena (Kactus)"
BuildTitle:
    String|
" (Kactus)"
PartDescription:
    String|
"Sassy Stunner (Normal) 
Perfectly agile while 
airborne. High and fast jumps.
Four gradual downwards 
air dashes. 
Charge: Charges quickly
towards target before moving
backwards."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
105, | #Defense
110, | #Knockback
100, | #Hitstun
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
2, 4, 6, | #Reduced, Unmodified, and Boosted Air Dash Startup
4, 8, 12, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0    #Number of Continuous Jumps
half[3] |
0, 0, 0  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
4, | #Number of Air Dashes
0, | #SV Air Dash Toggle
7, | #Air Dash Angle
10, 15, 20    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
120, 170, 220, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
60, 70, 80, | #Reduced, Unmodified, and Boosted Run Speed
80, 160, 320, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
170, 320, 420, | #Reduced, Unmodified, and Boosted Jump Height
10, 15, 20, | #Reduced, Unmodified, and Boosted Jump Speed
70, 80, 100, | #Reduced, Unmodified, and Boosted Lateral Air Speed
2000, 3000, 5000, | #Reduced, Unmodified, and Boosted Air Acceleration
6, 12, 18, | #Reduced, Unmodified, and Boosted Landing Lag
70, 120, 170, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
1 #????
word [8] |
0x8386838A, 0x83479547, 0x8F5282E8, 0x82500000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
100, |  #Charge Damage
100, |  #Knockback Velocity
80, |   #Knockback Angle
20, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
10, |   #Attack Phase Duration (+1 for # of Frames)
20, |   #Recovery Phase Duration
80, |   #Startup Phase Speed
200, |  #Attack Phase Speed
150, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
0, |    #Attack Phase Angle
185, |  #Recovery Phase Angle
40, |   #Hitbox Size Related
20, |   #Hitbox Size Related
0       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
10, |    #Invulnerability
0       #Invisibility
half [16] |
0, |  #Charge Damage
0, |  #Knockback Velocity
0, |   #Knockback Angle
0, |   #Homing
15, |   #Startup Phase Duration (+3 for # of Frames)
20, |   #Attack Phase Duration (+1 for # of Frames)
10, |   #Recovery Phase Duration
160, |   #Startup Phase Speed
100, |  #Attack Phase Speed
190, |   #Recovery Phase Speed
130, |    #Startup Phase Angle
250, |    #Attack Phase Angle
25, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 4, 3, 8, 5   #Stat Line
byte [1] 0    #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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
