.model small
.code
main proc
    
    input:
    mov ah, 1
    int 21h
    
    cmp al, 1ah ; ctrl+Z â ����
    je quit
           
    cmp al, 'A'       
    jb output ; jump if below(�Էµ� ���� ������ output�� ����)           
    cmp al, 'Z'
    ja output ; jump if above(�Էµ� ���� ũ�� output�� ����)
    add al, 20h ; �ҹ��ڷ� ����       
           
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