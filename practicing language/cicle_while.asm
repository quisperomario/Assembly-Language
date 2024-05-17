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
        ;i=0
        ;while i<6:
        ;    print("a")
        ;    i+=1

        xor si,si
        CICLEWHILE:
            cmp si,6d
            je ENDWHILE
            printChar 'a'
            inc si
            jmp CICLEWHILE
        
        ENDWHILE:

        .exit

    main endp
end main
