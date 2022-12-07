.model small
.data
high db ' -> Your Number is Above', 0dh, 0ah, '$'
low db ' -> Your Number is Below', 0dh, 0ah, '$'
con db ' -> Congrats', 0dh, 0ah, '$'
try db ' -> Sorry.. Please Try Again', 0dh, 0ah, '$'
bye db ' -> Thankyou for playing. Bye', 0dh, 0ah, '$'
.code
main proc
     
     result equ '6'   
     
     mov ax, @data
     mov ds, ax  
     mov cx, 5
     
     start:            
     cmp cx, 0   
     
      je sorry     
     mov ah, 1
     int 21h
       
     cmp al, result   ;앞에 있는 레지스터 기준
     ja Above            ;크면
     jb Below            ;작으면
     je thankyou          ;같으면
          
     sorry:
     mov ah, 9
     lea dx, try
     int 21h
    
     thankyou:
     mov ah, 9
     lea dx, con
     lea dx, bye
     int 21h
     
     mov ah, 4ch
     int 21h
     
     Above:
     mov ah, 9
     lea dx, high
     int 21h
     dec cx
     jmp start
     
     Below:
     mov ah, 9
     lea dx, low
     int 21h
     dec cx
     jmp start
       
    main endp
end main