
.model small
.stack
.data
    message1 DB 'Hello','$'
    ;10 -> line feed
    ;13 -> Carriage feed
    message2 DB 10,13,'Romario$'
.code
    main PROC

        ;load of segment data
        MOV AX,@data
        MOV DS,AX
        XOR AX,AX 

        ;print the first message
        MOV AH,09H
        MOV DX, offset message1
        INT 21H

        ;print secund message
        MOV AH,09H
        LEA DX, message2
        INT 21H 

        ;function finish program
        MOV AH,4CH
        INT 21H

        .exit
    main ENDP
end main