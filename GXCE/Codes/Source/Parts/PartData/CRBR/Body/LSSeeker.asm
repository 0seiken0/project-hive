######################################
Seeker [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x13
.alias ModelID = 0x13
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
"Seeker"
BuildTitle:
    String|
""
PartDescription:
    String|
"Lightning Sky (Armor). 
Can attack and turn during its
one long air dash. 
Relatively limited in other 
movements.
Charge: Ascends slowly as it 
charges towards its foe."
RoboBytes:
half[1] |
600, #Down
byte[22] |
115, | #Defense
120, | #Knockback
100, | #Hitstun
0, | #Illegal Toggle
170, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
100, | #Gun Damage
100, | #Bomb Damage
100, | #Pod Damage
110, | #Gun Endlag
4, 8, 12, | #Reduced, Unmodified, and Boosted Air Dash Startup
22, 26, 30, | #Reduced, Unmodified, and Boosted Dash Landing Lag
2, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0    #Number of Continuous Jumps
half[3] |
0, 0, 0  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
55, 95, 120    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
120, 140, 160, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 25, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
50, 65, 80, | #Reduced, Unmodified, and Boosted Run Speed
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
150, 250, 400, | #Reduced, Unmodified, and Boosted Jump Height
2, 4, 6, | #Reduced, Unmodified, and Boosted Jump Speed
85, 95, 115, | #Reduced, Unmodified, and Boosted Lateral Air Speed
100, 150, 300, | #Reduced, Unmodified, and Boosted Air Acceleration
5, 10, 15, | #Reduced, Unmodified, and Boosted Landing Lag
75, 150, 225, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
72, | #Collision Box Size Related
40, | #????
28, | #Hurtbox Size
0 #????
word [8] |
0x91CC8EE8, 0x97A08C95, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, | #Invulnerability
0 #Invisibility
half [16] |
160, | #Charge Damage
200, | #Knockback Velocity
75, | #Knockback Angle
40, | #Homing
10, | #Startup Phase Duration (+3 for # of Frames)
60, | #Attack Phase Duration (+1 for # of Frames)
20, | #Recovery Phase Duration
94, | #Startup Phase Speed
94, | #Attack Phase Speed
85, | #Recovery Phase Speed
0, | #Startup Phase Angle
15, | #Attack Phase Angle
-20, | #Recovery Phase Angle
45, | #Hitbox Size Related
10, | #Hitbox Size Related
0       #Hitbox Size Related
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
20, |   #Startup Phase Duration (+3 for # of Frames)
15, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
45, |   #Startup Phase Speed
95, |  #Attack Phase Speed
105, |   #Recovery Phase Speed
180, |    #Startup Phase Angle
35, |    #Attack Phase Angle
10, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 3, 2, 2, 8, 8   #Stat Line
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
