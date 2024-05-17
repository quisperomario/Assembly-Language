
.model small
.stack
.data
.code
    main proc
        ;print chair
        MOV ah,02H
        MOV dl,9D
        ADD dl,48D
        INT 21H

        ; function the end program
        MOV ah,4CH
        INT 21H

        .exit

    main endp
end main
