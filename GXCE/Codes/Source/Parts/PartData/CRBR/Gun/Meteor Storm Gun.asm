######################################
Meteor Storm Gun [Project Hive]
######################################
.alias PartType = 0x01
.alias PartBase = 0x1D
.alias ModelID = 0x1D
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
"Meteor Storm Gun"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires a burst of
16 rounds in a spread towards 
the target. Rounds increase 
in Power as they travel.
Air: Same as Ground.
Recommended Range: Medium"
RoboBytes:
byte[56] |
0,| #Illegal Toggle
0, | #Slideshot Duration
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
16, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
1, | #Delay Between Shots
40 #Endlag
half 3072 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.012, | #Horizontal Homing
0.012, | #Vertical Homing
0.1 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
4, | #Damage
50, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
10, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.012, | #Horizontal Homing
0.012, | #Vertical Homing
0.1 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
22, | #Damage
250, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
18, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
25, | #Phase Duration
0 #Padding
float[4] |
0.04, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.1 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
22, | #Damage
250, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
18, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
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
16, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
1, | #Delay Between Shots
42 #Endlag
half 2560 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.012, | #Horizontal Homing
0.012, | #Vertical Homing
0.1 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
4, | #Damage
50, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
10, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.012, | #Horizontal Homing
0.012, | #Vertical Homing
0.1 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
22, | #Damage
250, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
18, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
25, | #Phase Duration
0 #Padding
float[4] |
0.04, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.1 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
22, | #Damage
250, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
18, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
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
byte [5] 4, 6, 4, 6, 2   #Stat Line
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
