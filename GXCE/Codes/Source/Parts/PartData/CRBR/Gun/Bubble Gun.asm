######################################
Bubble Gun [Project Hive]
######################################
.alias PartType = 0x01
.alias PartBase = 0x0E
.alias ModelID = 0x0E
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
"Bubble Gun"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires 2 large rounds
left and right that home 
towards target. High hitstun.
Air: Fires one round straight.
Recommended Range: 
Short-Medium"
RoboBytes:
byte[56] |
0,| #Illegal Toggle
10, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
0, | #Trail (0 for Invisible, 1 for Trail VFX)
255, 255, 255, 255, | #Left Portion RGBA
255, 255, 255, 255, | #Middle Portion RGBA
255, 255, 255, 255, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 60, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 1.0 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
2, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
30 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
6458, | #Initial Shot Angle
12916, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
75, | #Phase Duration
0 #Padding
float[4] |
0.09, | #Phase Speed
0.02, | #Horizontal Homing
0.04, | #Vertical Homing
0.7 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
500, | #Down
1, | #Knockback Velocity
0, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
62, | #Phase Duration
0 #Padding
float[4] |
0.05, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.4 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
500, | #Down
1, | #Knockback Velocity
0, | #Knockback Angle
22, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.05, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
500, | #Down
1, | #Knockback Velocity
0, | #Knockback Angle
22, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
0, | #Phase Duration
0 #Padding
float[4] |
0.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.0 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
0, | #Damage
0, | #Down
0, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
0, | #On-Hit Gravity
0, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
0 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
0, | #Phase Duration
0 #Padding
float[4] |
0.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.0 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
0, | #Damage
0, | #Down
0, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
0, | #On-Hit Gravity
0, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
0 #On-Hit Gravity (Downed)
##########
#Air Shot#
##########
byte[6] |
5, | #Startup
1, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
25 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
2730, | #Initial Shot Angle
16384, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
65, | #Phase Duration
0 #Padding
float[4] |
0.09, | #Phase Speed
0.04, | #Horizontal Homing
0.02, | #Vertical Homing
0.72 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
50, | #Damage
900, | #Down
1, | #Knockback Velocity
0, | #Knockback Angle
22, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
118, | #Phase Duration
0 #Padding
float[4] |
0.05, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
0.55 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
50, | #Damage
900, | #Down
1, | #Knockback Velocity
0, | #Knockback Angle
22, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.05, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.35 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
50, | #Damage
900, | #Down
1, | #Knockback Velocity
0, | #Knockback Angle
22, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
0, | #Phase Duration
0 #Padding
float[4] |
0.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.0 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
0, | #Damage
0, | #Down
0, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
0, | #On-Hit Gravity
0, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
0 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
0, | #Phase Duration
0 #Padding
float[4] |
0.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.0 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
0, | #Damage
0, | #Down
0, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
0, | #On-Hit Gravity
0, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
0 #On-Hit Gravity (Downed)
ExtraBytes:
byte [5] 4, 2, 10, 6, 8   #Stat Line
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
