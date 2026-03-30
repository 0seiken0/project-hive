######################################
Shrike [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0A
.alias ModelID = 0x0A
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
"Shrike"
BuildTitle:
    String|
""
PartDescription:
    String|
"Little Raider (Armor). 
High run speed, low Defense 
and Down.
Three Continuous Jumps. 
Charge: SHORYUKEN."
RoboBytes:
half[1] |
600, #Down
byte[22] |
115, | #Defense
120, | #Knockback
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
4, 8, 12, | #Reduced, Unmodified, and Boosted Dash Landing Lag
1, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
3 #Number of Continuous Jumps
half[3] |
70, 140, 190 #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
0, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
0, 0, 0#Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
0, 0, 0, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
85, 95, 105, | #Reduced, Unmodified, and Boosted Run Speed
200, 300, 500, | #Reduced, Unmodified, and Boosted Ground Acceleration
40, 80, 160, | #Reduced, Unmodified, and Boosted Ground Turning
130, 210, 280, | #Reduced, Unmodified, and Boosted Jump Height
2, 4, 6, | #Reduced, Unmodified, and Boosted Jump Speed
90, 100, 140, | #Reduced, Unmodified, and Boosted Lateral Air Speed
170, 340, 720, | #Reduced, Unmodified, and Boosted Air Acceleration
6, 12, 18, | #Reduced, Unmodified, and Boosted Landing Lag
50, 100, 175, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
120, | #Collision Box Size Related
40, | #????
18, | #Hurtbox Size
0 #????
word [8] |
0x8FE38FB8, 0x93AA93CB, 0x82AB0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, | #Invulnerability
0 #Invisibility
half [16] |
115, | #Charge Damage
160, | #Knockback Velocity
70, | #Knockback Angle
40, | #Homing
5, | #Startup Phase Duration (+3 for # of Frames)
30, | #Attack Phase Duration (+1 for # of Frames)
5, | #Recovery Phase Duration
200, | #Startup Phase Speed
128, | #Attack Phase Speed
80, | #Recovery Phase Speed
0, | #Startup Phase Angle
37, | #Attack Phase Angle
-60, | #Recovery Phase Angle
35, | #Hitbox Size Related
30, | #Hitbox Size Related
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
19, |   #Startup Phase Duration (+3 for # of Frames)
7, |   #Attack Phase Duration (+1 for # of Frames)
8, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
115, |  #Attack Phase Speed
75, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
95, |    #Attack Phase Angle
95, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 3, 2, 8, 5, 4   #Stat Line
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
