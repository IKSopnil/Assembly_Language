.STACK 100H

.DATA 
PROMPT DB 'THE ASCENDING NUMBER (0-9): $' 

.CODE  
MAIN PROC 
    MOV AX, @DATA 
    MOV DS,AX
    
    LEA DX,PROMPT
    INT 21H
    
    MOV CX,10
    
    MOV AH,2
    MOV DL,48
    
    @LOOP:  
        INT 21H
    
        INC DL 
        DEC CX
    
    JNZ @LOOP  
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN 