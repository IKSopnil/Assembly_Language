ORG 100H 
.MODEL SMALL
.DATA 
PROMPT DB 'THE 256 ASCII CHARACTERS ARE : $' 
.CODE

MAIN PROC
     MOV AX,@DATA
     MOV DS,AX
     
     LEA DX,PROMPT
     MOV AH,9
     INT 21H  
     
     
     MOV CX,256
      
     
     MOV AH,2 
     MOV DL,65  
     
     
     @LOOP:
     INT 21H  
     
     
     INC DL
     LOOP @LOOP
     
        
           MOV AH,4CH
     INT 21H
     
MAIN ENDP
END MAIN 

RET