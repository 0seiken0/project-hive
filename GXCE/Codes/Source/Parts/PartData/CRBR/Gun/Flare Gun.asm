######################################
Flare Gun [Project Hive]
######################################
.alias PartType = 0x01
.alias PartBase = 0x26
.alias ModelID = 0x26
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
"Flare Gun"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires a burst of 
3 fast rounds that explode 
at the end of their range.
Air: Same as Ground. 
Recommended Range: Medium."
RoboBytes:
byte[56] |
0,| #Illegal Toggle
25, | #Slideshot Duration
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
3, | #Number of Shots
5, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
30 #Endlag
half 0 #Shot Randomization
byte[2] |
2, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
13107, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
4, | #Damage
30, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
5, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
4, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
10, | #Damage
200, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
5, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
2, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.9 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
200, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.07, | #Horizontal Homing
0.01, | #Vertical Homing
0.6 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
25, | #Damage
350, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
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
3, | #Number of Shots
5, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
42 #Endlag
half 0 #Shot Randomization
byte[2] |
2, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
13107, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
4, | #Damage
30, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
5, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
4, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
10, | #Damage
200, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
5, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
2, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.9 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
200, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.07, | #Horizontal Homing
0.01, | #Vertical Homing
0.6 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
25, | #Damage
350, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
40, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
40 #On-Hit Gravity (Downed)
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
byte [5] 8, 8, 4, 6, 6   #Stat Line
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
