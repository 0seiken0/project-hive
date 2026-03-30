######################################
Slide Gun [Project Hive/TideHunter]
######################################
.alias PartType = 0x01
.alias PartBase = 0x2B
.alias ModelID = 0x15
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
"Slide Gun ^`"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Long sliding time with
three shots. High down.
Air: Shoots an even horizontal
spread of 4 shots.
Recommended Range: 
Medium-Long"
RoboBytes:
byte[56] |
1,| #Illegal Toggle
18, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
0, 175, 227, 230, | #Left Portion RGBA
58, 21, 140, 255, | #Middle Portion RGBA
0, 175, 227, 230, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 45, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 0.9 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
3, | #Number of Shots
1, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
40, | #Delay Between Shots
22 #Endlag
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
125, | #Phase Duration
0 #Padding
float[4] |
0.405, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.2 #Shot Size
byte[2] |
45, | #Lingering Hitbox Duration
0 #Padding
half[9] |
75, | #Damage
900, | #Down
80, | #Knockback Velocity
10, | #Knockback Angle
25, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
15, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
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
1, | #Number of Shots
4, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
0, | #Delay Between Shots
35 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
7500, | #Initial Shot Angle
5000, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.26, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.19 #Shot Size
byte[2] |
45, | #Lingering Hitbox Duration
0 #Padding
half[9] |
40, | #Damage
450, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
65, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.19 #Shot Size
byte[2] |
45, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
450, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
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
byte [5] 6, 8, 2, 6, 8   #Stat Line
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