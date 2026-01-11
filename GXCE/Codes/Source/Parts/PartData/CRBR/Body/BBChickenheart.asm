######################################
Chickenheart [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x21
.alias ModelID = 0x21
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
"Chickenheart"
BuildTitle:
    String|
""
PartDescription:
    String|
"Burning Beast (Normal)
High jump height and speed.
One downwards Stealth Dash
that phases through Gun
Projectiles.
Charges: Jumps and dives
towards opponent, ascending
afterwards."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
100, | #Defense
110, | #Knockback
90, | #Hitstun
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
4, 8, 12, | #Reduced, Unmodified, and Boosted Air Dash Startup
3, 6, 9, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0    #Number of Continuous Jumps
half[3] |
0, 0, 0  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
1, | #SV Air Dash Toggle
15, | #Air Dash Angle
10, 15, 20    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
200, 260, 320, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
39, 65, 70, | #Reduced, Unmodified, and Boosted Run Speed
120, 200, 400, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
170, 300, 450, | #Reduced, Unmodified, and Boosted Jump Height
1, 4, 8, | #Reduced, Unmodified, and Boosted Jump Speed
95, 110, 125, | #Reduced, Unmodified, and Boosted Lateral Air Speed
75, 150, 300, | #Reduced, Unmodified, and Boosted Air Acceleration
3, 6, 9, | #Reduced, Unmodified, and Boosted Landing Lag
75, 150, 225, | #Reduced, Unmodified, and Boosted Gravity
48, | #Collision Box Size Related
40, | #Collision Box Size Related
55, | #????
48, | #Hurtbox Size
1 #????
word [8] |
0x9056837A, 0x83808389, 0x926E8FE3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
120, |  #Charge Damage
150, |  #Knockback Velocity
50, |   #Knockback Angle
20, |   #Homing
14, |   #Startup Phase Duration (+3 for # of Frames)
10, |   #Attack Phase Duration (+1 for # of Frames)
5, |   #Recovery Phase Duration
200, |   #Startup Phase Speed
320, |  #Attack Phase Speed
200, |   #Recovery Phase Speed
70, |    #Startup Phase Angle
-50, |    #Attack Phase Angle
70, |  #Recovery Phase Angle
60, |   #Hitbox Size Related
30, |   #Hitbox Size Related
-20       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
9, |    #Invulnerability
0       #Invisibility
half [16] |
0, |  #Charge Damage
0, |  #Knockback Velocity
0, |   #Knockback Angle
0, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
12, |   #Attack Phase Duration (+1 for # of Frames)
4, |   #Recovery Phase Duration
265, |   #Startup Phase Speed
225, |  #Attack Phase Speed
200, |   #Recovery Phase Speed
110, |    #Startup Phase Angle
250, |    #Attack Phase Angle
110, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 5, 2, 7, 4   #Stat Line
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
