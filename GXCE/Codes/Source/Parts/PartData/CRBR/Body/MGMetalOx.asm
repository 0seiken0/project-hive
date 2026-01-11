######################################
Metal Ox [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x08
.alias ModelID = 0x08
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
"Metal Ox"
BuildTitle:
    String|
""
PartDescription:
    String|
"Metal Grappler (Speed)
High Defense and Down. Low 
Ground and Aerial movement.
One horizontal Air Dash. 
Charge: Slowly charges
towards opponent, clearing
walls."
RoboBytes:
half[1] |
1800, #Down
byte[22] |
90, | #Defense
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
225, 325, 425, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
60, 70, 80, | #Reduced, Unmodified, and Boosted Run Speed
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
0x837B8366, 0x83428376, 0x838C8358, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, | #Invulnerability
0 #Invisibility
half [16] |
150, | #Charge Damage
210, | #Knockback Velocity
115, | #Knockback Angle
60, | #Homing
15, | #Startup Phase Duration (+3 for # of Frames)
63, | #Attack Phase Duration (+1 for # of Frames)
34, | #Recovery Phase Duration
107, | #Startup Phase Speed
98, | #Attack Phase Speed
80, | #Recovery Phase Speed
56, | #Startup Phase Angle
-10, | #Attack Phase Angle
-90, | #Recovery Phase Angle
75, | #Hitbox Size Related
30, | #Hitbox Size Related
-30       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
0, |  #Charge Damage
0, |  #Knockback Velocity
0, |   #Knockback Angle
0, |   #Homing
28, |   #Startup Phase Duration (+3 for # of Frames)
28, |   #Attack Phase Duration (+1 for # of Frames)
20, |   #Recovery Phase Duration
65, |   #Startup Phase Speed
100, |  #Attack Phase Speed
95, |   #Recovery Phase Speed
110, |    #Startup Phase Angle
195, |    #Attack Phase Angle
225, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 9, 7, 3, 5, 7   #Stat Line
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
