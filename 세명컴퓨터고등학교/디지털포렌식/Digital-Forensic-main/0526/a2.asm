.model small
.data
msg db 0ah, 0dh, 'two numbers are same$'
msg2 db 0ah, 0dh, 'two numbers are different$'
.code

main proc
    
    mov ax, @data
    mov ds, ax
   
    mov ah, 1
    int 21h   ;ù��° �� �Է�
    mov bl, al  ;�ӽú���     0
      
    mov ah, 1  ;�ι�° �� �Է�
    int 21h
      
    cmp bl, al ; �ΰ��� ��
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
    