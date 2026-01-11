######################################
Spitfire [NastyKactus]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1a
.alias ModelID = 0x01
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
"Spitfire"
BuildTitle:
    String|
""
PartDescription:
    String|
"Soaring Jetter (Armor). 
Well-rounded aerial movement.
One fast controlled air dash
with high turning.
Charge: Stands still before
quickly charging opponent."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
100, | #Defense
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
135, 145, 155, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 100, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
60, 70, 80, | #Reduced, Unmodified, and Boosted Run Speed
100, 200, 300, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
200, 250, 350, | #Reduced, Unmodified, and Boosted Jump Height
8, 12, 16, | #Reduced, Unmodified, and Boosted Jump Speed
70, 80, 85, | #Reduced, Unmodified, and Boosted Lateral Air Speed
225, 325, 425, | #Reduced, Unmodified, and Boosted Air Acceleration
8, 12, 16, | #Reduced, Unmodified, and Boosted Landing Lag
85, 125, 165, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
1 #????
word [8] |
0x835F8393, 0x834E0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
1, |    #Invulnerability
2       #Invisibility
half [16] |
100, |  #Charge Damage
400, |  #Knockback Velocity
7, |   #Knockback Angle
10, |   #Homing
30, |   #Startup Phase Duration (+3 for # of Frames)
8, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
350, |  #Attack Phase Speed
0, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
0, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
70, |   #Hitbox Size Related
0, |   #Hitbox Size Related
-20       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
2       #Invisibility
half [16] |
135, |  #Charge Damage
160, |  #Knockback Velocity
75, |   #Knockback Angle
0, |   #Homing
16, |   #Startup Phase Duration (+3 for # of Frames)
8, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
235, |   #Startup Phase Speed
265, |  #Attack Phase Speed
85, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
155, |    #Attack Phase Angle
205, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 5, 3, 5, 2   #Stat Line
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
