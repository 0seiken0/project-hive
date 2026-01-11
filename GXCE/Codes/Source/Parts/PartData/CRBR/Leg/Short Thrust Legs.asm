######################################
Short Thrust Legs [Project Hive]
######################################
.alias PartType = 0x04
.alias PartBase = 0x05
.alias ModelID = 0x05
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
"Short Thrust Legs"
BuildTitle:
    String|
""
PartDescription:
    String|
"Decreases dash duration. 
Heavily decreases Dash 
Startup.
Heavily decreases Dash 
Landing Lag.
Heavily Increases Ground 
Acceleration."
RoboBytes:
byte [16] |
0, | #Illegal Toggle 
100, | #Ground Speed
200, | #Ground Accel 
100, | #Ground Turning
100, | #Jump Height
100, | #Jump Speed 
100, | #Lateral Air Speed 
100, | #Air Accel 
100, | #Landing Lag 
100, | #Gravity 
1, | #Dash Startup 
1, | #Dash Landing Lag 
75, | #Continuous Jump Height 
1, | #Dash Duration 
125, | #Dash Speed 
0xFF  #Filler Data
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
