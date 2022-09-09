
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.CODE
MAIN PROC
    
    MOV AH, 09H
    MOV DX, OFFSET MESSAGE
    INT 21H
    MESSAGE DB "ENTER AN UPPER CASE LETTER: $"
    MOV AH, 4CH
    
    LINEFEED DB 13, 10, "$"
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 09H
    MOV DX, OFFSET LINEFEED
    INT 21H
    
    MOV AH, 09H
    MOV DX, OFFSET MESSAGEB
    INT 21H
    MESSAGEB DB "THE LOWER CASE IS: $"
    MOV AH, 4CH
    
    ADD BL, 32
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
ret




