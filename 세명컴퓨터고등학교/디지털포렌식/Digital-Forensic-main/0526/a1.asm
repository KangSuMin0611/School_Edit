.model small
.code
main proc
    
    input:
    mov ah, 1
    int 21h
    
    cmp al, 1ah ; ctrl+Z 창 종료
    je quit
           
    cmp al, 'A'       
    jb output ; jump if below(입력된 값이 작으면 output로 점프)           
    cmp al, 'Z'
    ja output ; jump if above(입력된 값이 크면 output로 점프)
    add al, 20h ; 소문자로 만듦       
           
    output:
    mov dl, al
    mov ah, 2
    int 21h         
    jmp input
             
    quit:
    mov ah, 4ch
    int 21h         
             
   main endp
end main