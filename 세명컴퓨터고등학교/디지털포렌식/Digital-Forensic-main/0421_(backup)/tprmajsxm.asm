.model small
.data

;msg1 db 'hello', 0ah, 0dh, '$'    ;db�� define byte�̴�. 0ah, 0dh�� �����ٷ� �Ѿ�� ���ֱ������̴�.
msg1 db 48h,45h,4ch,4ch,4fh,0ah,0dh,'$' ;�ƽ�Ű�ڵ�
msg2 db 'Bye$'            ;'$'�� ���ڿ��� �������̶�°��� ǥ���Ѵ�.

.code    
main proc
    mov ax, @data                                   
    mov ds, ax  ;������ ���׸�Ʈ�� ���� ������ �ݵ�� ����ϴ� ���� 
    
    mov ah,9
    lea dx,msg1                ;lea ��¹�   dx������ msg1�� ����
    int 21h
    
    mov ah,9 
    lea dx,msg2
    int 21h
    
    mov ah, 4ch
    int 21h    ;dos�� ����-(�ڵ带 ������ ���� ����)

 main endp                                                      
end main
   