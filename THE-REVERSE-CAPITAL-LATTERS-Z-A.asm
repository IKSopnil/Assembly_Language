ORG 100H
.MODEL SMALL 

.DATA 
PROMPT DB 'THE REVERSE CAPITAL LATTERS (Z-A): $' 

.CODE  
MAIN PROC 
    MOV AX, @DATA 
    MOV DS,AX
    
    LEA DX,PROMPT       
    MOV AH,9
    INT 21H
    
    MOV CX,26
    
    MOV AH,2
    MOV DL,90
    
    @LOOP:  
        INT 21H
    
        DEC DL 
        DEC CX
    
    JNZ @LOOP  
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN 