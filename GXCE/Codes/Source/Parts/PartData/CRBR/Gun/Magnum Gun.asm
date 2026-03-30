######################################
Magnum Gun [Project Hive]
######################################
.alias PartType = 0x01
.alias PartBase = 0x11
.alias ModelID = 0x11
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
"Magnum Gun"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires a powerful
short-range round that 
instantly downs a close
opponent.
Gradually becomes weaker,
but the end has high 
hitstun, and knocks the
opponent towards you.
Air: Same as Ground.
Recommended Range:
Short"
RoboBytes:
byte[56] |
0, | #Illegal Toggle
30, | #Slideshot Duration
1, | #Related to Homing when rounds aren't facing the opponent
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
1, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
30 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
2, | #Phase Duration
0 #Padding
float[4] |
0.4, | #Phase Speed
0.05, | #Horizontal Homing
0.05, | #Vertical Homing
0.4 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
155, | #Damage
2000, | #Down
285, | #Knockback Velocity
25, | #Knockback Angle
25, | #Hitstun
100, | #On-Hit Gravity
285, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
4, | #Phase Duration
0 #Padding
float[4] |
0.21, | #Phase Speed
0.003, | #Horizontal Homing
0.003, | #Vertical Homing
0.38 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
95, | #Damage
800, | #Down
150, | #Knockback Velocity
25, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
150, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
6, | #Phase Duration
0 #Padding
float[4] |
0.095, | #Phase Speed
0.003, | #Horizontal Homing
0.003, | #Vertical Homing
0.36 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
65, | #Damage
400, | #Down
40, | #Knockback Velocity
25, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
40, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.075, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.34 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
500, | #Down
105, | #Knockback Velocity
155, | #Knockback Angle
65, | #Hitstun
80, | #On-Hit Gravity
105, | #Knockback Velocity (Downed)
155, | #Knockback Angle (Downed)
80 #On-Hit Gravity (Downed)
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
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
38 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
2, | #Phase Duration
0 #Padding
float[4] |
0.4, | #Phase Speed
0.05, | #Horizontal Homing
0.05, | #Vertical Homing
0.4 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
140, | #Damage
2000, | #Down
285, | #Knockback Velocity
25, | #Knockback Angle
25, | #Hitstun
100, | #On-Hit Gravity
285, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
4, | #Phase Duration
0 #Padding
float[4] |
0.21, | #Phase Speed
0.003, | #Horizontal Homing
0.003, | #Vertical Homing
0.38 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
85, | #Damage
800, | #Down
150, | #Knockback Velocity
25, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
150, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
6, | #Phase Duration
0 #Padding
float[4] |
0.095, | #Phase Speed
0.003, | #Horizontal Homing
0.003, | #Vertical Homing
0.36 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
60, | #Damage
400, | #Down
40, | #Knockback Velocity
25, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
40, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.075, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.34 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
500, | #Down
105, | #Knockback Velocity
155, | #Knockback Angle
65, | #Hitstun
80, | #On-Hit Gravity
105, | #Knockback Velocity (Downed)
155, | #Knockback Angle (Downed)
80 #On-Hit Gravity (Downed)
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
byte [5] 8, 10, 2, 2, 10   #Stat Line
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
