.model small ; 세그먼트 를 정해라
.data
msg1 db 'Happy', 0ah, 0dh, '$' ;바이트형 변수
msg2 db 'Birtday to you$'
.code
main proc
    mov ax, @data     ;ds 초기설정
    mob ds, ax
    
    mov ah, 9  ;문자열 출력 서비스 번호
    lea dx, msg1  
    int 21h    ;인트럽트 발생 해야 동작한다.                           
                              
    cr equ 0dh ;(매크로) cr를 dh로 정의함                          
                                  
    mov ah, 2  ;문자 하나 번호출력 서비스번호
    mov dl, 0ah ;새로운 줄
    int 21h
    mov dl, cr ;커서를 앞으로 
    int 21h                     
    
    mov ah, 9
    mov dx, offset msg2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main  endp
end main