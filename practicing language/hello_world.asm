
.model small
.stack
.data
    message db 'Hello world$'

.code
    
    main proc

        mov dx,@data
        mov ds,dx
        xor dx,dx

        ; print character
        mov ah,02H
        mov dl,'a'
        int 21H

        ; print straing
        mov ah,09H
        ;mov dx, offset message
        lea dx,message
        int 21H 

        ; funcion para finalizar el programa 
        mov ah,4CH
        int 21H

        ret

        .exit

    main endp
end main