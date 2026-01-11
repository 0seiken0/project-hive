######################################
Vulcan [NastyKactus]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0C
.alias ModelID = 0x0C
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
"Vulcan"
BuildTitle:
    String|
""
PartDescription:
    String|
"Soaring Jetter (Normal). 
Well-rounded aerial movement. 
One fast controlled air dash
with high turning.
Charge: Dives towards
opponent then ascends."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
105, | #Defense
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
8, 12, 16, | #Reduced, Unmodified, and Boosted Dash Landing Lag
2, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0 #Number of Continuous Jumps
half[3] |
0, 0, 0 #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
0, | #SV Air Dash Toggle
15, | #Air Dash Angle
30, 40, 55#Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
140, 150, 160, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 100, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
65, 75, 85, | #Reduced, Unmodified, and Boosted Run Speed
100, 200, 300, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
200, 250, 350, | #Reduced, Unmodified, and Boosted Jump Height
8, 12, 16, | #Reduced, Unmodified, and Boosted Jump Speed
70, 80, 85, | #Reduced, Unmodified, and Boosted Lateral Air Speed
250, 350, 450, | #Reduced, Unmodified, and Boosted Air Acceleration
8, 12, 16, | #Reduced, Unmodified, and Boosted Landing Lag
85, 125, 165, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
72, | #Collision Box Size Related
40, | #????
28, | #Hurtbox Size
0 #????
word [8] |
0x82BF82D1, 0x93AA93CB, 0x82AB0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
6, | #Invulnerability
0 #Invisibility
half [16] |
115, | #Charge Damage
175, | #Knockback Velocity
80, | #Knockback Angle
15, | #Homing
7, | #Startup Phase Duration (+3 for # of Frames)
10, | #Attack Phase Duration (+1 for # of Frames)
20, | #Recovery Phase Duration
300, | #Startup Phase Speed
250, | #Attack Phase Speed
75, | #Recovery Phase Speed
90, | #Startup Phase Angle
-35, | #Attack Phase Angle
75, | #Recovery Phase Angle
70, |   #Hitbox Size Related
60, |   #Hitbox Size Related
-30       #Hitbox Size Related
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
25, |   #Startup Phase Duration (+3 for # of Frames)
7, |   #Attack Phase Duration (+1 for # of Frames)
16, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
210, |  #Attack Phase Speed
45, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
90, |    #Attack Phase Angle
90, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 4, 4, 6, 4   #Stat Line
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
