.MODEL SMALL
.DATA

MSG DB 'HELLO! WORLD$'
MSG1 DB 'NICE TO MEET YOU$'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS, AX            
    
    MOV AH,9
    LEA DX, MSG
    INT 21H              ;문자열 출력
    
    MOV AH,02H
    MOV DL,0DH           ;Enter
    INT 21H
    MOV DL,0AH           ;출력
    INT 21H
    
    MOV AH,9
    LEA DX, MSG1
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
    END MAIN