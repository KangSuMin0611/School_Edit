.model small
.code
main proc
     
     mov dl, 40h
     mov ah, 2
     mov cx, 26
     
     next:
     add dl, 1
     int 21h
     loop next
     
     mov ah, 4ch
     int 21h
    
     main endp
end main   
           
           
           
           
                                                             