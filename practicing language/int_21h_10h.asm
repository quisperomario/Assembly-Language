
.model small
.stack
.data
    message1 DB 'Enter a character:$'
    message2 DB 10,13,'The character is:$'
.code
    main PROC
        ; load data
        MOV AX,@data
        MOV DS,AX
        XOR AX,AX

        ; show message
        MOV AH,09H
        LEA DX,message1
        INT 21H

        ; enter chair and save in AL
        MOV AH,01H
        INT 21H
        MOV CL,AL

        MOV AH,09H
        LEA DX,message2
        INT 21H

        ; show chair 
        MOV AH,02H
        MOV DL,CL
        INT 21H

        ; function end program
        MOV AH,4CH
        INT 21H

        .exit
    main ENDP
end main