######################################
Ground Legs [Project Hive]
######################################
.alias PartType = 0x04
.alias PartBase = 0x02
.alias ModelID = 0x02
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
"Ground Legs"
BuildTitle:
    String|
""
PartDescription:
    String|
"Heavily reduces Landing Lag.
Reduces Jump Height.
Increases Ground Acceleration.
Increases Aerial Acceleration."
RoboBytes:
byte [16] |
0, | #Illegal Toggle 
100, | #Ground Speed
150, | #Ground Accel 
100, | #Ground Turning
50, | #Jump Height
100, | #Jump Speed 
100, | #Lateral Air Speed 
150, | #Air Accel 
1, | #Landing Lag 
100, | #Gravity 
100, | #Dash Startup 
1, | #Dash Landing Lag 
100, | #Continuous Jump Height 
100, | #Dash Duration 
100, | #Dash Speed 
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
