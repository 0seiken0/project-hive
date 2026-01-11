######################################
Zola [Project Hive]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1B
.alias ModelID = 0x1B
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
"Zola"
BuildTitle:
    String|
""
PartDescription:
    String|
"Wild Soldier (Armor)
Good Defense and Down, quick
jumps and high Gravity.
Two quick downwards 
Air-Dashes with low landing 
lag.
Charge: Rises backwards and 
then charges forwards."
RoboBytes:
half[1] |
1500, #Down
byte[22] |
85, | #Defense
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
5, 10, 15, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
0    #Number of Continuous Jumps
half[3] |
0, 0, 0  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
13, | #Air Dash Angle
4, 8, 12    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
220, 250, 280, | #Reduced, Unmodified, and Boosted Air Dash Speed
0, 0, 0, | #Reduced, Unmodified, and Boosted LS Dash Turning
45, 60, 75, | #Reduced, Unmodified, and Boosted Run Speed
100, 150, 300, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
170, 310, 450, | #Reduced, Unmodified, and Boosted Jump Height
4, 8, 10, | #Reduced, Unmodified, and Boosted Jump Speed
80, 100, 170, | #Reduced, Unmodified, and Boosted Lateral Air Speed
50, 100, 500, | #Reduced, Unmodified, and Boosted Air Acceleration
5, 10, 15, | #Reduced, Unmodified, and Boosted Landing Lag
140, 190, 230, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
0 #????
word [8] |
0x8E638965, 0x8C9D0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
150, |  #Charge Damage
100, |  #Knockback Velocity
60, |   #Knockback Angle
20, |   #Homing
12, |   #Startup Phase Duration (+3 for # of Frames)
25, |   #Attack Phase Duration (+1 for # of Frames)
35, |   #Recovery Phase Duration
160, |   #Startup Phase Speed
250, |  #Attack Phase Speed
0, |   #Recovery Phase Speed
135, |    #Startup Phase Angle
-20, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
60, |   #Hitbox Size Related
20, |   #Hitbox Size Related
-40       #Hitbox Size Related
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
16, |   #Startup Phase Duration (+3 for # of Frames)
19, |   #Attack Phase Duration (+1 for # of Frames)
34, |   #Recovery Phase Duration
175, |   #Startup Phase Speed
175, |  #Attack Phase Speed
20, |   #Recovery Phase Speed
112, |    #Startup Phase Angle
248, |    #Attack Phase Angle
180, |  #Recovery Phase Angle
0, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 8, 8, 1, 4, 7   #Stat Line
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
