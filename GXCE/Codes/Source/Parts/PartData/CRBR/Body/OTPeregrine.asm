######################################
Geezer [Kactus]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0A
.alias ModelID = 0x0B
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
"Geezer ^`"
BuildTitle:
    String|
""
PartDescription:
    String|
"Old Timer (Speed)
Utilizes floaty movement and
six precise air dashes to
evade opposition.
Charge: Rises slightly while
attacking."
RoboBytes:
half[1] |
800, #Down
byte[22] |
125, | #Defense
120, | #Knockback
110, | #Hitstun
1, | #Illegal Toggle
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
1, 3, 5, | #Reduced, Unmodified, and Boosted Air Dash Startup
4, 6, 10, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0    #Number of Continuous Jumps
half[3] |
0, 0, 0  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
6, | #Number of Air Dashes
0, | #SV Air Dash Toggle
-9, | #Air Dash Angle
16, 23, 30    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
75, 150, 180, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
28, 34, 40, | #Reduced, Unmodified, and Boosted Run Speed
132, 220, 400, | #Reduced, Unmodified, and Boosted Ground Acceleration
150, 300, 600, | #Reduced, Unmodified, and Boosted Ground Turning
140, 270, 430, | #Reduced, Unmodified, and Boosted Jump Height
10, 22, 36, | #Reduced, Unmodified, and Boosted Jump Speed
100, 115, 130, | #Reduced, Unmodified, and Boosted Lateral Air Speed
180, 330, 480, | #Reduced, Unmodified, and Boosted Air Acceleration
18, 26, 34, | #Reduced, Unmodified, and Boosted Landing Lag
40, 65, 90, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
0 #????
word [8] |
0x835E8362, 0x834E838B, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
135, |  #Charge Damage
200, |  #Knockback Velocity
45, |   #Knockback Angle
60, |   #Homing
7, |   #Startup Phase Duration (+3 for # of Frames)
17, |   #Attack Phase Duration (+1 for # of Frames)
22, |   #Recovery Phase Duration
30, |   #Startup Phase Speed
40, |  #Attack Phase Speed
25, |   #Recovery Phase Speed
75, |    #Startup Phase Angle
90, |    #Attack Phase Angle
95, |  #Recovery Phase Angle
50, |   #Hitbox Size Related
50, |   #Hitbox Size Related
-20       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
0, |  #Charge Damage
0, |  #Knockback Velocity
0, |   #Knockback Angle
60, |   #Homing
6, |   #Startup Phase Duration (+3 for # of Frames)
11, |   #Attack Phase Duration (+1 for # of Frames)
21, |   #Recovery Phase Duration
130, |   #Startup Phase Speed
105, |  #Attack Phase Speed
100, |   #Recovery Phase Speed
40, |    #Startup Phase Angle
25, |    #Attack Phase Angle
332, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 4, 2, 1, 10, 3   #Stat Line
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
