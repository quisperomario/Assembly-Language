
.model small
.stack
.data
    message1 DB 'Enter a number:$'
    message2 DB 10,13,'The result:$'
    number1 DB 3
    number2 DB 4

.code
    main PROC
        MOV AX,@data
        MOV DS,AX
        XOR AX,AX

        MOV AL, number1
        ;MOV BL, number2
        ;ADD BL,AL
        ADD AL, number2

        MOV AH,02H
        MOV DL,AL
        ADD DL,30H
        INT 21H

        MOV AH,4CH
        INT 21H

        .exit 
    main ENDP

end main