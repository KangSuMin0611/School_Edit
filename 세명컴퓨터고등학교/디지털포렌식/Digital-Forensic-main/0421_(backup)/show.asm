.model small
.code

main proc
                   
      mov ax, 34h
      mov bx, 37h
      
      xchg ax, bx
      call show_ax_bx
        
      mov ah,4ch
      int 21h      
                                                            
main endp

    show_ax_bx proc
        
        mov dx, ax
        mov ah, 2
        int 21h
        
        mov dx, bx
        mov ah, 2
        int 21h
        ret
           
    show_ax_bx endp       
           
end main