######################################
Cluster Bomb [Project Hive]
######################################
.alias PartType = 0x02
.alias PartBase = 0x19
.alias ModelID = 0x24
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
"Cluster Bomb^`"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires a cluster
of small blasts.
Air: Same as Ground"
RoboBytes:
byte [2] |
0, | #Illegal Toggle 
4 #Number of Bombs Fired
half [1] 50 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
70, | #Starting location of reticle (% of distance to opponent) 
120, #Reload 
half [3] |
0, | #Burrow Time 
160, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions
1 #Delay between Explosions
half [3] |
1, | #Explosion Expansion Radius 
18, | #Lingering Hitbox Duration
0x0000 #Empty Data?
float [3] |
0.8, | #Explosion Size after Initial Expansion
0.8, | #Final Explosion Size
0.6 #Explosion Height
half [10] |
30, | #Damage
200, | #Down
100, | #Knockback Velocity
20, | #Knockback Angle
20, | #Histun
100, | #On Hit Gravity
100, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
100, | #Left / Right Landing Displacment 
75, | #Front / Back Landing Displacment 
30, | #Vertical Arc Angle 
30 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
-100, | #Left / Right Landing Displacment 
75, | #Front / Back Landing Displacment 
30, | #Vertical Arc Angle 
-30 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
30, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
125, | #Front / Back Landing Displacment 
50, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 
#################
## Air Shot ##
#################
byte [2] |
70, | #Starting location of reticle (% of distance to opponent) 
120, #Reload 
half [3] |
0, | #Burrow Time 
160, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions
0 #Delay between Explosions
half [3] |
7, | #Explosion Expansion Radius 
18, | #Lingering Hitbox Duration
0x0000 #Empty Data?
float [3] |
0.8, | #Explosion Size after Initial Expansion
0.8, | #Final Explosion Size
0.6 #Explosion Height
half [10] |
30, | #Damage
200, | #Down
100, | #Knockback Velocity
20, | #Knockback Angle
20, | #Histun
100, | #On Hit Gravity
100, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
100, | #Left / Right Landing Displacment 
75, | #Front / Back Landing Displacment 
30, | #Vertical Arc Angle 
30 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
-100, | #Left / Right Landing Displacment 
75, | #Front / Back Landing Displacment 
30, | #Vertical Arc Angle 
-30 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
30, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
125, | #Front / Back Landing Displacment 
50, | #Vertical Arc Angle 
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
