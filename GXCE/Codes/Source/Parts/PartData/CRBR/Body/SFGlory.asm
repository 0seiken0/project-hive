######################################
Glory [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x02
.alias ModelID = 0x02
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
"Glory (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Shining Fighter (Speed) 
Well-balanced aerial and 
grounded play.  
Two quick horizontal Air 
Dashes. 
Charge: Darts forward and 
uppercuts the target"
RoboBytes:
half[1] |
1200, #Down
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
3, 5, 7, | #Reduced, Unmodified, and Boosted Air Dash Startup
5, 10, 15, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0    #Number of Continuous Jumps
half[3] |
0, 0, 0  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
5, 10, 15    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
250, 340, 430, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
70, 85, 100, | #Reduced, Unmodified, and Boosted Run Speed
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
1 #????
word [8] |
0x82BD82BE, 0x82CC8FB8, 0x97B48C9D, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, | #Invulnerability
0 #Invisibility
half [16] |
150, | #Charge Damage
220, | #Knockback Velocity
75, | #Knockback Angle
40, | #Homing
10, | #Startup Phase Duration (+3 for # of Frames)
19, | #Attack Phase Duration (+1 for # of Frames)
16, | #Recovery Phase Duration
155, | #Startup Phase Speed
160, | #Attack Phase Speed
20, | #Recovery Phase Speed
0, | #Startup Phase Angle
60, | #Attack Phase Angle
0, | #Recovery Phase Angle
50, | #Hitbox Size Related
30, | #Hitbox Size Related
-30       #Hitbox Size Related
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
5, |   #Startup Phase Duration (+3 for # of Frames)
14, |   #Attack Phase Duration (+1 for # of Frames)
7, |   #Recovery Phase Duration
140, |   #Startup Phase Speed
110, |  #Attack Phase Speed
60, |   #Recovery Phase Speed
50, |    #Startup Phase Angle
40, |    #Attack Phase Angle
20, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 6, 4, 6, 5, 7   #Stat Line
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
