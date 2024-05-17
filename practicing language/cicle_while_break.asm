printChar macro char
    mov ah,02h
    mov dl,char
    int 21h
endm

.model small
.stack
.data
    condition1 db 1b
.code
    main proc

        mov dx,@data
        mov ds,dx
        xor dx,dx

        mov condition1,1b
        xor si,si

        ciclewhile:
            cmp condition1,1b
            jne exitwhile

            printChar 'a'

            cmp si,5d
            je break
            jmp nobreak

            break:
                mov condition1,0b
            nobreak:

            inc si
            jmp ciclewhile
        
        exitwhile:

        .exit
    main endp
end main