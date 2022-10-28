;Name: Curtis Chung
;Submission date: 10/27/2022
;Description of the Program: For this program the objective is to retrive 2 different numbers ranging from 0-99
;                               and compare the 2 numbers and determine which is greater.
;                               when reciving the two numbers the code will check each input idividually to be sure it
;                               it is a valid entry. The next step is with the two values it compares the two indivual then
;                               outputs the value of the largest number.
.ORIG x3000
TOP2    AND R0, R0, #0 ;clear memory
        AND R1, R1, #0
        AND R2, R2, #0
        AND R3, R3, #0
        AND R4, R4, #0
        AND R5, R5, #0
        AND R6, R6, #0
;A1i
        LEA R0, STRING1 ;OUTPUT STRING 1
        PUTS
 CP1    GETC            ;GET INPUT 1
        OUT

         ;CHECK IF QUITING
        LD R2, NEGQUIT     
        ADD R1 , R2, R0
        BRz ENDIT1

        ;CHECK IF IT IS LESS THAN ZERO
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R0
        BRn CP1
        ;CHECK IF IT IS GREATER THAN 9
        AND R1, R1, #0
        AND R2, R2, #0
        LD R2, NEGNINE
        ADD R1, R2, R0
        BRp CP1   
        ;CHAR VALUE CHECKED OFF AND SAVED CHAR IN R5
        ADD R5, R5, R0

;A1ii
 CP2    GETC            ;GET INPUT 2
        OUT

         ;CHECK IF QUITING
        LD R2, NEGQUIT     
        ADD R1 , R2, R0
        BRz ENDIT1

        ;CHECK IF IT INPUTED ENTER
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGNEWLINE
        ADD R1, R2, R0
        BRz STDGT1      ;store digit 1

        ;CHECK IF IT IS LESS THAN ZERO
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R0
        BRn CP2
        ;CHECK IF IT IS GREATER THAN 9
        AND R1, R1, #0
        AND R2, R2, #0
        LD R2, NEGNINE
        ADD R1, R2, R0
        BRp CP2   
        ;CHAR VALUE CHECKED OFF AND SAVED CHAR IN R5
        ADD R6, R6, R0


;SUBTRACT R5 AND R6 TO GET ACTUAL DECIMAL VAULE 
;R5 TO DECIMAL VALUE
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R5; THE DECIMAL VALUE IS IN R1
        AND R5, R5, #0; CLEAR R5
        ADD R5, R1, #0; MOVE TO R5

;R6 TO DECIMAL VALUE
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R6
        AND R6, R6, #0; CLEAR R6
        ADD R6, R1, #0; MOVE TO R6

;combine r5 and r6 in to an actual number the pc can read
        AND R4, R4 #0
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R6

;store it to VALUE1
        ST R4, VALUE1
        BRnzp SKIP1

;if entered only store single digit to r5 then to VALUE1
STDGT1  AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R5; THE DECIMAL VALUE IS IN R1
        ST R1, VALUE1
        BRnzp SKIP1
ENDIT1 BRnzp ENDIT2

TOP1    BRnzp TOP2

SKIP1   AND R0, R0, #0 ;clear memory
        AND R1, R1, #0
        AND R2, R2, #0
        AND R3, R3, #0
        AND R4, R4, #0
        AND R5, R5, #0
        AND R6, R6, #0
;A2i
        LEA R0, STRING2 ;OUTPUT STRING 2
        PUTS
 CEP3   GETC            ;GET INPUT 1
        OUT

         ;CHECK IF QUITING
        LD R2, NEGQUIT     
        ADD R1 , R2, R0
        BRz ENDIT1

        ;CHECK IF IT IS LESS THAN ZERO
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R0
        BRn CEP3
        ;CHECK IF IT IS GREATER THAN 9
        AND R1, R1, #0
        AND R2, R2, #0
        LD R2, NEGNINE
        ADD R1, R2, R0
        BRp CEP3   
        ;CHAR VALUE CHECKED OFF AND SAVED CHAR IN R5
        ADD R5, R5, R0

;A2ii
 CP4    GETC            ;GET INPUT 2
        OUT

         ;CHECK IF QUITING
        LD R2, NEGQUIT     
        ADD R1 , R2, R0
        BRz ENDIT1

        ;CHECK IF IT INPUTED ENTER
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGNEWLINE
        ADD R1, R2, R0
        BRz STDGT2      ;store digit 1

        ;CHECK IF IT IS LESS THAN ZERO
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R0
        BRn CP4
        ;CHECK IF IT IS GREATER THAN 9
        AND R1, R1, #0
        AND R2, R2, #0
        LD R2, NEGNINE
        ADD R1, R2, R0
        BRp CP4   
        ;CHAR VALUE CHECKED OFF AND SAVED CHAR IN R5
        ADD R6, R6, R0


;SUBTRACT R5 AND R6 TO GET ACTUAL DECIMAL VAULE 
;R5 TO DECIMAL VALUE
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R5; THE DECIMAL VALUE IS IN R1
        AND R5, R5, #0; CLEAR R5
        ADD R5, R1, #0; MOVE TO R5

;R6 TO DECIMAL VALUE
        AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R6
        AND R6, R6, #0; CLEAR R6
        ADD R6, R1, #0; MOVE TO R6

;combine r5 and r6 in to an actual number the pc can read
        AND R4, R4 #0
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R5
        ADD R4, R4, R6

;store it to VALUE2
        ST R4, VALUE2
        BRnzp SKIP2

;if entered only store single digit to r5 then to VALUE1
STDGT2  AND R1, R1, #0
        AND R2, R2, #0        
        LD R2, NEGZER0
        ADD R1, R2, R5; THE DECIMAL VALUE IS IN R1
        ST R1, VALUE2
        BRnzp SKIP2


NEGZER0 .FILL #-48      ;place values in middle of script
ASCIIZERO    .FILL #48
NEGNINE .FILL #-57
NEGQUIT .FILL #-113
NEGNEWLINE .FILL #-10
VALUE1 .FILL #0
VALUE2 .FILL #0
STRING1 .STRINGZ "\nEnter Start Number (0-99): "
STRING2 .STRINGZ "\nEnter End Number (0-99): "
STRING3 .STRINGZ "\nThank you for playing!"
STRING4 .STRINGZ "\nThe largest of the two numbers is: "
STRING5 .STRINGZ "\n test worked"

ENDIT2 BRnzp ENDIT3
TOP    BRnzp TOP1
;compare the two numbers
SKIP2   LEA R0, STRING4
        PUTS                    ;contimute comparison value1 and value2 here
        AND R0, R0, #0 ;clear memory
        AND R1, R1, #0
        AND R2, R2, #0
        AND R3, R3, #0
        AND R4, R4, #0
        AND R5, R5, #0
        AND R6, R6, #0

        ;LOAD VAL1 TO R5
        LD R5, VALUE1
        ;LOAD VAL2 TO R6
        LD R6, VALUE2

        ;compare values
        NOT R1, R6
        ADD R1, R1, #1 ;CONFIGURE TO 2S COMPLIMENT
        ADD R2, R5, R1  ;SUBTRACT R5 AND R6 TO R1

        BRn R6BIN;if negative r6 is bigger 
        BRp R5BIN;if positive r5 is bigger
        BRz ZSKIP; if zero R5 AND R6 ARE EQUAL TO EACH OTHER


;IF VALUE IS BIGGER IN R6
R6BIN   ADD R3, R3, #1          ;R3 IS 10S AND R6 IS 1S
        ADD R6, R6, #-10
        BRp R6BIN
        BRz TSKIP1
        ADD R3, R3, #-1
        ADD R6, R6, #10

 TSKIP1 LD R4, ASCIIZERO        ;output the answer
        ADD R0, R3, R4          ;asciizero = #48
        OUT
        ADD R0, R6, R4
        OUT
        BRnzp TOP


;IF VALUE IS BIGGER IN R5
R5BIN   ADD R3, R3, #1          ;R3 IS 10S AND R6 IS 1S
        ADD R5, R5, #-10
        BRp R5BIN
        BRz TSKIP2
        ADD R3, R3, #-1
        ADD R5, R5, #10
        
TSKIP2  LD R4, ASCIIZERO        ;OUTPUT THE ANSWER
        ADD R0, R3, R4
        OUT
        ADD R0, R5, R4
        OUT
        BRnzp TOP


;IF VALUE IS SAME
ZSKIP   ADD R3, R3, #1          ;R3 IS 10S AND R6 IS 1S
        ADD R5, R5, #-10
        BRp ZSKIP
        BRz TSKIP3
        ADD R3, R3, #-1
        ADD R5, R5, #10
        
TSKIP3  LD R4, ASCIIZERO        ;OUTPUT THE ANSWER
        ADD R0, R5, R4
        OUT
        BRnzp TOP



ENDIT3  LEA R0, STRING3
        PUTS

        HALT


.END