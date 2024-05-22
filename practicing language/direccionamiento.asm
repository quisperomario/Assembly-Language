
.model small
.stack
.data

    n1 db 49
    n2 db 1,2,3,4
    message db 10,13,'Hello world$'
    n3 db 4 dup(165)
    n4 db ?


.code
    .startup

    main PROC

        MOV AX,@data
        MOV DS, AX    ; direccionamiento registro
        XOR AX,AX

        MOV SI,0      ; direccionamiento inmediato
        MOV DL,n2[SI] ; direccionamiento indirecto
        MOV AH,02H
        INT 21H

        MOV AH,02H
        MOV DL,n3[SI]
        INT 21H

        MOV AH, 09H
        LEA DX, message  ; show message in terminal
        INT 21H

        MOV AH,4CH
        INT 21H
        
    main ENDP

    .exit

end main
