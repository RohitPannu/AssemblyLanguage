.model small
.stack 100h

.data 
    MSG1 DB 10, 13,10,13, "ROHIT KUMAR$"

.code
main proc 
    MOV AX, @DATA
    MOV DS, AX   
    
    MOV CX, 10   
    

    MY_LOOP: 
     
    LEA DX, MSG1  
    MOV AH, 09h   
    INT 21h       
       
    LOOP MY_LOOP  
    
    MOV AH, 4Ch   
    INT 21h       
   
main endp
end main
