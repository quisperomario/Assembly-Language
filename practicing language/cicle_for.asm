printChar macro char
    mov ah,02h
    mov dl,char
    int 21h
endm

.model small
.stack
.data
.code
    main proc
        ;for i in range(6):
        ;    print(i)
        xor si,si
        FOR:
            cmp si,6d
            je ENDFOR
            printChar 'a'
            inc si
            jmp FOR
    
        ENDFOR:

        .exit
    main endp

end main