.model small
.data
msg db 'Input your data-> $'
.code
main proc
        
        mov ax,@data
        mov ds, ax

       start: 
        mov ah, 9
        lea dx, msg
        int 21h
        
        mov ah, 1
        int 21h
        
        cmp al, 1ah
        je quit
        
        cmp al, '0'     ;입력된값이 0보다 작거나
        jb quit
        cmp al, '9'     ;입력된값이 9보다 크면 
        ja quit 
        
        mov bl, al      ;첫번째 값을 bl에 넣는다.
        
        mov ah, 1
        int 21h
        mov cl ,al      ;두번째 값을 cl에 넣는다.
        
        mov ah, 2
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h 
                        
        sub bl, cl
        jns print       ;결과가 음수가 아니면 print로 갑니다.           
        neg bl          ;bl 를 절댓값으로 부호를 양수로 바꿈
                  
        print: 
        mov dl, bl 
        add dl, 30h ;아스키코드 표에서보면 숫자 6은 36h의 값을 갖기 때문에 dl에 들어있던 06h에 30h를 더해줍니다.
        int 21h
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
        
        jmp start
 
        quit:
            mov ah, 4ch
            int 21h

   main endp
end main