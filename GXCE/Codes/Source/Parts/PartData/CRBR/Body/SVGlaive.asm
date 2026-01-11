######################################
Glaive [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0D
.alias ModelID = 0x0D
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
"Glaive"
BuildTitle:
    String|
""
PartDescription:
    String|
"Strike Vanisher (Armor). 
Three Stealth Dashes that 
Phase through Gun Projectiles.
Low jump height.
Charge: Rises quickly towards 
opponent, then drifts backward."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
100, | #Defense
100, | #Knockback
120, | #Hitstun
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
5, 12, 19, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0 #Number of Continuous Jumps
half[3] |
0, 0, 0 #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
3, | #Number of Air Dashes
1, | #SV Air Dash Toggle
255, | #Air Dash Angle
6, 12, 16#Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
100, 200, 300, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
60, 80, 95, | #Reduced, Unmodified, and Boosted Run Speed
90, 150, 240, | #Reduced, Unmodified, and Boosted Ground Acceleration
80, 160, 320, | #Reduced, Unmodified, and Boosted Ground Turning
70, 140, 210, | #Reduced, Unmodified, and Boosted Jump Height
4, 8, 16, | #Reduced, Unmodified, and Boosted Jump Speed
100, 120, 150, | #Reduced, Unmodified, and Boosted Lateral Air Speed
100, 200, 400, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 15, 20, | #Reduced, Unmodified, and Boosted Landing Lag
40, 80, 120, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
1 #????
word [8] |
0x83848343, 0x836F8F52, 0x82E882A0, 0x82B00000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, | #Invulnerability
0 #Invisibility
half [16] |
125, | #Charge Damage
180, | #Knockback Velocity
60, | #Knockback Angle
10, | #Homing
6, | #Startup Phase Duration (+3 for # of Frames)
12, | #Attack Phase Duration (+1 for # of Frames)
18, | #Recovery Phase Duration
120, | #Startup Phase Speed
240, | #Attack Phase Speed
100, | #Recovery Phase Speed
0, | #Startup Phase Angle
32, | #Attack Phase Angle
160, | #Recovery Phase Angle
40, | #Hitbox Size Related
40, | #Hitbox Size Related
-30       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
1       #Invisibility
half [16] |
0, |  #Charge Damage
0, |  #Knockback Velocity
0, |   #Knockback Angle
0, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
12, |   #Attack Phase Duration (+1 for # of Frames)
23, |   #Recovery Phase Duration
150, |   #Startup Phase Speed
125, |  #Attack Phase Speed
125, |   #Recovery Phase Speed
160, |    #Startup Phase Angle
130, |    #Attack Phase Angle
315, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 5, 5, 3, 5   #Stat Line
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
