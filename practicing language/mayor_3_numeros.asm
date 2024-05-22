
.model small
.stack
.data
    n1 db 51   ; number in decimal is 3
    n2 db 52   ; number in decimal is 4
    n3 db 53   ; number in decimal is 5
    number db 52,51,53
    nmayor db 0
.code
    main PROC
        .startup

        MOV DX,@data
        MOV DS,DX
        XOR DX,DX

        MOV SI,0

        FOR:
            MOV AL, nmayor
            CMP SI,3
            JE ENDFOR

            CMP AL, number[SI]
            JB MENOR   ; menor que el segundo (valores sin signo) 
            JA MAYOR   ; mayor que el segundo (valores sin signo) 

        MENOR:
            MOV BL, number[SI]
            MOV nmayor,BL
            INC SI
            JMP FOR

        MAYOR:
            INC SI
            JMP FOR
        
        ENDFOR:
            MOV AH, 02H
            MOV DL, nmayor
            INT 21H

        .exit

    main ENDP
end main