######################################
Buggy [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x10
.alias ModelID = 0x10
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
"Buggy"
BuildTitle:
    String|
""
PartDescription:
    String|
"Trick Flyer (Armor). 
Extremely agile while airborne. 
Slow on the ground. 
Three slightly upward 
horizontal Air Dashes.
Charge: Teleports behind 
opponent, attacks while 
moving backwards."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
100, | #Defense
120, | #Knockback
110, | #Hitstun
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
3, 5, 10, | #Reduced, Unmodified, and Boosted Air Dash Startup
6, 12, 18, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0 #Number of Continuous Jumps
half[3] |
0, 0, 0 #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
3, | #Number of Air Dashes
0, | #SV Air Dash Toggle
251, | #Air Dash Angle
2, 5, 8#Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
300, 400, 500, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
50, 65, 80, | #Reduced, Unmodified, and Boosted Run Speed
75, 150, 300, | #Reduced, Unmodified, and Boosted Ground Acceleration
75, 150, 300, | #Reduced, Unmodified, and Boosted Ground Turning
95, 195, 295, | #Reduced, Unmodified, and Boosted Jump Height
5, 10, 15, | #Reduced, Unmodified, and Boosted Jump Speed
90, 100, 120, | #Reduced, Unmodified, and Boosted Lateral Air Speed
925, 1425, 2925, | #Reduced, Unmodified, and Boosted Air Acceleration
6, 12, 18, | #Reduced, Unmodified, and Boosted Landing Lag
50, 100, 180, | #Reduced, Unmodified, and Boosted Gravity
40, | #Collision Box Size Related
50, | #Collision Box Size Related
45, | #????
50, | #Hurtbox Size
1 #????
word [8] |
0x8368838A, 0x834C8362, 0x834E0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
3, | #Invulnerability
1 #Invisibility
half [16] |
150, | #Charge Damage
240, | #Knockback Velocity
90, | #Knockback Angle
156, | #Homing
8, | #Startup Phase Duration (+3 for # of Frames)
45, | #Attack Phase Duration (+1 for # of Frames)
34, | #Recovery Phase Duration
450, | #Startup Phase Speed
80, | #Attack Phase Speed
80, | #Recovery Phase Speed
20, | #Startup Phase Angle
-135, | #Attack Phase Angle
-90, | #Recovery Phase Angle
40, | #Hitbox Size Related
65476, | #Hitbox Size Related
-80       #Hitbox Size Related
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
7, |   #Startup Phase Duration (+3 for # of Frames)
21, |   #Attack Phase Duration (+1 for # of Frames)
26, |   #Recovery Phase Duration
275, |   #Startup Phase Speed
65, |  #Attack Phase Speed
55, |   #Recovery Phase Speed
150, |    #Startup Phase Angle
210, |    #Attack Phase Angle
210, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 5, 2, 7, 7   #Stat Line
byte [1] 1  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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
