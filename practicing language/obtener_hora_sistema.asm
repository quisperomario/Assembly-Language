; macro
printChair MACRO chair
    MOV AH,02H
    MOV DL, chair
    INT 21H
ENDM

.model small
.stack
.data
.code
    .STARTUP
    main PROC
        CALL getHora ; llamando al procedimiento que trae la fecha del sistema
        ADD CH,48
        printChair CH ; pasandole el DIA
        printChair CL ; mostrando MINUTOS
    main ENDP

    .EXIT

    ; procedimiento para obtener fecha del sistema
    ; al=dia
    ; cx=año
    ; dh=mes
    ; dl=dia
    getDate PROC
        MOV AH,02H
        INT 21H
        RET
    ENDP

    ;obtener la hora del sistema
    ; CH = Hora
    ; cl = minuto
    ; dh = segundos
    ; cl = centesimas de segundo
    getHora PROC
        MOV AH,02CH
        INT 21H
        RET
    ENDP

end main