######################################
Pepper [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0B
.alias ModelID = 0x12
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
"Pepper (PH)"
BuildTitle:
    String|
" (PH)"
PartDescription:
    String|
"Little Dasher (Armor) 
High Grounded ability, 
low Defense, and low Down.
One Horizontal Air Dash. 
Charge: Charges forwards
before hopping backwards."
RoboBytes:
half[1] |
600, #Down
byte[22] |
115, | #Defense
120, | #Knockback
100, | #Hitstun
0, | #Illegal Toggle
120, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
100, | #Gun Damage
100, | #Bomb Damage
100, | #Pod Damage
100, | #Gun Endlag
4, 8, 12, | #Reduced, Unmodified, and Boosted Air Dash Startup
4, 8, 12, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0 #Number of Continuous Jumps
half[3] |
0, 0, 0 #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
5, 10, 15#Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
150, 300, 450, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
70, 85, 100, | #Reduced, Unmodified, and Boosted Run Speed
200, 350, 500, | #Reduced, Unmodified, and Boosted Ground Acceleration
45, 90, 180, | #Reduced, Unmodified, and Boosted Ground Turning
130, 210, 280, | #Reduced, Unmodified, and Boosted Jump Height
1, 3, 5, | #Reduced, Unmodified, and Boosted Jump Speed
80, 100, 140, | #Reduced, Unmodified, and Boosted Lateral Air Speed
170, 340, 720, | #Reduced, Unmodified, and Boosted Air Acceleration
6, 12, 20, | #Reduced, Unmodified, and Boosted Landing Lag
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
130, | #Charge Damage
180, | #Knockback Velocity
85, | #Knockback Angle
15, | #Homing
10, | #Startup Phase Duration (+3 for # of Frames)
11, | #Attack Phase Duration (+1 for # of Frames)
20, | #Recovery Phase Duration
0, | #Startup Phase Speed
200, | #Attack Phase Speed
130, | #Recovery Phase Speed
0, | #Startup Phase Angle
0, | #Attack Phase Angle
150, | #Recovery Phase Angle
40, | #Hitbox Size Related
30, | #Hitbox Size Related
-40       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
1       #Invisibility
half [16] |
135, |  #Charge Damage
200, |  #Knockback Velocity
105, |   #Knockback Angle
0, |   #Homing
20, |   #Startup Phase Duration (+3 for # of Frames)
15, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
110, |   #Startup Phase Speed
120, |  #Attack Phase Speed
40, |   #Recovery Phase Speed
120, |    #Startup Phase Angle
-160, |    #Attack Phase Angle
-120, |  #Recovery Phase Angle
70, |   #Hitbox Size Related
10, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 3, 3, 3, 8, 9   #Stat Line
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
