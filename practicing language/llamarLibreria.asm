
.model small
INCLUDE libreria.lib

.stack
.data
.code

    .STARTUP
    main PROC
        MOV AH,02H
        MOV DL,50
        INT 21H
    ENDP
    .EXIT
