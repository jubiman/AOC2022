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


KTHXBYE