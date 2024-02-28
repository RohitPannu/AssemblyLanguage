.MODEL SMALL
.STACK 100H
.DATA
        MSG1 DB "Enter three initials: $"
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    MOV DX, OFFSET MSG1
    INT 21H

    MOV AH,1
    INT 21H     ;input 1
    MOV BL,AL

    MOV AH,1
    INT 21H     ;input 2
    MOV CL,AL

    MOV AH,1
    INT 21H      ;input 3
    MOV BH,AL

    mov ah,2
    mov dl, 10
    int 21h

    mov dl,13
    int 21h
   
    MOV AH, 2

MOV DL, BL
    INT 21H

    mov ah,2
    mov dl, 10
    int 21h
    
    mov dl,13
    int 21h

    MOV AH,2
    MOV DL,CL
    INT 21H

    mov ah,2
    mov dl, 10
    int 21h
    mov dl,13
    int 21h

    MOV AH,2
    MOV DL,BH
    INT 21H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
Output: