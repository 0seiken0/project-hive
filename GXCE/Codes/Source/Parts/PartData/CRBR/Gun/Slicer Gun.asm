######################################
Slicer Gun [de, kactus]
######################################
.alias PartType = 0x01
.alias PartBase = 0x32
.alias ModelID = 0x2a
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
"Slicer Gun"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires 2 bursts of shots 
that split into a horizontal 
spread with a short range.
Air: Vertical spread rather than 
horizontal.
Recommended Range: 
Short-Medium"
RoboBytes:
byte[56] |
0,| #Illegal Toggle
10, | #Slideshot Duration
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
2, | #Number of Shots
5, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
44 #Endlag
half 0 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
5000, | #Initial Shot Angle
2500, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.15, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
0.42 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
9, | #Damage
150, | #Down
46, | #Knockback Velocity
0, | #Knockback Angle
25, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
25, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.006, | #Horizontal Homing
0.015, | #Vertical Homing
0.32 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
350, | #Down
38, | #Knockback Velocity
0, | #Knockback Angle
15, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
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
2, | #Number of Shots
5, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
40 #Endlag
half 0 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
5000, | #Initial Shot Angle
2500, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.15, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
0.42 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
9, | #Damage
150, | #Down
46, | #Knockback Velocity
0, | #Knockback Angle
25, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
25, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.015, | #Horizontal Homing
0.006, | #Vertical Homing
0.32 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
350, | #Down
38, | #Knockback Velocity
0, | #Knockback Angle
15, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
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
2, | #Number of Shots
5, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
14, | #Delay Between Shots
44 #Endlag
half 0 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
2464, | #Initial Shot Angle
2464, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.15, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
0.37 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
11, | #Damage
150, | #Down
46, | #Knockback Velocity
0, | #Knockback Angle
56, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
25, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.006, | #Horizontal Homing
0.015, | #Vertical Homing
0.37 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
350, | #Down
38, | #Knockback Velocity
0, | #Knockback Angle
32, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
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
byte [5] 6, 4, 2, 4, 4   #Stat Line
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
