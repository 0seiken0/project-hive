######################################
Rising Gun [Kactus]
######################################
.alias PartType = 0x01
.alias PartBase = 0x2C
.alias ModelID = 0x2C
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
"Rising Gun ^`"
BuildTitle:
    String|
""
PartDescription:
    String|
"Ground: Fires a powerful round 
that hovers above
the opponent.
Air: Fires a tight spread of two 
weak shots that knock the 
opponent upwards.
Recommended Range: 
Short"
RoboBytes:
byte[56] |
1,| #Illegal Toggle
15, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
255, 150, 50, 50, | #Left Portion RGBA
255, 180, 70, 200, | #Middle Portion RGBA
255, 150, 50, 50, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 20, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 1.4 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
0, | #Delay Between Shots
11 #Endlag
half 0 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
-9200, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
1.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.4 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
110, | #Damage
1800, | #Down
50, | #Knockback Velocity
15, | #Knockback Angle
15, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.57, | #Phase Speed
0.7, | #Horizontal Homing
0.0, | #Vertical Homing
0.55 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
110, | #Damage
1000, | #Down
50, | #Knockback Velocity
25, | #Knockback Angle
15, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
235, | #Phase Duration
0 #Padding
float[4] |
0.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
1.2 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
125, | #Damage
1000, | #Down
100, | #Knockback Velocity
-90, | #Knockback Angle
35, | #Hitstun
150, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
-90, | #Knockback Angle (Downed)
150 #On-Hit Gravity (Downed)
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
2, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
0, | #Delay Between Shots
20 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
1400, | #Initial Shot Angle
2800, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
17, | #Phase Duration
0 #Padding
float[4] |
0.17, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.57 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
10, | #Damage
200, | #Down
155, | #Knockback Velocity
111, | #Knockback Angle
19, | #Hitstun
80, | #On-Hit Gravity
145, | #Knockback Velocity (Downed)
111, | #Knockback Angle (Downed)
80 #On-Hit Gravity (Downed)
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
ExtraBytes:
byte [5] 6, 10, 4, 8, 6   #Stat Line
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
