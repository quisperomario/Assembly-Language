
.model small
.stack
.data
    numbers DB 54,57,50,48
    menor DB ?
.code
    main PROC
        MOV AX,@data
        MOV DS,AX
        XOR AX,AX

        MOV SI,0
        MOV BL,numbers[SI]
        MOV menor,BL
        XOR BL,BL

        FOR:
            CMP SI,4
            JE ENDFOR

            MOV AL,numbers[SI]
            CMP AL,menor
            JA MAYOR_PRIMERO
            JB MAYOR_SEGUNDO
        
        MAYOR_PRIMERO:
            INC SI
            JMP FOR
            
        MAYOR_SEGUNDO:
            MOV menor,AL
            INC SI
            JMP FOR
        
        ENDFOR:
            MOV AH,02H
            MOV DL,menor
            INT 21H
        
        .exit

    main ENDP

end main