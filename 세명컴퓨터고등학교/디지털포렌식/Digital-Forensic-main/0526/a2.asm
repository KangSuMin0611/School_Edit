.model small
.data
msg db 0ah, 0dh, 'two numbers are same$'
msg2 db 0ah, 0dh, 'two numbers are different$'
.code

main proc
    
    mov ax, @data
    mov ds, ax
   
    mov ah, 1
    int 21h   ;첫번째 값 입력
    mov bl, al  ;임시보관     0
      
    mov ah, 1  ;두번째 값 입력
    int 21h
      
    cmp bl, al ; 두값을 비교
    jne print2
    
    print:
    mov ah, 9
    lea bx, msg
    int 21h
    mov ah, 4ch
    int 21h

    print2:
    mov ah, 9
    lea bx, msg2
    int 21h
        
    
    
    main endp
end main
    