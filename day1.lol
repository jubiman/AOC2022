HAI 1.3
CAN HAS STDIO?
CAN HAS STRING?
BTW Open file for reading
I HAS A readFile ITZ I IZ STDIO'Z OPEN YR "1" AN YR "r" MKAY
I IZ STDIO'Z DIAF YR readFile MKAY
O RLY?
	YA RLY
		VISIBLE "Failed to open file for reading"
	NO WAI
		VISIBLE "Successfully opened the file for reading"
OIC

BTW Create a string for readig the whole file
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

I HAS A linezLength ITZ I IZ STRING'Z LEN YR linez MKAY
VISIBLE SMOOSH "Linez length: " AN linezLength MKAY

I HAS A maxSum1 ITZ 0
I HAS A maxSum2 ITZ 0
I HAS A maxSum3 ITZ 0
I HAS A pos ITZ 0
I HAS A ignored ITZ 0
IM IN YR iterLoop
    I HAS A currSum ITZ 0
    I HAS A charAtPos1 ITZ I IZ STRING'Z AT YR linez AN YR pos MKAY
    BOTH SAEM charAtPos1 AN "." BTW "." is EOF in my formatting
    O RLY?
        YA RLY, GTFO
    OIC

    I HAS A pos2 ITZ pos
    I HAS A currNumberStr ITZ ""
    IM IN YR numLoop
        I HAS A charAtPos2 ITZ I IZ STRING'Z AT YR linez AN YR pos2 MKAY
        BOTH SAEM charAtPos2 AN ","
        O RLY?
            YA RLY, GTFO
        OIC

        BOTH SAEM charAtPos2 AN ":)" BTW :) == "\n"
        O RLY?
        YA RLY
            currNumberStr IS NOW A NUMBR
            currSum R SUM OF currSum AN currNumberStr
            currNumberStr R ""
        NO WAI
            currNumberStr R SMOOSH currNumberStr AN charAtPos2 MKAY
        OIC
        pos2 R SUM OF pos2 AN 1 BTW pos2++;
    IM OUTTA YR numLoop
    pos R SUM OF pos2 AN 1 BTW pos = pos2 + 1 (place of ',' + 1)

    BTW I KNOE ITZ BOOTIFUL SO STFU
    BOTH SAEM BIGGR OF currSum AN maxSum1 AN currSum
    O RLY?
    YA RLY
        maxSum3 R maxSum2
        maxSum2 R maxSum1
        maxSum1 R currSum
    NO WAI
        BOTH SAEM BIGGR OF currSum AN maxSum2 AN currSum
        O RLY?
        YA RLY
            maxSum3 R maxSum2
            maxSum2 R currSum
        NO WAI
            BOTH SAEM BIGGR OF currSum AN maxSum3 AN currSum
            O RLY?
                YA RLY, maxSum3 R currSum
            OIC
        OIC
    OIC


IM OUTTA YR iterLoop

VISIBLE SMOOSH "Part 1: " AN maxSum1 MKAY
VISIBLE SMOOSH "Part 2: " AN SUM OF maxSum1 AN SUM OF maxSum2 AN maxSum3 MKAY

KTHXBYE