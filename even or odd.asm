
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.DATA

 MSG1 DB 10,13,'Enter number: $'
 MSG2 DB 10,13,'Result: Even$'
 MSG3 DB 10,13,'Result: Odd$'
 
DATA ENDS

DISPLAY MACRO MSG

 MOV AH,9
 LEA DX,MSG
 INT 21H
 
ENDM

.CODE 

 

 START:
  MOV AX,DATA
  MOV DS,AX
  DISPLAY MSG1      ;1st message display

  MOV AH,1          ;for taking
  INT 21H
  MOV AH,0 

 CHECK: 
 
  MOV DL,2        ;divide portion
  DIV DL
  CMP AH,0       ;comparing with 0
  JNE ODD        ;if 0 it will jump to even
                 
 EVEN:
 
  DISPLAY MSG2  
  JMP DONE

 ODD:
 
  DISPLAY MSG3

 DONE:
  MOV AH,4CH
  INT 21H

CODE ENDS
END START

ret
