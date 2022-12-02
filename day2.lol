HAI 1.3
CAN HAS STDIO?
CAN HAS STRING?
BTW Open file for reading
I HAS A readFile ITZ I IZ STDIO'Z OPEN YR "inputs/2" AN YR "r" MKAY
I IZ STDIO'Z DIAF YR readFile MKAY
O RLY?
	YA RLY
		VISIBLE "Failed to open file for reading"
	NO WAI
		VISIBLE "Successfully opened the file for reading"
OIC

BTW Create an array
I HAS A linez ITZ A YARN
I HAS A i ITZ 0
I HAS A contentLength
BTW Read in from file (1024 bytes)
IM IN YR readLoop UPPIN YR i WILE WIN
    I HAS A contents ITZ I IZ STDIO'Z LUK YR readFile AN YR 1024 MKAY
    contentLength R I IZ STRING'Z LEN YR contents MKAY
    BOTH SAEM contentLength AN 0, O RLY?
        YA RLY, GTFO
    OIC
    linez R SMOOSH linez AN contents MKAY
IM OUTTA YR readLoop
BTW Close file
I IZ STDIO'Z CLOSE YR readFile MKAY

BTW A AN X IZ RAWK
BTW B AN Y IZ PAPR
BTW C AN Z IZ SCISORS
I HAS A pos ITZ 0
I HAS A SKORSUM ITZ 0
IM IN YR iterLoop
    I HAS A FURST ITZ I IZ STRING'Z AT YR linez AN YR pos MKAY
    BOTH SAEM FURST AN ".", O RLY?, YA RLY, GTFO, OIC BTW EOF
    I HAS A SECOND ITZ I IZ STRING'Z AT YR linez AN YR SUM OF pos AN 2 MKAY
    I HAS A ROUND ITZ SMOOSH FURST AN " " AN SECOND MKAY
    ROUND, WTF? BTW OMG IZ BOOTIFUL
        OMG "A X"
            SKORSUM R SUM OF SKORSUM AN 4
        GTFO
        OMG "A Y"
            SKORSUM R SUM OF SKORSUM AN 8
        GTFO
        OMG "A Z"
            SKORSUM R SUM OF SKORSUM AN 3
        GTFO
        OMG "B X"
            SKORSUM R SUM OF SKORSUM AN 1
        GTFO
        OMG "B Y"
            SKORSUM R SUM OF SKORSUM AN 5
        GTFO
        OMG "B Z"
            SKORSUM R SUM OF SKORSUM AN 9
        GTFO
        OMG "C X"
            SKORSUM R SUM OF SKORSUM AN 7
        GTFO
        OMG "C Y"
            SKORSUM R SUM OF SKORSUM AN 2
        GTFO
        OMG "C Z"
            SKORSUM R SUM OF SKORSUM AN 6
        GTFO
        OMGWTF
            VISIBLE "ERROR!"
            VISIBLE ROUND
    OIC
    pos R SUM OF pos AN 4 BTW SINCE IZ "A X\n"
IM OUTTA YR iterLoop

VISIBLE SKORSUM

pos R 0
SKORSUM R 0
IM IN YR iterLoop
    I HAS A FURST ITZ I IZ STRING'Z AT YR linez AN YR pos MKAY
    BOTH SAEM FURST AN ".", O RLY?, YA RLY, GTFO, OIC BTW EOF
    I HAS A SECOND ITZ I IZ STRING'Z AT YR linez AN YR SUM OF pos AN 2 MKAY
    I HAS A ROUND ITZ SMOOSH FURST AN " " AN SECOND MKAY
    ROUND, WTF? BTW OMG IZ BOOTIFUL
        OMG "A X"
            SKORSUM R SUM OF SKORSUM AN 3
        GTFO
        OMG "A Y"
            SKORSUM R SUM OF SKORSUM AN 4
        GTFO
        OMG "A Z"
            SKORSUM R SUM OF SKORSUM AN 8
        GTFO
        OMG "B X"
            SKORSUM R SUM OF SKORSUM AN 1
        GTFO
        OMG "B Y"
            SKORSUM R SUM OF SKORSUM AN 5
        GTFO
        OMG "B Z"
            SKORSUM R SUM OF SKORSUM AN 9
        GTFO
        OMG "C X"
            SKORSUM R SUM OF SKORSUM AN 2
        GTFO
        OMG "C Y"
            SKORSUM R SUM OF SKORSUM AN 6
        GTFO
        OMG "C Z"
            SKORSUM R SUM OF SKORSUM AN 7
        GTFO
        OMGWTF
            VISIBLE "ERROR!"
            VISIBLE ROUND
    OIC
    pos R SUM OF pos AN 4 BTW SINCE IZ "A X\n"
IM OUTTA YR iterLoop

VISIBLE SKORSUM

KTHXBYE