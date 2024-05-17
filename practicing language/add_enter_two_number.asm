
; Enter number1 and number2, add = number1 + number2

.model small
.stack
.data
    ; declare variables
    message1 DB 10,13,'Enter a number:$'
    message2 DB 10,13,'Result:$'
    n1 DB 0
    n2 DB ?
.code
    main PROC
        ; load data
        MOV AX,@data
        MOV DS,AX
        XOR AX,AX

        MOV AH,09H
        LEA DX,message1
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H
        MOV n1,AL

        MOV AH,09H
        LEA DX,message1
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H
        MOV n2,AL

        MOV AH,09H
        LEA DX,message2
        INT 21H

        MOV BL,n1
        ADD BL,n2

        MOV AH,02H
        ADD BL,30H
        MOV DL,BL
        INT 21H

        ;end program 
        MOV AH,4CH
        INT 21H

        .exit
    main ENDP

end main



