
.model small
.stack
.data
.code
    main proc
        ;cicle for print number of 0-9
        XOR cl,cl

        FOR:
            ;interruption 21H for print chair 
            MOV ah,02H
            MOV dl,cl
            ADD dl,48D 
            INT 21H

            CMP cl,9D
            JE ENDFOR

            INC cl
            JMP FOR
        ENDFOR:

        ;function end program - interruption 21H
        MOV ah,4CH
        INT 21H

        .exit
    main endp
end main