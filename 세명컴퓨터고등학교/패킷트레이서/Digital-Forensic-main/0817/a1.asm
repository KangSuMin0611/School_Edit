.model small
.data
input_string db 'input decimal number...$'
string db '->$'

.code
main proc
    mov ax, @data
    mov ds,ax
    
    lea dx, input_string
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h  ; ù��° ���� �ڸ� �Է�
    
    sub al, 30h ;�������� ex) 33 - 30 = 3 
    
    mov bl, 10
    mul bl ; ���� �ڸ��� ����� al x bl ex) 3 x 10 = 30
    
    mov bl, al ;��� bl�� �ӽ�����
    
    mov ah, 1
    int 21h ;���� �ڸ��� �Է¹���
    sub al, 30h
    
    add bl, al ;�����ڸ��� �����ڸ��� ����
    
    lea dx, string
    mov ah, 9
    int 21h
    
    mov cx, 8 ; 8ȸ �ݺ�, ��Ʈ�� ���� 
    
    shift:
    shl bl, 1
    lahf ;�÷��� �������� Ư����Ʈ�� ���� ���ؼ� ah�� ������ 
    and ah, 00000001 ;�� ������ ���� �ʿ��ϱ� ������ �� �������� 1�� 8��Ʈ���� ���� and������ �Ѵ�.
    
    mov dl,ah
    add dl,30h
    mov ah, 2
    int 21h
    loop shift
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    