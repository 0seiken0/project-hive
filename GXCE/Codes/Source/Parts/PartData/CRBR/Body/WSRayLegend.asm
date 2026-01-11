######################################
Klimt [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x18
.alias ModelID = 0x18
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
"Klimt"
BuildTitle:
    String|
""
PartDescription:
    String|
"Wild Soldier (Normal)
Good Defense and Down, quick
jumps and high Gravity.
Two quick downwards 
Air-Dashes with low landing 
lag.
Charge: Ascends upwards
then charges forwards"
RoboBytes:
half[1] |
1500, #Down
byte[22] |
90, | #Defense
100, | #Knockback
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
5, 10, 15, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0    #Number of Continuous Jumps
half[3] |
0, 0, 0  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
13, | #Air Dash Angle
4, 8, 12    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
255, 285, 315, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
45, 60, 75, | #Reduced, Unmodified, and Boosted Run Speed
100, 150, 300, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
170, 310, 450, | #Reduced, Unmodified, and Boosted Jump Height
4, 8, 10, | #Reduced, Unmodified, and Boosted Jump Speed
80, 100, 170, | #Reduced, Unmodified, and Boosted Lateral Air Speed
50, 100, 500, | #Reduced, Unmodified, and Boosted Air Acceleration
5, 10, 15, | #Reduced, Unmodified, and Boosted Landing Lag
140, 190, 230, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
0 #????
word [8] |
0x9056837A, 0x83808389, 0x926E8FE3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
115, |  #Charge Damage
150, |  #Knockback Velocity
30, |   #Knockback Angle
10, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
30, |   #Attack Phase Duration (+1 for # of Frames)
0, |   #Recovery Phase Duration
250, |   #Startup Phase Speed
125, |  #Attack Phase Speed
0, |   #Recovery Phase Speed
90, |    #Startup Phase Angle
0, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
60, |   #Hitbox Size Related
20, |   #Hitbox Size Related
-40       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
1       #Invisibility
half [16] |
0, |  #Charge Damage
0, |  #Knockback Velocity
0, |   #Knockback Angle
0, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
19, |   #Attack Phase Duration (+1 for # of Frames)
24, |   #Recovery Phase Duration
255, |   #Startup Phase Speed
185, |  #Attack Phase Speed
125, |   #Recovery Phase Speed
150, |    #Startup Phase Angle
345, |    #Attack Phase Angle
325, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 8, 7, 1, 5, 4   #Stat Line
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
