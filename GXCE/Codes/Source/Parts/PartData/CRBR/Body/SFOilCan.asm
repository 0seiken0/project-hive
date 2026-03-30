Oil Can [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x19
.alias ModelID = 0x19
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
"Oil Can ^`"
BuildTitle:
    String|
""
PartDescription:
    String|
"Shining Fighter (Power)
The one and only. A Shining
Fighter model with increased
offense, but poor defense and
mobility.
Collision: Flails wildly
towards its opponent."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
105, | #Defense
115, | #Knockback
100, | #Hitstun
1, | #Illegal Toggle
150, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
110, | #Gun Damage
110, | #Bomb Damage
110, | #Pod Damage
110, | #Gun Endlag
4, 6, 8, | #Reduced, Unmodified, and Boosted Air Dash Startup
5, 10, 15, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
100, 160, 264  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
5, 10, 15    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
250, 340, 430, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
60, 75, 90, | #Reduced, Unmodified, and Boosted Run Speed
150, 200, 300, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
125, 250, 375, | #Reduced, Unmodified, and Boosted Jump Height
4, 8, 12, | #Reduced, Unmodified, and Boosted Jump Speed
90, 110, 180, | #Reduced, Unmodified, and Boosted Lateral Air Speed
50, 100, 400, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 30, | #Reduced, Unmodified, and Boosted Landing Lag
50, 100, 150, | #Reduced, Unmodified, and Boosted Gravity
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
160, |  #Charge Damage
150, |  #Knockback Velocity
30, |   #Knockback Angle
10, |   #Homing
8, |   #Startup Phase Duration (+3 for # of Frames)
20, |   #Attack Phase Duration (+1 for # of Frames)
20, |   #Recovery Phase Duration
80, |   #Startup Phase Speed
120, |  #Attack Phase Speed
80, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
0, |    #Attack Phase Angle
-20, |  #Recovery Phase Angle
65, |   #Hitbox Size Related
25, |   #Hitbox Size Related
0       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
126, |  #Charge Damage
180, |  #Knockback Velocity
80, |   #Knockback Angle
0, |   #Homing
15, |   #Startup Phase Duration (+3 for # of Frames)
15, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
180, |   #Startup Phase Speed
180, |  #Attack Phase Speed
180, |   #Recovery Phase Speed
120, |    #Startup Phase Angle
-150, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
40, |   #Hitbox Size Related
20, |   #Hitbox Size Related
-50       #Hitbox Size Related
ExtraBytes:
byte [5] 6, 3, 5, 5, 8   #Stat Line
byte [1] 3  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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