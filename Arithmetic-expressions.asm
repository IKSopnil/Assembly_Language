org 100h 

ADDISION DW ?
SUBTRACTION DW ?
MULTIPLICATION DW ?
DIVISION DW ?

.code

MOV AX, @DATA
MOV DS, AX

MAIN PROC
    MOV AX, 120
    MOV BX, 100
    
    ADD AX, BX
    MOV ADDISION, AX 
    
    MOV AX, 120
    MOV BX, 100
    
    SUB AX, BX
    MOV SUBTRACTION, AX 
    
    MOV AX, 120
    MOV BX, 100
    
    MUL BX
    MOV MULTIPLICATION, AX
    
    MOV AX, 120
    MOV BX, 100
    
    DIV BX
    MOV DIVISION, AX  
    
    MOV AH, 4CH
    INT 21H  
    MAIN ENDP
END MAIN
    

ret




