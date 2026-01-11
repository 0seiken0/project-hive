######################################
Gemini Bomb D [Project Hive]
######################################
.alias PartType = 0x02
.alias PartBase = 0x0B
.alias ModelID = 0x10
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
"Gemini Bomb D"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires one bomb to
the left and right of 
opponent.
Air: Fires one bomb behind 
and in front of opponent.
Blast: High lingering, knocks
opponent diagonally upwards."
RoboBytes:
byte [2] |
00, | #Illegal Toggle
2 #Number of Bombs Fired
half [1] 70 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
100, | #Starting location of reticle (% of distance to opponent)
70, #Reload
half [3] |
0, | #Burrow Time
160, | #Projectile Speed
0x0000 #Empty Data?
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
10, | #Explosion Expansion Duration 
140, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.8, | #Explosion Size after Initial Expansion 
0.8, | #Final Explosion Size 
0.5 #Explosion Height 
half [10] |
58, | #Damage 
375, | #Down 
100, | #Knockback Velocity 
50, | #Knockback Angle 
20, | #Hitstun 
100, | #On-Hit Gravity 
100, | #Knockback Velocity (Downed) 
50, | #Knockback Angle (Downed) 
100, | #On-Hit Gravity (Downed) 
0x0000 #Empty Data?

##### First Ground Bomb #####
half [4] |
-250, | #Left / Right Landing Displacment
0, | #Front / Back Landing Displacment
60, | #Vertical Arc Angle
-30 #Horizontal Arc Angle

##### Second Ground Bomb #####
half [4] |
250, | #Left / Right Landing Displacment
0, | #Front / Back Landing Displacment
60, | #Vertical Arc Angle
30 #Horizontal Arc Angle

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment
0, | #Front / Back Landing Displacment
0, | #Vertical Arc Angle
0 #Horizontal Arc Angle

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment
0, | #Front / Back Landing Displacment
0, | #Vertical Arc Angle
0 #Horizontal Arc Angle
#################
## Air Shot ##
#################
byte [2] |
80, | #Starting location of reticle (% of distance to opponent)
70 #Reload
half [3] |
0, | #Burrow Time
180, | #Projectile Speed
0x0000 #Empty Data?
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
10, | #Explosion Expansion Duration 
140, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.8, | #Explosion Size after Initial Expansion 
0.8, | #Final Explosion Size 
0.5 #Explosion Height 
half [10] |
58, | #Damage 
375, | #Down 
100, | #Knockback Velocity
50, | #Knockback Angle
20, | #Histun
100, | #On Hit Gravity
100, | #Knockback Velocity (Downed)
50, | #Knockback Angle (Downed)
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data?

##### First Air Bomb #####
half [4] |
0, | #Left / Right Landing Displacment
0, | #Front / Back Landing Displacment
60, | #Vertical Arc Angle
0 #Horizontal Arc Angle

##### Second Air Bomb #####
half [4] |
0, | #Left / Right Landing Displacment
400, | #Front / Back Landing Displacment
100, | #Vertical Arc Angle
0 #Horizontal Arc Angle

##### Third Air Bomb #####
half [4] |
0, | #Left / Right Landing Displacment
0, | #Front / Back Landing Displacment
0, | #Vertical Arc Angle
0 #Horizontal Arc Angle

##### Fourth Air Bomb #####
half [4] |
0, | #Left / Right Landing Displacment
0, | #Front / Back Landing Displacment
0, | #Vertical Arc Angle
0 #Horizontal Arc Angle
word [14] 0x00000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0000003C, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3F800000 #Unknown Data
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
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
