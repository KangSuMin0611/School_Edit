.model small
.code

    main proc
    
    mov dl, 21h
    
    for:
    int 21h
    mov ah, 2
    inc dl
    cmp dl, 7fh
    loop for
           
    
    
    main endp

end main