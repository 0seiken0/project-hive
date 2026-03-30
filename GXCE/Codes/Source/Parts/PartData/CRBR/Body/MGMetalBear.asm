######################################
Metal Bear [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x07
.alias ModelID = 0x07
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
"Metal Bear"
BuildTitle:
    String|
""
PartDescription:
    String|
"Metal Grappler (Armor)
High Defense and Down. Low 
Ground and Aerial movement.
One horizontal Air Dash.  
Charge: High startup before
charging the opponent."
RoboBytes:
half[1] |
1800, #Down
byte[22] |
80, | #Defense
110, | #Knockback
85, | #Hitstun
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
2, 5, 8, | #Reduced, Unmodified, and Boosted Air Dash Startup
2, 5, 8, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0 #Number of Continuous Jumps
half[3] |
0, 0, 0 #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
10, 15, 20#Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
175, 275, 375, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
50, 60, 70, | #Reduced, Unmodified, and Boosted Run Speed
120, 200, 400, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
95, 190, 285, | #Reduced, Unmodified, and Boosted Jump Height
2, 5, 8, | #Reduced, Unmodified, and Boosted Jump Speed
90, 100, 180, | #Reduced, Unmodified, and Boosted Lateral Air Speed
50, 100, 500, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 30, | #Reduced, Unmodified, and Boosted Landing Lag
75, 150, 225, | #Reduced, Unmodified, and Boosted Gravity
48, | #Collision Box Size Related
40, | #Collision Box Size Related
55, | #????
48, | #Hurtbox Size
1 #????
word [8] |
0x835E8362, 0x834E838B, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, | #Invulnerability
0 #Invisibility
half [16] |
180, | #Charge Damage
440, | #Knockback Velocity
7, | #Knockback Angle
0, | #Homing
15, | #Startup Phase Duration (+3 for # of Frames)
12, | #Attack Phase Duration (+1 for # of Frames)
44, | #Recovery Phase Duration
0, | #Startup Phase Speed
350, | #Attack Phase Speed
80, | #Recovery Phase Speed
0, | #Startup Phase Angle
0, | #Attack Phase Angle
-90, | #Recovery Phase Angle
70, | #Hitbox Size Related
0, | #Hitbox Size Related
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
40, |   #Startup Phase Duration (+3 for # of Frames)
9, |   #Attack Phase Duration (+1 for # of Frames)
3, |   #Recovery Phase Duration
5, |   #Startup Phase Speed
125, |  #Attack Phase Speed
175, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
10, |    #Attack Phase Angle
30, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 9, 9, 1, 3, 10   #Stat Line
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
