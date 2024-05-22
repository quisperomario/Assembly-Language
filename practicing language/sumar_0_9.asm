; macro
printChair macro chair
    MOV AH,02H
    MOV DL,chair
    INT 21H
endm

.model small
.stack
.data
.code
    suma PROC   
        RET
    ENDP

    .STARTUP

    main PROC
        printChair 50
        CALL suma  
    main ENDP

    .EXIT

end main
