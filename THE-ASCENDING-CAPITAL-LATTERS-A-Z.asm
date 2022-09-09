.STACK 100H

.DATA 
PROMPT DB 'THE ASCENDING CAPITAL LATTERS (A-Z): $' 

.CODE  
MAIN PROC 
    MOV AX, @DATA 
    MOV DS,AX
    
    LEA DX,PROMPT 
    MOV AH,9
    INT 21H
    
    MOV CX,26
    
    MOV AH,2
    MOV DL,65
    
    @LOOP:  
        INT 21H
    
        INC DL 
        DEC CX
    
    JNZ @LOOP  
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN 