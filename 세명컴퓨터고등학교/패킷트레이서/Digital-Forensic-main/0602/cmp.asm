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
        
        cmp al, '0'     ;�ԷµȰ��� 0���� �۰ų�
        jb quit
        cmp al, '9'     ;�ԷµȰ��� 9���� ũ�� 
        ja quit 
        
        mov bl, al      ;ù��° ���� bl�� �ִ´�.
        
        mov ah, 1
        int 21h
        mov cl ,al      ;�ι�° ���� cl�� �ִ´�.
        
        mov ah, 2
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h 
                        
        sub bl, cl
        jns print       ;����� ������ �ƴϸ� print�� ���ϴ�.           
        neg bl          ;bl �� �������� ��ȣ�� ����� �ٲ�
                  
        print: 
        mov dl, bl 
        add dl, 30h ;�ƽ�Ű�ڵ� ǥ�������� ���� 6�� 36h�� ���� ���� ������ dl�� ����ִ� 06h�� 30h�� �����ݴϴ�.
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