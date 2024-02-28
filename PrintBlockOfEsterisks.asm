.MODEL SMALL
.STACK 100H
.DATA
        MSG1 DB 13,10, "********** $"
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    MOV DX, OFFSET MSG1
    INT 21H    
    
    MOV AH, 9
    MOV DX, OFFSET MSG1
    INT 21H
    
    MOV AH, 9
    MOV DX, OFFSET MSG1
    INT 21H
    
    MOV AH, 9
    MOV DX, OFFSET MSG1
    INT 21H

    

    

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
Output: