######################################
Pursuit Gun [Project Hive]
######################################
.alias PartType = 0x01
.alias PartBase = 0x2F
.alias ModelID = 0x2F
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
"Pursuit Gun"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires a single round 
that turns before speeding up.
Air: Same as Ground.
Recommended Range: 
Medium-Long"
RoboBytes:
byte[56] |
0,| #Illegal Toggle
26, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
220, 100, 220, 255, | #Left Portion RGBA
135, 35, 155, 63, | #Middle Portion RGBA
220, 100, 220, 255, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 15, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 2.0 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
28 #Endlag
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
20, | #Phase Duration
0 #Padding
float[4] |
0.18, | #Phase Speed
0.0, | #Horizontal Homing
0.014, | #Vertical Homing
0.25 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
150, | #Knockback Velocity
25, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
150, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
50, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.390625, | #Horizontal Homing
0.390625, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
170, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
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
10, | #Delay Between Shots
32 #Endlag
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
20, | #Phase Duration
0 #Padding
float[4] |
0.18, | #Phase Speed
0.0, | #Horizontal Homing
0.014, | #Vertical Homing
0.25 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
150, | #Knockback Velocity
25, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
150, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
50, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.390625, | #Horizontal Homing
0.390625, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
170, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
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
byte [5] 8, 8, 8, 4, 8   #Stat Line
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
