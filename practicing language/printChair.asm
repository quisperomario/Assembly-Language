printChar macro char
    mov ah,02h
    mov dl,char
    int 21h
endm

.model small
.stack
.data
    condition1 db 1b
    condition2 db 1b

.code
    main proc
        ; load data
        mov dx,@data
        mov ds,dx
        xor dx,dx

        cmp condition1,1b
        jne L2

        cmp condition2,1b
        jne L2
        jmp L1

        L1:
            printChar 'A'
            jmp L3
        L2:
            printChar 'B'
        L3:
        
        .exit
    main endp

end main