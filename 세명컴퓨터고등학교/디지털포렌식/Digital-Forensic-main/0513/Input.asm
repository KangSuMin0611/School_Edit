.model small
.data
msg db 'Input Password =$'
msg2 db ' O.K$'
.code

    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov ah, 9   ;���ڿ� ��� ���� ��ȣ
        lea dx, msg
        int 21h               
        
        for:                 
        mov dl, 7h ; beep
        mov ah, 2  ; ���� ��� ���� ��ȣ
        int 21h     
                 
        mov ah, 1 ; input �Է´��
        int 21h
        
        cmp al, 37h
        jne for       
        
        mov ah, 1 ; 3�� �Է¹ޱ�����
        int 21h
                
        cmp al, 33h               
        je pass
        jmp for
        
        pass:
        mov ah, 9
        lea dx, msg2
        int 21h
        
               
        mov ah, 4ch
        int 21h
   
    
    main endp

end main