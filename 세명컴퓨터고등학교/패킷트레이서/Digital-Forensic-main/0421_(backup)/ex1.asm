.model small
.code
main proc
             e
    mov ax, 0b800h
    mov ds, ax
    mov cl, 'A'
    mov ch, 11011111b
    mov bx, 1998d
    mov [bx], cx
        
main endp
end main