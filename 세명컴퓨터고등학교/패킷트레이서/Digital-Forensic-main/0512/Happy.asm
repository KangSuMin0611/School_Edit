.model small ; ���׸�Ʈ �� ���ض�
.data
msg1 db 'Happy', 0ah, 0dh, '$' ;����Ʈ�� ����
msg2 db 'Birtday to you$'
.code
main proc
    mov ax, @data     ;ds �ʱ⼳��
    mob ds, ax
    
    mov ah, 9  ;���ڿ� ��� ���� ��ȣ
    lea dx, msg1  
    int 21h    ;��Ʈ��Ʈ �߻� �ؾ� �����Ѵ�.                           
                              
    cr equ 0dh ;(��ũ��) cr�� dh�� ������                          
                                  
    mov ah, 2  ;���� �ϳ� ��ȣ��� ���񽺹�ȣ
    mov dl, 0ah ;���ο� ��
    int 21h
    mov dl, cr ;Ŀ���� ������ 
    int 21h                     
    
    mov ah, 9
    mov dx, offset msg2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main  endp
end main